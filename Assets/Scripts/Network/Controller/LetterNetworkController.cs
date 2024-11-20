using System.Collections.Generic;
using Interface;
using NerdWar.Data;
using NerdWar.Enum;
using NerdWar.Manager;
using NerdWar.Network.Managers;
using NerdWar.SO;
using TMPro;
using Unity.Netcode;
using UnityEngine;
using XRMultiplayer;

namespace NerdWar.Network.Controller
{
    public class LetterNetworkController : NetworkBehaviour , ISelectable
    {
        public int OrigParentID => _origParentId;
        public bool IsSelected => _isSelected;

        [SerializeField] private List<TMP_Text> _letterTMPText;
        [SerializeField] private LetterData _letterData;
        [SerializeField] private Rigidbody _letterRigidbody;
        [SerializeField] private GameObject _bubbleShield;
        [SerializeField] private ParticleSystem _effect; 
        
        [SerializeField] private float _floatFrequency = 1f; 
        [SerializeField] private float _floatAmplitude = 0.1f; 
        
        private NetworkVariable<char> _networkLetterData = new NetworkVariable<char>();
        private NetworkVariable<bool> _networkLetterState = new NetworkVariable<bool>();
        private NetworkVariable<ulong> _networkLetterOwnerId = new NetworkVariable<ulong>();

        private ulong _ownerId = 99;
        private Transform _hostLetterHolder;
        private Transform _clientLetterHolder;
        private Transform _origParent;
        private int _origParentId = 0;
        private Vector3 _origPos;
        private Vector3 _targetPos;
        private bool _isMoving = false;
        private bool _isSelected = false;
        private float _randomOffset;
        
        private WordSpawnerNetworkManager _wordSpawnerNetworkManager => WordSpawnerNetworkManager.Services;
        private GameSettingSO _gameSettingSO => GameSettingSO.Service;

        public LetterStatus GetLetterStatus() => _letterData.Status;

        private void Awake()
        {
            _origPos = transform.localPosition;
            _randomOffset = UnityEngine.Random.Range(0f, 2f * Mathf.PI);
        }
        
        public override void OnNetworkSpawn()
        {
            base.OnNetworkSpawn();
            AudioManager.Service.OnPlayOneShot(AudioManager.Service.LetterSpawnSFX);

            if (IsServer)
            {
                _networkLetterOwnerId.Value = 99;
            }
            
            _networkLetterData.OnValueChanged += OnLetterDataChanged;
            _networkLetterState.OnValueChanged += OnLetterStateChanged;
            _networkLetterOwnerId.OnValueChanged += OnOwnerIdChanged;
        }

        private void Update()
        {
            if (_isSelected)
            {
                if (_isMoving)
                {
                    if (Vector3.Distance(transform.localPosition, _targetPos) > .01f)
                    {
                        transform.localPosition = Vector3.Slerp(transform.localPosition, _targetPos,
                            _gameSettingSO.TravelSpeed * Time.deltaTime);
                    }
                    else
                    {
                        _isMoving = false;
                    }
                }
            }
            else
            {
                float newY = _origPos.y + Mathf.Sin(Time.time * _floatFrequency + _randomOffset) * _floatAmplitude;
                transform.localPosition = new Vector3(0, newY, 0);
            }
        }

        private void OnLetterDataChanged(char oldLetter, char newLetter)
        {
            // Update the letter data when it changes
            SetLetterData(new LetterData(newLetter), _hostLetterHolder, _clientLetterHolder, _origParent, _origParentId);
        }

        private void OnLetterStateChanged(bool previousvalue, bool newvalue)
        {
            SetLetterStatus(newvalue);
        }

        private void OnOwnerIdChanged(ulong previousvalue, ulong newvalue)
        {
            _ownerId = newvalue;
        }

        public void SetLetterData(LetterData data, Transform hostHolder, Transform clientHolder, Transform origParent, int origParentId)
        {
            _hostLetterHolder = hostHolder;
            _clientLetterHolder = clientHolder;
            _origParent = origParent;
            _origParentId = origParentId;
            _letterData = data;
            
            foreach (TMP_Text tmpText in _letterTMPText)
                tmpText.text = data.Letter.ToString().ToUpper();

            if (IsServer)
            {
                // Only the server sets the data, and it will be synced to clients
                if (_networkLetterData.Value != data.Letter)
                {
                    _networkLetterData.Value = data.Letter;
                    SetOriginalState();
                }
            }
        }

