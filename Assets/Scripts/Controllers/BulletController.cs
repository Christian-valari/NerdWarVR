using System;
using Interface;
using NerdWar.Manager;
using NerdWar.SO;
using NerdWar.Utilities;
using UnityEngine;
using Valari.Utilities;

namespace NerdWar.Controllers
{
    public class BulletController : MonoBehaviour
    {
        [SerializeField] private Rigidbody _rb;
        [SerializeField] private GameObject _hitEffect;
        [SerializeField] private AudioMessageOnDestroy _audioMessageOnDestroy;
        
        private float _damage = 0;
        
        private GameSettingSO _gameSettingSO => GameSettingSO.Service;
        private AudioManager _audioManager => AudioManager.Service;

        private void Awake()
        {
            _audioManager.OnPlayOneShot(_audioManager.GunShotSFX);
        }

        private void FixedUpdate()
        {
            _rb.AddForce(transform.up * _gameSettingSO.BulletSpeed, ForceMode.Acceleration);
        }

        public void SetBulletDamage(float damage)
        {
            _damage = damage;
            Destroy(gameObject, _gameSettingSO.BulletTimeBeforeDestroy );
        }

        private void OnTriggerEnter(Collider other)
        {
            if (other.CompareTag(Tags.Player) || other.CompareTag(Tags.Wall))
            {
                if (other.TryGetComponent(out IDamageable damageable))
                {
                    damageable.TakeDamage(_damage);

                    var messageClip = _audioMessageOnDestroy.GetRandomAudioMessage();
                    if(messageClip)
                        _audioManager.OnPlayOneShot(messageClip);
                }
                
                Instantiate(_hitEffect, transform.position, transform.rotation);
                Destroy(gameObject);
            }
        }
    }
}