using UnityEngine;
using Valari.Services;

namespace NerdWar.SO
{
    public class GameSettingSO : ScriptableObject
    {
        public static GameSettingSO Service
        {
            get
            {
                if (_ == null)
                    _ = Game.Services.Get<GameSettingSO>();

                return _;
            }
        }

        private static GameSettingSO _;
        
        public bool IsSingePlayer => _isSinglePlayer;
        public float PlayerStartingHealth => _playerStartingHealth;
        public float SpawnInterval => _spawnInterval;
        public float RestTime => _restTime;
        public float TravelSpeed => _travelSpeed;
        public float BulletSpeed => _bulletSpeed;
        public float BulletTimeBeforeDestroy => _bulletTimeBeforeDestroy;
        
        [Header("Game Settings")]
        [SerializeField] private bool _isSinglePlayer = false;
        
        [Header("Game Settings")]
        [SerializeField] private float _restTime = 5;
        [SerializeField] private float _spawnInterval = 1;
        
        [Space(20)][Header("Player Settings")]
        [SerializeField] private float _playerStartingHealth = 20;
        
        [Space(20)][Header("Letter Settings")]
        [SerializeField] private float _travelSpeed = 10;
        
        [Space(20)][Header("Bullet Settings")]
        [SerializeField] private float _bulletSpeed = 10;
        [SerializeField] private float _bulletTimeBeforeDestroy = 10;
    }
}