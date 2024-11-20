using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Interface;
using NerdWar.Controllers;
using NerdWar.Data;
using NerdWar.Enum;
using NerdWar.Network.Manager;
using NerdWar.Network.Managers;
using NerdWar.SO;
using NerdWar.UI;
using UnityEngine;
using Valari.Services;
using Debug = UnityEngine.Debug;

namespace NerdWar.Manager
{
    public class WordCheckerManager : MonoBehaviour
    {
        public static WordCheckerManager Service
        {
            get
            {
                if (_ == null)
                    _ = Game.Services.Get<WordCheckerManager>();

                return _;
            }
        }

        private static WordCheckerManager _;
        
        [SerializeField] private WordDefinitionCollectionSO _wordDefinitionCollectionSO;
        [SerializeField] private string _word = "";
        [SerializeField] private int _damage = 0;

        private List<LetterData> _letterDataList = new List<LetterData>();
        private List<string> _formedWords = new List<string>();
        
        private WordSpawnerNetworkManager _wordSpawnerNetworkManager => WordSpawnerNetworkManager.Services;
        private WordSpawnerManager _wordSpawnerManager => WordSpawnerManager.Services;
        private WeaponNetworkManager _weaponNetworkManager => WeaponNetworkManager.Service;
        private WeaponManager _weaponManager => WeaponManager.Service;
        private GameSettingSO _gameSetting => GameSettingSO.Service;

        public static Action OnLetterSelectedEvent { get; set; }
        public static Action<int> OnValidateWordEvent { get; set; }

        private void OnEnable()
        {
            GameManager.OnGameStartedEvent += ResetChecker;
            GameManager.OnRestartGameEvent += ResetChecker;
            GameManager.OnRoundEndedEvent += ResetChecker;
            GameManager.OnGameEndEvent += OnGameEnds;
        }

        private void OnDisable()
        {
            GameManager.OnGameStartedEvent -= ResetChecker;
            GameManager.OnRestartGameEvent -= ResetChecker;
            GameManager.OnRoundEndedEvent -= ResetChecker;
            GameManager.OnGameEndEvent -= OnGameEnds;
        }
        
        private void Update()
        {
            if (Input.GetKeyDown(KeyCode.Backspace))
            {
                UndoSelectedWords();
            }
        }

        public void UpdateLetterSelected(LetterData letterSelected, bool select)
        {
            if (!select)
            {
                var letterIndex = _letterDataList.FindIndex(x => x == letterSelected);
                var letters = _word.ToCharArray().ToList();
                letters.RemoveAt(letterIndex);

                var updatedWord = "";
                foreach (char letter in letters)
                    updatedWord += letter;

                _word = updatedWord;
                _letterDataList.Remove(letterSelected);
                                
                OnLetterSelectedEvent?.Invoke();
            }
            else
            {
                _word += letterSelected.Letter;
                _letterDataList.Add(letterSelected);
                            
                OnLetterSelectedEvent?.Invoke();
            }
                            
            ValidateWord();
        }

        public void UseLoadedWord()
        {
            ResetChecker();
            OnValidateWordEvent?.Invoke(0);
        }

        private void ValidateWord()
        {
            _damage = 0;
            
            if (_word.Length <= 2)
            {
                OnValidateWordEvent?.Invoke(0);
                if (_gameSetting.IsSingePlayer)
                    _wordSpawnerManager.ShowSelectLetterEffect(false);
                else
                    _wordSpawnerNetworkManager.ShowSelectLetterEffect(false);
                return;
            }

            Stopwatch stopwatch = Stopwatch.StartNew();
            var data = _wordDefinitionCollectionSO.GetWordDefinition(_word);
            if (data != null)
            {
                foreach (LetterData letter in _letterDataList)
                {
                    _damage++;
                    
                    if (letter.Effect == LetterEffect.DoubleDamage)
                        _damage *= 2;
                }

                _formedWords.Add(_word);
                
                if (_gameSetting.IsSingePlayer)
                {
                    _weaponManager.OnLoadDamageToWeapon(_damage);
                    _wordSpawnerManager.ShowSelectLetterEffect(true);
                }
                else
                {
                    _weaponNetworkManager.OnLoadDamageToWeapon(_damage);
                    _wordSpawnerNetworkManager.ShowSelectLetterEffect(true);
                }
                
                OnValidateWordEvent?.Invoke(_damage);
                
                AudioManager.Service.OnPlayValidateWord(_damage);
                Debug.Log($"#{GetType().Name}# Found {data?.Word}! : {stopwatch.ElapsedMilliseconds}");
            }
            else
            {
                OnValidateWordEvent?.Invoke(0);

                if (_gameSetting.IsSingePlayer)
                {
                    _weaponManager.OnLoadDamageToWeapon(0);
                    _wordSpawnerManager.ShowSelectLetterEffect(false);
                }
                else
                {
                    _weaponNetworkManager.OnLoadDamageToWeapon(0);
                    _wordSpawnerNetworkManager.ShowSelectLetterEffect(false);
                }
            }
        }

        private void UndoSelectedWords()
        {
            ResetChecker();
            _letterDataList.Clear();
            
            if (_gameSetting.IsSingePlayer)
                _wordSpawnerManager.UndoWords();
            else
                _wordSpawnerNetworkManager.UndoWords();
        }

        private void ResetChecker()
        {
            _word = String.Empty;
            _damage = 0;
            _letterDataList.Clear();
            OnValidateWordEvent?.Invoke(0);
        }

        private void OnGameEnds(ulong obj)
        {
            ResetChecker();
        }
    }
}