using System.Collections;
using System.Collections.Generic;
using System.Linq;
using NerdWar.Controllers;
using NerdWar.Data;
using NerdWar.Enum;
using NerdWar.Network.Controller;
using NerdWar.SO;
using NerdWar.Utilities;
using UnityEngine;
using Valari.Services;
using Valari.Utilities;

namespace NerdWar.Manager
{
    public class WordSpawnerManager : MonoBehaviour
    {
        public static WordSpawnerManager Services
        {
            get
            {
                if (_ == null)
                    _ = Game.Services.Get<WordSpawnerManager>();
                return _;
            }
        }

        private static WordSpawnerManager _;

        [SerializeField] private LetterController letterControllerPrefab;
        [SerializeField] private RoundWordData _currentRoundWordData;
        [SerializeField] private LetterSpawnPointHolder _letterSpawnPointHolder;
        [SerializeField] private Transform _hostSelectedLetterHolder;
        private int _letterSpawnTracker;
        private readonly List<LetterController> _letterSpawned = new();
        private List<char> _lettersList = new();
        private readonly List<int> _selectedLetterIdList = new();
        private Coroutine _spawningRoutine;

        private WordCheckerManager _wordCheckerManager => WordCheckerManager.Service;
        private GameSettingSO _gameSettingSO => GameSettingSO.Service;

        public void OnEnable()
        {
            GameManager.OnRestartGameEvent += CleanUpSpawnedLetters;
            GameManager.OnRoundStartedEvent += StartCurrentRound;
            GameManager.OnRoundEndedEvent += CleanUpSpawnedLetters;
            GameManager.OnGameEndEvent += OnGameEnds;
        }

        public void OnDisable()
        {
            CleanUpSpawnedLetters();

            GameManager.OnRestartGameEvent -= CleanUpSpawnedLetters;
            GameManager.OnRoundStartedEvent -= StartCurrentRound;
            GameManager.OnRoundEndedEvent -= CleanUpSpawnedLetters;
            GameManager.OnGameEndEvent -= OnGameEnds;
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
            CheckLetterStatus();
            Debug.Log($"#{GetType().Name}# Spawn Current Round Letters Routine -> {_selectedLetterIdList.Count}");

            var letterList = _letterSpawnPointHolder.GetAvailableSpawnPoint(_selectedLetterIdList);
            for (var i = 0; i < letterList.Count; i++)
            {
                var letterChar = _lettersList[_letterSpawnTracker];
                var newData = new LetterData(letterChar);

                var controller = Instantiate(letterControllerPrefab, letterList[i].position, Quaternion.identity,
                    letterList[i]);

                controller.SetLetterData(newData, _hostSelectedLetterHolder, letterList[i],
                    i);

                _letterSpawned.Add(controller);
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
                if (child.TryGetComponent(out LetterController controller))
                    _selectedLetterIdList.Add(controller.OrigParentID);

            Debug.Log($"#{GetType().Name}# Check Letter Status -> {_selectedLetterIdList.Count}");
        }

        public void UpdateWordList()
        {
            ClearLetters();
        }

        public void ShowSelectLetterEffect(bool show)
        {
            foreach (Transform child in _hostSelectedLetterHolder)
                if (child.TryGetComponent(out LetterController controller))
                    controller.ShowEffect(show);
        }

        private void ClearLetters()
        {
            _hostSelectedLetterHolder.DeleteChildren();

            if (_spawningRoutine == null)
                _spawningRoutine = StartCoroutine(SpawnCurrentRoundLettersRoutine());
        }

        public void UndoWords()
        {
            foreach (var letterController in _letterSpawned.ToList())
                if (letterController.GetLetterStatus() == LetterStatus.Selected)
                    letterController.Deselected();
        }

        private void OnGameEnds(ulong winnerId)
        {
            StopCoroutine(SpawnCurrentRoundLettersRoutine());
            CleanUpSpawnedLetters();
        }

        private void CleanUpSpawnedLetters()
        {
            _letterSpawnPointHolder.DeleteChild();

            _letterSpawned.Clear();
            _selectedLetterIdList.Clear();
            _hostSelectedLetterHolder.DeleteChildren();
            _letterSpawnTracker = 0;
        }
    }
}