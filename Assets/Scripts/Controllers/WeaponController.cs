using System;
using NerdWar.Data;
using NerdWar.Manager;
using NerdWar.Network.Manager;
using NerdWar.SO;
using UnityEngine;
using UnityEngine.XR.Interaction.Toolkit.Interactables;
using XRMultiplayer;

namespace NerdWar.Controllers
{
    public class WeaponController : MonoBehaviour
    {
        [SerializeField] private bool _isHost = false;
        [SerializeField] private float _damage = 0;
        [SerializeField] private Transform _bulletSpawnPoint;
        [SerializeField] private BulletType _bulletType;
        [SerializeField] private Outline _outline;
        [SerializeField] private XRGrabInteractable _xrGrabInteractable;
        private Vector3 _origPosition;
        private Quaternion _origRotation;
        
        private WeaponNetworkManager _weaponNetworkManager => WeaponNetworkManager.Service;
        private WeaponManager _weaponManager => WeaponManager.Service;
        private GameSettingSO _gameSettingSO => GameSettingSO.Service;

        private void Awake()
        {
            _origPosition = transform.position;
            _origRotation = transform.rotation;
        }

        public void LoadGun(float damage)
        {
            _damage = damage;
            _xrGrabInteractable.enabled = true;
        }

        public void ResetGun()
        {
            _damage = 0;
        }

        public void Shoot()
        {
            if (_damage == 0) return;

            Debug.Log($"#{GetType().Name}# Shoot! -> The bullet has been shot");
            if (_gameSettingSO.IsSingePlayer)
            {
                _weaponManager.OnPlayerShoots(
                    _bulletType, 
                    _damage, 
                    _bulletSpawnPoint.position, _bulletSpawnPoint.rotation);
            }
            else
            {
                _weaponNetworkManager.OnPlayerShoots(new BulletNetworkData
                {
                    Damage = _damage,
                    BulletType = _bulletType,
                }, _bulletSpawnPoint.position, _bulletSpawnPoint.rotation);
            }
        }

        public void DropWeapon()
        {
            transform.position = _origPosition;
            transform.rotation = _origRotation;
        }

        public void OnHoverEnterWeapon()
        {
            _outline.enabled = true;
            _xrGrabInteractable.enabled = true;
        }

        public void OnHoverExitWeapon()
        {
            _outline.enabled = false;
        }
    }
}