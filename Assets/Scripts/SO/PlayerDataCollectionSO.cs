using System.Collections.Generic;
using NerdWar.Data;
using UnityEngine;
using Valari.Services;

namespace NerdWar.SO
{
    public class PlayerDataCollectionSO : ScriptableObject
    {
        [SerializeField] private PlayerData _currentPlayerData;

        [SerializeField] private List<PlayerData> _playerDataList = new List<PlayerData>();

        public float GetCurrentPlayerHealth()
        {
            return _currentPlayerData.Health;
        }

        public void SetCurrentPlayerData(PlayerData data)
        {
            _currentPlayerData.SetPlayerData(data);
        }

        public void AddScoreToCurrentPlayer(int addedScore)
        {
            _currentPlayerData.AddPoints(addedScore);
        }

        public void UpdatePlayerHealth(float value, bool add = false)
        {
            if(add)
                _currentPlayerData.AddHealth(value);
            else
                _currentPlayerData.SubtractHealth(value);
        }
        
        public void ResetCurrentPlayerData()
        {
            _currentPlayerData.ResetPoints();
        }
    }
}