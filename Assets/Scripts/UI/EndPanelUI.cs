using NerdWar.Data;
using NerdWar.Manager;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using XRMultiplayer;

namespace NerdWar.UI
{
    public class EndPanelUI : MonoBehaviour
    {
        [SerializeField] private GameObject _winnerModal;
        [SerializeField] private GameObject _loserModal;
        [SerializeField] private TextRandomizer[] _textRandomizers;

        private PlayerData _playerData;
        
        private AudioManager _audioManager => AudioManager.Service;

        public void ShowModal(PlayerData data)
        {
            _playerData = data;
            bool isWinner = _playerData.ClientId == XRINetworkGameManager.LocalId;
            _winnerModal.SetActive(isWinner);
            _loserModal.SetActive(!isWinner);
            
            _audioManager.OnPlayOneShot(isWinner ? _audioManager.WinSFX : _audioManager.LoseSFX);
            
            foreach (var randomizer in _textRandomizers)
                randomizer.SetRandomText();
        }
    }
}