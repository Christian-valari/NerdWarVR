using System;
using UnityEngine;

namespace NerdWar.Data
{
    [Serializable]
    public class PlayerData
    {
        [field: SerializeField] public ulong ClientId { get; set; }
        [field: SerializeField] public string DisplayName { get; set; }
        [field: SerializeField] public float Health { get; set; }
        [field: SerializeField] public int Score { get; set; }
        [field: SerializeField] public Color Color { get; set; }

        public PlayerData() { }

        public PlayerData(ulong id, string displayName, Color color,float health = 0)
        {
            ClientId = id;
            DisplayName = displayName;
            Health = health;
            Score = 0;
            Color = color;
        }
        
        public void SetPlayerData(PlayerData data)
        {
            DisplayName = data.DisplayName;
            Health = data.Health;
            Score = data.Score;
        }

        public void UpdateDisplayName(string name)
        {
            DisplayName = name;
        }

        public void UpdateColor(Color color)
        {
            Color = color;
        }
        
        public void AddPoints(int points)
        {
            Score += points;
        }
        
        public void SubtractPoints(int points)
        {
            Score -= points;
        }
        
        public void AddHealth(float health)
        {
            Health += health;
        }
        
        public void SubtractHealth(float health)
        {
            Health -= health;
        }

        public void ResetPoints()
        {
            Score = 0;
        }
    }
}