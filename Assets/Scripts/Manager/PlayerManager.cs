using System;
using System.Collections.Generic;
using NerdWar.Data;
using NerdWar.Network.Controller;
using NerdWar.Network.Managers;
using NerdWar.SO;
using UnityEngine;
using UnityEngine.Serialization;
using Valari.Services;
using XRMultiplayer;

namespace NerdWar.Manager
{
    public class PlayerManager : MonoBehaviour
    {
        public static PlayerManager Service
        {
            get
            {
                if (_ == null)
                    _ = Game.Services.Get<PlayerManager>();

                return _;
            }
        }

        private static PlayerManager _;

        [SerializeField] private PlayerDataCollectionSO _playerDataCollectionSO;
        [SerializeField] bool _autoInitializeCallbacks = true;
        private PlayerNetworkController _playerNetworkController;
        
        private bool _callbacksInitialized = false;
        private readonly Dictionary<PlayerNetworkController, XRINetworkPlayer> _playerDictionary = new();

        public static Action<Dictionary<PlayerNetworkController, XRINetworkPlayer>> OnPlayerListUpdatedEvent { get;
            set;
        }
        
        private GameSettingSO _gameSettingSO => GameSettingSO.Service;
        private NetworkGameManager _networkGameManager => NetworkGameManager.Service;

        private void Start()
        {
            if (!_callbacksInitialized && _autoInitializeCallbacks)
                InitializeCallbacks();
        }

        public void OnDestroy()
        {
            XRINetworkGameManager.Instance.playerStateChanged -= ConnectedPlayerStateChange;
            GameManager.OnRestartGameEvent -= OnResetPlayerHealth;
            GameManager.OnFinalRoundEndEvent -= OnEvaluatePlayerHealth;
            XRINetworkGameManager.Connected.Unsubscribe(OnConnected);
        }

        private void InitializeCallbacks()
        {
            if (_callbacksInitialized) return;
            _callbacksInitialized = true;
            
            XRINetworkGameManager.Instance.playerStateChanged += ConnectedPlayerStateChange;
            GameManager.OnRestartGameEvent += OnResetPlayerHealth;
            GameManager.OnFinalRoundEndEvent += OnEvaluatePlayerHealth;
            XRINetworkGameManager.Connected.Subscribe(OnConnected);
        }

        private void OnConnected(bool connected)
        {
            if (!connected)
            {
                _playerDictionary.Clear();
            }
        }

        private void ConnectedPlayerStateChange(ulong playerId, bool connected)
        {
            if (connected)
            {
                if (XRINetworkGameManager.Instance.GetPlayerByID(playerId, out XRINetworkPlayer player))
                {
                    if (player.gameObject.TryGetComponent(out PlayerNetworkController controller))
                    {
                        controller.SetPlayerData(new PlayerData(playerId, player.playerName, player.playerColor, _gameSettingSO.PlayerStartingHealth));
                        controller.SetupNetworkPlayer(player);
                        _playerDictionary.Add(controller, player); 
                        OnPlayerListUpdatedEvent?.Invoke(_playerDictionary);
                        Debug.Log($"#{GetType().Name}# Player Controller -> {player.playerName} | {player.playerColor}");
                    }
                    else
                    {
                        Debug.Log($"#{GetType().Name}# No Player Controller -> Failed");
                    }
                }
                else
                {
                    Utils.Log($"Player with id {playerId} is null. This is a bug.", 2);
                }
            }
            else
            {
                PlayerNetworkController player = null;
                foreach (var playerNetworkController in _playerDictionary.Keys)
                {
                    if (playerNetworkController.PlayerData.ClientId == playerId)
                    {
                        player = playerNetworkController;
                        break;
                    }
                }

                if (player != null)
                {
                    _playerDictionary.Remove(player);
                    OnPlayerListUpdatedEvent?.Invoke(_playerDictionary);
                }
            }
        }

        private void Update()
        {
            if (Input.GetKeyDown(KeyCode.Backspace))
            {
                OnPlayerTakeDamage(1);
            }
        }

        private void OnResetPlayerHealth()
        {
            _playerNetworkController.ResetHealth(_gameSettingSO.PlayerStartingHealth);
        }

        public void OnSetPlayerController(PlayerNetworkController controller)
        {
            _playerNetworkController = controller;
            _playerDataCollectionSO.UpdatePlayerHealth(_gameSettingSO.PlayerStartingHealth);
        }

        public void OnPlayerTakeDamage(float damage)
        {
            _playerDataCollectionSO.UpdatePlayerHealth(damage);
            _playerNetworkController.TakeDamage(damage);
        }

        public void OnPlayerDeath(ulong clientId)
        {
            foreach (PlayerNetworkController playerNetworkController in _playerDictionary.Keys)
            {
                if (playerNetworkController.PlayerData.ClientId != clientId)
                {
                    _networkGameManager.OnRequestEndGameWithWinnerServerRpc(playerNetworkController.PlayerData.ClientId);
                    _playerNetworkController.UpdateScore(playerNetworkController.PlayerData.ClientId);
                    Debug.Log($"#{GetType().Name}# Winner! -> {playerNetworkController.PlayerData.ClientId}");
                    break;
                }
            }
        }

        /// <summary>
        /// If the round ended, check who has higher health is the winner
        /// </summary>
        private void OnEvaluatePlayerHealth()
        {
            ulong winnerId = 0;
            float highestHealth = 0;
            foreach (PlayerNetworkController playerNetworkController in _playerDictionary.Keys)
            {
                if (playerNetworkController.PlayerData.Health > highestHealth)
                {
                    highestHealth = playerNetworkController.PlayerData.Health;
                    winnerId = playerNetworkController.PlayerData.ClientId;
                }
            }

            _networkGameManager.OnRequestEndGameWithWinnerServerRpc(winnerId);
        }

        public PlayerData GetPlayerDataWithID(ulong clientId)
        {
            foreach (PlayerNetworkController playerNetworkController in _playerDictionary.Keys)
            {
                if (playerNetworkController.PlayerData.ClientId == clientId)
                {
                    return playerNetworkController.PlayerData;
                }
            }

            return null;
        }

        public List<PlayerData> GetPlayerDataList()
        {
            var list = new List<PlayerData>();
            foreach (PlayerNetworkController playerNetworkController in _playerDictionary.Keys)
            {
                list.Add(playerNetworkController.PlayerData);
            }

            return list;
        }
    }
}