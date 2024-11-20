using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using NerdWar.Controllers;
using NerdWar.Data;
using NerdWar.Enum;
using NerdWar.Manager;
using NerdWar.Network.Controller;
using NerdWar.SO;
using NerdWar.Utilities;
using Unity.Netcode;
using UnityEngine;
using Valari.Services;
using Valari.Utilities;
using Debug = UnityEngine.Debug;

namespace NerdWar.Network.Managers
{
    public class WordSpawnerNetworkManager: NetworkBehaviour
    {
        public static WordSpawnerNetworkManager Services
        {
            get
            {
                if (_ == null)
                    _ = Game.Services.Get<WordSpawnerNetworkManager>();
                return _;
            }
        }

        private static WordSpawnerNetworkManager _;
        
        [SerializeField] private LetterNetworkController letterNetworkControllerPrefab;
        [SerializeField] private RoundWordData _currentRoundWordData;
        [SerializeField] private LetterSpawnPointHolder _letterSpawnPointHolder;
        [SerializeField] private Transform _hostSelectedLetterHolder;
        [SerializeField] private Transform _clientSelectedLetterHolder;
        private int _letterSpawnTracker = 0;
        private List<NetworkObject> _letterSpawned = new List<NetworkObject>();
        private List<char> _lettersList = new List<char>();
        private List<int> _selectedLetterIdList = new List<int>();
        private Coroutine _spawningRoutine = null;

        private WordCheckerManager _wordCheckerManager => WordCheckerManager.Service;
        private GameSettingSO _gameSettingSO => GameSettingSO.Service;

        public override void OnNetworkSpawn()
        {
            base.OnNetworkSpawn();

            if (IsHost)
            {
                GameManager.OnRestartGameEvent += CleanUpSpawnedLetters;
                GameManager.OnRoundStartedEvent += StartCurrentRound;
                GameManager.OnRoundEndedEvent += CleanUpSpawnedLetters;
                GameManager.OnGameEndEvent += OnGameEnds;
            }
        }

        public override void OnNetworkDespawn()
        {
            base.OnNetworkDespawn();

            if (IsHost)
            {
                CleanUpSpawnedLetters();
                
                GameManager.OnRestartGameEvent -= CleanUpSpawnedLetters;
                GameManager.OnRoundStartedEvent -= StartCurrentRound;
                GameManager.OnRoundEndedEvent -= CleanUpSpawnedLetters;
                GameManager.OnGameEndEvent -= OnGameEnds;
            }
        }

        private void StartCurrentRound(RoundWordData currentRoundData)
        {
            _currentRoundWordData = currentRoundData;
            _lettersList = _currentRoundWordData.GetShuffledLetters();
            
            StartCoroutine(SpawnCurrentRoundLettersRoutine());
        }

        private IEnumerator SpawnCurrentRoundLettersRoutine()
        {
            if (_letterSpawnTracker > _lettersList.Count - 1)
            {
                Debug.Log($"#{GetType().Name}# No Letter Left"); 
                yield return null;
            }
            
            
            yield return new WaitForSeconds(.5f);

            yield return new WaitForSeconds(.5f);
            CheckLetterStatus();
            Debug.Log($"#{GetType().Name}# Spawn Current Round Letters Routine -> {_selectedLetterIdList.Count}");
            
            var letterList = _letterSpawnPointHolder.GetAvailableSpawnPoint(_selectedLetterIdList);
            for (var i = 0; i < letterList.Count; i++)
            {
                var letterChar = _lettersList[_letterSpawnTracker];
                var newData = new LetterData(letterChar);

                var controller = Instantiate(letterNetworkControllerPrefab, letterList[i].position, Quaternion.identity,
                    letterList[i]);

                var networkObject = controller.GetComponent<NetworkObject>();

                networkObject.Spawn();
                controller.SetLetterData(newData, _hostSelectedLetterHolder, _clientSelectedLetterHolder, letterList[i],
                    i);

                _letterSpawned.Add(networkObject);

                _letterSpawnTracker++;
                yield return new WaitForSeconds(_gameSettingSO.SpawnInterval);
            }

            _spawningRoutine = null;
        }

