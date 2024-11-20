using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace NerdWar.Utilities
{
    [RequireComponent(typeof(TMP_Text))]
    public class RandomHintTextGenerator : MonoBehaviour
    {
        [SerializeField] private float _hintDuration = 10f;
        [SerializeField] private float _hintAnimationSpeed = .1f;
        [SerializeField] private List<string> _hintList = new List<string>();
        private TMP_Text _tmpText;
        private int _hintIndex = 0;

        private void Start()
        {
            _tmpText = GetComponent<TMP_Text>();
            ShowHint();
        }

        private void ShowHint()
        {
            if (_hintIndex >= _hintList.Count - 1) _hintIndex = 0;
            StartCoroutine(StartHintWordRoutine());
        }

        private IEnumerator StartHintWordRoutine()
        {
            var existingText = _tmpText.text.ToCharArray();
            for (var i = 0; i < existingText.Length; i++)
            {
                var newValue = _tmpText.text.Substring(0, existingText.Length - i);
                _tmpText.text = newValue;
                yield return new WaitForSeconds(_hintAnimationSpeed);
            }

            _tmpText.text = String.Empty;
            yield return new WaitForSeconds(1f);

            var hintLetters = ("Hint: " + _hintList[_hintIndex]).ToCharArray();
            
            foreach (char letter in hintLetters)
            {
                _tmpText.text += letter;
                yield return new WaitForSeconds(_hintAnimationSpeed);
            }

            yield return new WaitForSeconds(_hintDuration);
            _hintIndex++;
            ShowHint();
        }
    }
}