        public void MoveLetterToNewPosition(Vector3 targetPos)
        {
            _targetPos = targetPos;
            _isMoving = true;
        }
        
        public void Interact()
        {
            if (_ownerId != 99 && _ownerId != XRINetworkGameManager.LocalId)
                return;
            
            AudioManager.Service.OnPlayOneShot(AudioManager.Service.SelectSFX);
            if (_letterData.Status == LetterStatus.Selected)
                Deselected();
            else
                Selected();
        }

        private void SetLetterStatus(bool isSelected)
        {
            _letterData.Status = isSelected ? LetterStatus.Selected : LetterStatus.Deselected;
        }

        private void SetOriginalState()
        {
            var randomZ = UnityEngine.Random.Range(-30, 30);
            var randomRot = Quaternion.Euler(0,0, randomZ);

            transform.parent = _origParent;
            transform.localPosition = Vector3.zero;
            transform.localRotation = randomRot;
        }

        public void ShowEffect(bool show)
        {
            _effect.gameObject.SetActive(show);
        }

        [ClientRpc]
        public void ShowEffectClientRpc(bool show, ClientRpcParams clientRpcParams)
        {
            _effect.gameObject.SetActive(show);
        }

        public void Selected()
        {
            if ((_ownerId != 99 && _ownerId != XRINetworkGameManager.LocalId) || _isSelected)
                return;
            
            AudioManager.Service.OnPlayOneShot(AudioManager.Service.SelectSFX);
            
            if (IsServer)
            {
                _networkLetterState.Value = true;
                _networkLetterOwnerId.Value = XRINetworkGameManager.LocalId;
                
                _isSelected = true;
                _bubbleShield.SetActive(!_isSelected);
                transform.parent = _hostLetterHolder; // Update network variable to sync parent change
                GameManager.Service.OnUpdateLetterState();
            }
            else
                OnClientSelectsServerRpc(true);
            
            _wordSpawnerNetworkManager.OnSelectWord(_letterData, true);
        }

        public void Deselected()
        {
            if ((_ownerId != 99 && _ownerId != XRINetworkGameManager.LocalId) || !_isSelected || _isMoving)
                return;
            
            AudioManager.Service.OnPlayOneShot(AudioManager.Service.SelectSFX);
            
            if (IsServer)
            {
                _networkLetterState.Value = false;
                _networkLetterOwnerId.Value = 99;
                
                _isSelected = false;
                _bubbleShield.SetActive(!_isSelected);
                ShowEffect(false);
                SetOriginalState();
                GameManager.Service.OnUpdateLetterState();
            }
            else
                OnClientSelectsServerRpc(false);

            _wordSpawnerNetworkManager.OnSelectWord(_letterData, false);
        }

        [ServerRpc(RequireOwnership = false)]
        private void OnClientSelectsServerRpc(bool isSelected, ServerRpcParams serverRpcParams = default)
        {
            _networkLetterState.Value = isSelected;
            _networkLetterOwnerId.Value = isSelected ? serverRpcParams.Receive.SenderClientId : 99;
            OnUpdateLetterStateClientRpc(isSelected, serverRpcParams.Receive.SenderClientId);
        }

        [ClientRpc]
        private void OnUpdateLetterStateClientRpc(bool isSelected, ulong id)
        {
            _isSelected = isSelected;
            _bubbleShield.SetActive(!_isSelected);
            if(!_isSelected)
                ShowEffect(false);
            
            if (IsServer)
            {
                Transform newParent = id == XRINetworkGameManager.LocalId
                    ? _hostLetterHolder
                    : _clientLetterHolder;
                    
                if (isSelected)
                {
                    transform.parent = newParent; // Update network variable to sync parent change
                }
                else
                {
                    SetOriginalState();
                }

                _letterRigidbody.isKinematic = isSelected;
                GameManager.Service.OnUpdateLetterState();
            }
        }
    }
}