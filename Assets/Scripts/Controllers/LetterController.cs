using System.Collections.Generic;
using Interface;
using NerdWar.Data;
using NerdWar.Enum;
using NerdWar.Manager;
using NerdWar.Network.Managers;
using NerdWar.SO;
using TMPro;
using UnityEngine;

namespace NerdWar.Controllers
{
    public class LetterController : MonoBehaviour, ISelectable
    {
        public int OrigParentID { get; private set; }

        public bool IsSelected { get; private set; }

        [SerializeField] private List<TMP_Text> _letterTMPText;
        [SerializeField] private LetterData _letterData;
        [SerializeField] private Rigidbody _letterRigidbody;
        [SerializeField] private GameObject _bubbleShield;
        [SerializeField] private ParticleSystem _effect;

        [SerializeField] private float _floatFrequency = 1f;
        [SerializeField] private float _floatAmplitude = 0.1f;

        private Transform _hostLetterHolder;
        private Transform _origParent;
        private Vector3 _origPos;
        private Vector3 _targetPos;
        private bool _isMoving;
        private float _randomOffset;

        private WordSpawnerManager _wordSpawnerManager => WordSpawnerManager.Services;
        private GameSettingSO _gameSettingSO => GameSettingSO.Service;

        public LetterStatus GetLetterStatus()
        {
            return _letterData.Status;
        }

        private void Awake()
        {
            _origPos = transform.localPosition;
            _randomOffset = Random.Range(0f, 2f * Mathf.PI);
            AudioManager.Service.OnPlayOneShot(AudioManager.Service.LetterSpawnSFX);
        }

        private void Update()
        {
            if (IsSelected)
            {
                if (_isMoving)
                {
                    if (Vector3.Distance(transform.localPosition, _targetPos) > .01f)
                        transform.localPosition = Vector3.Slerp(transform.localPosition, _targetPos,
                            _gameSettingSO.TravelSpeed * Time.deltaTime);
                    else
                        _isMoving = false;
                }
            }
            else
            {
                var newY = _origPos.y + Mathf.Sin(Time.time * _floatFrequency + _randomOffset) * _floatAmplitude;
                transform.localPosition = new Vector3(0, newY, 0);
            }
        }

        public void SetLetterData(LetterData data, Transform hostHolder, Transform origParent, int origParentId)
        {
            _hostLetterHolder = hostHolder;
            _origParent = origParent;
            OrigParentID = origParentId;
            _letterData = data;

            foreach (var tmpText in _letterTMPText)
                tmpText.text = data.Letter.ToString().ToUpper();

            SetOriginalState();
        }

        public void MoveLetterToNewPosition(Vector3 targetPos)
        {
            _targetPos = targetPos;
            _isMoving = true;
        }

        public void Interact()
        {
            AudioManager.Service.OnPlayOneShot(AudioManager.Service.SelectSFX);
            if (_letterData.Status == LetterStatus.Selected)
                Deselected();
            else
                Selected();
        }

        private void SetOriginalState()
        {
            var randomZ = Random.Range(-30, 30);
            var randomRot = Quaternion.Euler(0, 0, randomZ);

            transform.parent = _origParent;
            transform.localPosition = Vector3.zero;
            transform.localRotation = randomRot;
        }

        public void ShowEffect(bool show)
        {
            _effect.gameObject.SetActive(show);
        }

        public void Selected()
        {
            AudioManager.Service.OnPlayOneShot(AudioManager.Service.SelectSFX);

            IsSelected = true;
            _letterData.Status = LetterStatus.Selected;
            _bubbleShield.SetActive(!IsSelected);
            transform.parent = _hostLetterHolder; // Update network variable to sync parent change
            GameManager.Service.OnUpdateLetterState();

            _wordSpawnerManager.OnSelectWord(_letterData, true);
        }

        public void Deselected()
        {
            AudioManager.Service.OnPlayOneShot(AudioManager.Service.SelectSFX);

            IsSelected = false;
            _letterData.Status = LetterStatus.Deselected;
            _bubbleShield.SetActive(!IsSelected);
            ShowEffect(false);
            SetOriginalState();
            GameManager.Service.OnUpdateLetterState();

            _wordSpawnerManager.OnSelectWord(_letterData, false);
        }
    }
}