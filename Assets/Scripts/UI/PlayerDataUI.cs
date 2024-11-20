
using NerdWar.Network.Controller;
using UnityEngine;
using UnityEngine.UI;

namespace NerdWar.UI
{
    public class PlayerDataUI : MonoBehaviour
    {
        [SerializeField] private GameObject _connectingBlocker;
        [SerializeField] private Text _playerNameText;
        [SerializeField] private Image _playerAvatar;
        [SerializeField] private Slider _playerHealthSlider;
        [SerializeField] private float _lerpSpeed = 5f;

        private float _health = 0;
        private bool _isLocal = false;

        private void Update()
        {
            if (Mathf.Abs(_playerHealthSlider.value - _health) > .01f)
            {
                _playerHealthSlider.value = Mathf.Lerp(_playerHealthSlider.value, _health, _lerpSpeed * Time.deltaTime);
            }
        }

        public void ResetPlayerData()
        {
            _connectingBlocker.SetActive(true);
        }

        public void SetPlayerDataUI(bool isLocal, float health, Color color)
        {
            _isLocal = isLocal;
            _playerHealthSlider.maxValue = health;
            _playerHealthSlider.value = health;
            _health = health;
            _playerAvatar.color = color;
            _connectingBlocker.SetActive(false);
        }

        public void InjectPlayerNetworkController(PlayerNetworkController controller)
        {
            controller.OnHealthUpdatedEvent += OnHealthChanged;
            controller.OnDisplayNameUpdatedEvent += OnDisplayNameChanged;
            controller.OnColorUpdatedEvent += OnColorUpdatedEvent;
        }

        private void OnColorUpdatedEvent(Color color)
        {
            _playerAvatar.color = color;
        }

        private void OnDisplayNameChanged(string name)
        {
            _playerNameText.text = _isLocal ? "You" : name;
        }

        private void OnHealthChanged(float newHealth)
        {
            _health = newHealth;
        }
    }
}