using System;
using System.Collections.Generic;
using UnityEngine;
using Valari.Services;

namespace NerdWar.Manager
{
    public class AudioManager : MonoBehaviour
    {
        public static AudioManager Service
        {
            get
            {
                if (_ == null)
                    _ = Game.Services.Get<AudioManager>();

                return _;
            }
        }

        private static AudioManager _;

        public AudioClip GunShotSFX => _gunShotSFX;
        public AudioClip SelectSFX => _selectSFX;
        public AudioClip LetterSpawnSFX => _letterSpawnSFX;
        public AudioClip LoseSFX => _loseSFX;
        public AudioClip WinSFX => _winSFX;
        public AudioClip CountDownSFX => _countdownSFX;
        public AudioClip TimeUpSFX => _timeUpSFX;
        public AudioClip FightSFX => _fightSFX;

        [Header("Audio Sources")]
        [SerializeField] private AudioSource _bgmAudioSource;
        [SerializeField] private AudioSource _sfxAudioSource;
        
        [Space(10)][Header("SFX")]
        [SerializeField] private AudioClip _lobbyBGM;
        [SerializeField] private AudioClip _mainBGM;
        
        [Space(10)][Header("SFX")]
        [SerializeField] private AudioClip _gunShotSFX;
        [SerializeField] private AudioClip _selectSFX;
        [SerializeField] private AudioClip _letterSpawnSFX;
        [SerializeField] private AudioClip _loseSFX;
        [SerializeField] private AudioClip _winSFX;
        [SerializeField] private AudioClip _countdownSFX;
        [SerializeField] private AudioClip _timeUpSFX;
        [SerializeField] private AudioClip _fightSFX;
        [SerializeField] private List<AudioClip> _validatedWordSFX;
        [SerializeField] private List<AudioClip> _roundSFX;

        public void OnPlayOneShot(AudioClip clip)
        {
            _sfxAudioSource.PlayOneShot(clip);
        }

        public void OnPlayValidateWord(int numberOfLetters)
        {
            var sfxIndex = (_validatedWordSFX.Count - 1) <= (numberOfLetters - 3 ) ? (_validatedWordSFX.Count - 1) : (numberOfLetters - 3);
            _sfxAudioSource.PlayOneShot(_validatedWordSFX[sfxIndex]);
        }

        public void OnPlayRound(int round)
        {
            _sfxAudioSource.PlayOneShot(_roundSFX[round]);
        }

        public void PlayGameBGM()
        {
            PlayBGM(_mainBGM);
        }

        public void StopBGM()
        {
            _bgmAudioSource.Stop();
        }

        private void PlayBGM(AudioClip clip)
        {
            _bgmAudioSource.clip = clip;
            _bgmAudioSource.Play();
        }
    }
}