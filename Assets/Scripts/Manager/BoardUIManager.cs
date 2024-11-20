using System;
using System.Collections.Generic;
using NerdWar.Data;
using NerdWar.Manager;
using NerdWar.Network.Controller;
using NerdWar.UI;
using Unity.Netcode;
using UnityEngine;
using UnityEngine.UI;
using Valari.Utilities;
using XRMultiplayer;

namespace Valari.Services
{
    public class BoardUIManager : MonoBehaviour
    {
        [SerializeField] private Text _resultText;
        [SerializeField] private GameObject _resultModal;
        [SerializeField] private List<PlayerDataUI> _playerDataList;
        
        private PlayerManager _playerManager => PlayerManager.Service;

        private void OnEnable()
        {
            GameManager.OnGameEndEvent += OnShowResult;
            GameManager.OnGameStartedEvent += HideResult;
            GameManager.OnRestartGameEvent += HideResult;
            PlayerManager.OnPlayerListUpdatedEvent += OnPlayerListUpdated;
        }

        private void OnDisable()
        {
            GameManager.OnGameEndEvent -= OnShowResult;
            GameManager.OnGameStartedEvent -= HideResult;
            GameManager.OnRestartGameEvent -= HideResult;
            PlayerManager.OnPlayerListUpdatedEvent -= OnPlayerListUpdated;
        }

        private void Clear()
        {
            foreach (var playerNetworkController in _playerDataList)
            {
                playerNetworkController.ResetPlayerData();
            }
        }

        private void OnPlayerListUpdated(Dictionary<PlayerNetworkController, XRINetworkPlayer> playerDictionary)
        {
            Clear();
            int counter = 0;
            foreach (var playerNetworkController in playerDictionary.Keys)
            {
                var dataUI = _playerDataList[counter];
                var playerData = playerNetworkController.PlayerData;
                string displayName = playerData.ClientId == NetworkManager.Singleton.LocalClient.ClientId ? "You" : playerData.DisplayName;
                dataUI.SetPlayerDataUI(playerData.ClientId == NetworkManager.Singleton.LocalClient.ClientId, playerData.Health, playerData.Color);
                dataUI.InjectPlayerNetworkController(playerNetworkController);
                counter++;
                
                Debug.Log($"#{GetType().Name}# Set Player Data -> Id: {playerData.ClientId} - {playerData.DisplayName} - LocalID:{NetworkManager.Singleton.LocalClient.ClientId} - isLocal: {playerData.ClientId == NetworkManager.Singleton.LocalClient.ClientId}");
            }
        }

        private void OnShowResult(ulong winnerId)
        {
            Delay.RunLater(this, 1f, () =>
            {
                var list = _playerManager.GetPlayerDataList();
                var result = $"{list[0].Score} - {list[1].Score}";
                _resultText.text = result;
                _resultModal.SetActive(true);
            });
        }

        private void HideResult()
        {
            _resultModal.SetActive(false);
        }
    }
}