        public void OnSelectWord(LetterData selectedData, bool select)
        {
            CheckLetterStatus();
            _wordCheckerManager.UpdateLetterSelected(selectedData, select);
        }

        private void CheckLetterStatus()
        {
            _selectedLetterIdList.Clear();
            
            foreach (Transform child in _hostSelectedLetterHolder)
            {
                if (child.TryGetComponent(out LetterNetworkController controller))
                    _selectedLetterIdList.Add(controller.OrigParentID);
            }
            
            foreach (Transform child in _clientSelectedLetterHolder)
            {
                if (child.TryGetComponent(out LetterNetworkController controller))
                    _selectedLetterIdList.Add(controller.OrigParentID);
            }

            Debug.Log($"#{GetType().Name}# Check Letter Status -> {_selectedLetterIdList.Count}");
        }

        public void UpdateWordList(bool isHost)
        {
            if (IsServer)
            {
                ClearLetters(isHost);
                Debug.Log($"#{GetType().Name}# Clear Letters!");
            }
        }

        public void ShowSelectLetterEffect(bool show)
        {
            if (IsServer)
            {
                foreach (Transform child in _hostSelectedLetterHolder)
                {
                    if (child.TryGetComponent(out LetterNetworkController controller))
                        controller.ShowEffect(show);
                }
            }
            else
            {
                RequestLettersEffectServerRpc(show);
            }
        }

        [ServerRpc(RequireOwnership = false)]
        private void RequestLettersEffectServerRpc(bool show, ServerRpcParams serverRpcParams = default)
        {
            var targetId = serverRpcParams.Receive.SenderClientId;
            foreach (Transform child in _clientSelectedLetterHolder)
            {
                if (child.TryGetComponent(out LetterNetworkController controller))
                    controller.ShowEffectClientRpc(show, new ClientRpcParams
                        {
                            Send = new ClientRpcSendParams()
                            {
                                TargetClientIds = new[] { targetId }
                            }
                        });;
            }
        }
        
        private void ClearLetters(bool isHost)
        {
            Stopwatch timer = new Stopwatch();
            timer.Start();
            foreach (NetworkObject letterController in _letterSpawned.ToList())
            {
                if (letterController.TryGetComponent(out LetterNetworkController controller))
                {
                    if (controller.GetLetterStatus() == LetterStatus.Selected)
                    {
                        _letterSpawned.Remove(letterController);
                    }
                }
            }

            if (isHost)
            {
                foreach (Transform child in _hostSelectedLetterHolder)
                {
                    if (child.TryGetComponent(out NetworkObject networkObject))
                    {
                        if(networkObject.IsSpawned)
                            networkObject.Despawn();
                    }
                }
            }
            else
            {
                foreach (Transform child in _clientSelectedLetterHolder)
                {
                    if (child.TryGetComponent(out NetworkObject networkObject))
                    {
                        if(networkObject.IsSpawned) 
                            networkObject.Despawn();
                    }
                }
            }

            if(_spawningRoutine == null)
                _spawningRoutine = StartCoroutine(SpawnCurrentRoundLettersRoutine());
            
            timer.Stop();
            Debug.Log($"#{GetType().Name}# Clear Letter Execution Time -> {timer.ElapsedMilliseconds}");
        }

        public void UndoWords()
        {
            foreach (NetworkObject letterController in _letterSpawned.ToList())
            {
                if (letterController.TryGetComponent(out LetterNetworkController controller))
                {
                    if (controller.GetLetterStatus() == LetterStatus.Selected)
                    {
                        controller.Deselected();
                    }
                }
            }
        }

        private void OnGameEnds(ulong winnerId)
        {
            StopCoroutine(SpawnCurrentRoundLettersRoutine());
            CleanUpSpawnedLetters();
        }

        private void CleanUpSpawnedLetters()
        {
            foreach (NetworkObject letterController in _letterSpawned.ToList())
            {
                if(letterController.IsSpawned)
                    letterController.Despawn();
            }
            
            _letterSpawned.Clear();
            _selectedLetterIdList.Clear();
            _hostSelectedLetterHolder.DeleteChildren();
            _clientSelectedLetterHolder.DeleteChildren();
            _letterSpawnTracker = 0;
        }
    }
}