using System;
using NerdWar.Data;
using NerdWar.SO;
using UnityEngine;
using Utilities;
using Valari.Services;
using Valari.Utilities;

namespace NerdWar.Manager
{
    public class GameManager : MonoBehaviour
    {
        public static GameManager Service
        {
            get
            {
                if (_ == null)
                    _ = Game.Services.Get<GameManager>();

                return _;
            }
        }

        private static GameManager _;
        [SerializeField] private RoundWordDataListSO _roundWordDataList;
        [SerializeField] private int _currentRound = 0;
        [SerializeField] private ParticleSystem _endPanelEffect;
        private RoundWordData _roundWordData;
        
        private GameSettingSO _gameSettingSO => GameSettingSO.Service;
        private AudioManager _audioManager => AudioManager.Service;
        
        public static Action<RoundWordData> OnRoundStartedEvent { get; set; }
        public static Action OnRoundEndedEvent { get; set; }
        public static Action<Timer> OnStartRoundTimerEvent { get; set; }
        public static Action OnFinalRoundEndEvent { get; set; }
        public static Action OnPlayerConnectedEvent { get; set; }
        public static Action OnPlayerDisconnectedEvent { get; set; }
        public static Action OnGameStartedEvent { get; set; }
        public static Action OnRestartGameEvent { get; set; }
        public static Action<ulong> OnGameEndEvent { get; set; }
        public static Action OnUpdateLettersLayoutEvent { get; set; }

        public void OnPlayerConnected(bool connected)
        {
            if (connected)
            {
                OnPlayerConnectedEvent?.Invoke();
            }
            else
            {
                OnPlayerDisconnectedEvent?.Invoke();
            }
        }
        
        public void StartGame()
        {
            _endPanelEffect.gameObject.SetActive(false);
            OnGameStartedEvent?.Invoke();
            StartCurrentRound();
        }

        public void RestartGame()
        {
            _endPanelEffect.gameObject.SetActive(false);
            _currentRound = 0;
            OnRestartGameEvent?.Invoke();
            StartCurrentRound();
        }

        public void OnEndGame(ulong winnerId)
        {
            _endPanelEffect.gameObject.SetActive(true);
            _endPanelEffect.Play();
            OnGameEndEvent?.Invoke(winnerId);
        }

        public void OnUpdateLetterState()
        {
            OnUpdateLettersLayoutEvent?.Invoke();
        }

        private void StartCurrentRound()
        {
            var currentRoundData = GetCurrentRoundData();
            if (currentRoundData == null)
            {
                OnRoundsFinished();
                return;
            }

            OnRoundStartedEvent?.Invoke(currentRoundData);
            StartRoundTimer();
        }

        private void OnRoundsFinished()
        {
            OnStartRoundTimerEvent?.Invoke(null);
            OnFinalRoundEndEvent?.Invoke();
        }

        private void StartRoundTimer()
        {
            _roundWordData = GetCurrentRoundData();
            var roundTimer = new Timer(_roundWordData.RoundTimeLimit);
            roundTimer.OnTimeEndedEvent += OnRoundTimerEnded;

            // only handles the last 5s sfx, and the output is handle by the timer UI
            int previousSeconds = 0;
            roundTimer.OnSecondsUpdatedEvent += time =>
            {
                int currentTime = Mathf.FloorToInt(time);
                if (currentTime is < 5 and >= 0 && currentTime != previousSeconds)
                {
                    previousSeconds = currentTime;
                    if(currentTime == 0)
                        _audioManager.OnPlayOneShot(_audioManager.TimeUpSFX);
                    else
                        _audioManager.OnPlayOneShot(_audioManager.CountDownSFX);
                }
            };
            
            OnStartRoundTimerEvent?.Invoke(roundTimer);
            
            _audioManager.OnPlayRound(_currentRound);
            Delay.RunLater(this ,2.5f , () => _audioManager.OnPlayOneShot(_audioManager.FightSFX));

        }

        private void OnRoundTimerEnded()
        {
            if(!_gameSettingSO.IsSingePlayer)
                PlayerManager.Service.OnPlayerTakeDamage(_roundWordData.EndDamage);
            OnRoundEndedEvent?.Invoke();
            _currentRound++;

            if (GetCurrentRoundData() != null)
                StartRestTimerBeforeNextRound();
            else
                OnRoundsFinished();
        }

        private void StartRestTimerBeforeNextRound()
        {
            var restTimer = new Timer(_gameSettingSO.RestTime);
            OnStartRoundTimerEvent?.Invoke(restTimer);
            restTimer.OnTimeEndedEvent += StartCurrentRound;
        }

        private RoundWordData GetCurrentRoundData()
        {
            return _roundWordDataList.GetRoundWordDataSOByIndex(_currentRound);
        }
    }
}