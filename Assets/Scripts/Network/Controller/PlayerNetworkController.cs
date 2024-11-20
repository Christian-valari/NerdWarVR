using System;
using Interface;
using NerdWar.Data;
using NerdWar.Manager;
using Unity.Netcode;
using UnityEngine;
using XRMultiplayer;

namespace NerdWar.Network.Controller
{
    public class PlayerNetworkController : NetworkBehaviour, IDamageable
    {
        public PlayerData PlayerData => _playerData;
        [SerializeField] private PlayerData _playerData;
        private NetworkVariable<float> _healthNetwork = new NetworkVariable<float>();
        private NetworkVariable<int> _scoreNetwork = new NetworkVariable<int>();
        private XRINetworkPlayer _networkPlayer;

        public Action<float> OnHealthUpdatedEvent { get; set; }
        public Action<int> OnScoreUpdatedEvent { get; set; }
        public Action<string> OnDisplayNameUpdatedEvent { get; set; }
        public Action<Color> OnColorUpdatedEvent { get; set; }
        private PlayerManager _playerManager => PlayerManager.Service;

        public override void OnNetworkSpawn()
        {
            base.OnNetworkSpawn();
            if (IsOwner)
            {
                _playerManager.OnSetPlayerController(this);
            }

            _healthNetwork.OnValueChanged += OnHealthChanged;
            _scoreNetwork.OnValueChanged += OnScoreChanged;
        }

        public override void OnNetworkDespawn()
        {
            base.OnNetworkDespawn();
            
            _healthNetwork.OnValueChanged -= OnHealthChanged;
            _scoreNetwork.OnValueChanged -= OnScoreChanged;
        }

        public void SetPlayerData(PlayerData data)
        {
            _playerData = data;
            if (IsServer)
                _healthNetwork.Value = _playerData.Health;
            else
                OnHealthUpdateServerRpc(_playerData.Health);
        }

        public void SetupNetworkPlayer(XRINetworkPlayer data)
        {
            _networkPlayer = data;
            _networkPlayer.onNameUpdated += OnNameChanged; 
            _networkPlayer.onColorUpdated += OnColorChanged; 
        }

        private void OnColorChanged(Color color)
        {
            _playerData.UpdateColor(color);
            OnColorUpdatedEvent?.Invoke(color);
        }

        private void OnNameChanged(string name)
        {
            _playerData.UpdateDisplayName(name);
            OnDisplayNameUpdatedEvent?.Invoke(name);
        }

        private void OnHealthChanged(float previousvalue, float newvalue)
        {
            if (Math.Abs(newvalue - _playerData.Health) > .1f)
            {
                _playerData.Health = newvalue;
                OnHealthUpdatedEvent?.Invoke(newvalue);
                Debug.Log($"#{GetType().Name}# Health Changed! -> {newvalue}");
            }
        }

        private void OnScoreChanged(int previousvalue, int newvalue)
        {
            if (_playerData.Score != newvalue)
            {
                _playerData.Score = newvalue;
                OnScoreUpdatedEvent?.Invoke(newvalue);
                Debug.Log($"#{GetType().Name}# Score Changed: -> {newvalue}");
            }
        }

        private void UpdateHealth()
        {
            OnHealthUpdatedEvent?.Invoke(_playerData.Health);
            
            if (IsServer)
                _healthNetwork.Value = _playerData.Health;
            else
                OnHealthUpdateServerRpc(_playerData.Health);
        }

        public void ResetHealth(float health)
        {
            _playerData.Health = health;
            UpdateHealth();
        }

        public void TakeDamage(float damage)
        {
            _playerData.Health -= damage;
            UpdateHealth();
            
            if (_playerData.Health <= 0)
                _playerManager.OnPlayerDeath(_playerData.ClientId);
        }

        public void UpdateScore(ulong winnerId)
        {
            if (winnerId == OwnerClientId)
            {
                if (IsServer)
                    _scoreNetwork.Value += 1;
                else
                    OnScoreUpdateServerRpc();
            }
        }

        [ServerRpc(RequireOwnership = false)]
        private void OnHealthUpdateServerRpc(float health)
        {
            _healthNetwork.Value = health;
        }

        [ServerRpc(RequireOwnership = false)]
        private void OnScoreUpdateServerRpc()
        {
            _scoreNetwork.Value += 1;
        }
    }
}