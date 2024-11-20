using System;
using System.Collections.Generic;
using NerdWar.Network.Controller;
using NerdWar.Network.Managers;
using NerdWar.SO;
using NerdWar.UI;
using Unity.Netcode;
using UnityEngine;
using UnityEngine.Serialization;
using Utilities;
using XRMultiplayer;

namespace NerdWar.Manager
{
    public class GameUIManager : MonoBehaviour
    {
        [Header("World Space UI")]
        [SerializeField] private DamageCounterUI _damageCounterUI;
        [SerializeField] private TimerCounterUI _timerCounterUI;
        [SerializeField] private EndPanelUI _endPanelUI;
        
        [Header("Game UI")] 
        [SerializeField] private GameObject _waitingGameModal;
        [SerializeField] private GameObject _startingGameModal;
        [SerializeField] private GameObject _endModal;
        
        private GameSettingSO _gameSettingSO => GameSettingSO.Service;
        private NetworkGameManager _networkGameManager => NetworkGameManager.Service;
        private GameManager _gameManager => GameManager.Service;
        private PlayerManager _playerManager => PlayerManager.Service;

        private void OnEnable()
        {
            WordCheckerManager.OnValidateWordEvent += OnValidateWord;
            GameManager.OnGameStartedEvent += OnGameStarted;
            GameManager.OnRestartGameEvent += OnGameStarted;
            GameManager.OnStartRoundTimerEvent += OnStartTimer;
            GameManager.OnGameEndEvent += OnShowEndPanel;
            GameManager.OnPlayerConnectedEvent += OnInitialize;
            GameManager.OnPlayerDisconnectedEvent += OnInitialize;
            PlayerManager.OnPlayerListUpdatedEvent += OnShowStartingModal;
        }

        private void OnDisable()
        {
            WordCheckerManager.OnValidateWordEvent -= OnValidateWord;
            GameManager.OnGameStartedEvent -= OnGameStarted;
            GameManager.OnRestartGameEvent -= OnGameStarted;
            GameManager.OnStartRoundTimerEvent -= OnStartTimer;
            GameManager.OnGameEndEvent -= OnShowEndPanel;
            GameManager.OnPlayerConnectedEvent -= OnInitialize;
            GameManager.OnPlayerDisconnectedEvent -= OnInitialize;
            PlayerManager.OnPlayerListUpdatedEvent -= OnShowStartingModal;
        }

        private void OnInitialize()
        {
            _damageCounterUI.UpdateBulletCounter(0);
            OnStartTimer(null);
        }
        
        private void OnShowStartingModal(Dictionary<PlayerNetworkController, XRINetworkPlayer> playerList)
        {
            if (_gameSettingSO.IsSingePlayer)
            {
                OnShowModal(NetworkManager.Singleton.IsHost ? _startingGameModal : _damageCounterUI.gameObject);
                return;
            }
            
            if(playerList.Count == 2)
                OnShowModal(NetworkManager.Singleton.IsHost ? _startingGameModal : _damageCounterUI.gameObject);
            else
                OnShowModal(NetworkManager.Singleton.IsHost ? _waitingGameModal : _damageCounterUI.gameObject);
        }

        private void OnShowModal(GameObject modal)
        {
            _startingGameModal.SetActive(_startingGameModal.name == modal.name);
            _waitingGameModal.SetActive(_waitingGameModal.name == modal.name);
            _endModal.SetActive(_endModal.name == modal.name);
        }

        private void OnGameStarted()
        {
            
            OnShowModal(_damageCounterUI.gameObject);
        }

        private void OnShowEndPanel(ulong winnerId)
        {
            OnShowModal(_endModal);
            var data = _playerManager.GetPlayerDataWithID(winnerId);
            _endPanelUI.ShowModal(data);
            OnStartTimer(null);
        }

        private void OnValidateWord(int damage)
        {
            _damageCounterUI.UpdateBulletCounter(damage);
        }

        private void OnStartTimer(Timer timer)
        {
            _timerCounterUI.SetTimer(timer);
        }

        public void OnStartButtonClick()
        {
            if (_gameSettingSO.IsSingePlayer)
                _gameManager.StartGame();
            else
                _networkGameManager.StartGameClientRpc();
        }

        public void OnRestartButtonClick()
        {
            if (_gameSettingSO.IsSingePlayer)
                _gameManager.StartGame();
            else
            {
                _networkGameManager.OnRequestRestartGameServerRpc();
            }
        }
    }
}