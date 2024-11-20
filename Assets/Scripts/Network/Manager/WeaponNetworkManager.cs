using System;
using System.Collections.Generic;
using NerdWar.Controllers;
using NerdWar.Data;
using NerdWar.Manager;
using NerdWar.Network.Managers;
using Unity.Netcode;
using UnityEngine;
using UnityEngine.Serialization;
using Valari.Services;
using XRMultiplayer;

namespace NerdWar.Network.Manager
{
    public class WeaponNetworkManager : NetworkBehaviour
    {
        public static WeaponNetworkManager Service
        {
            get
            {
                if (_ == null)
                    _ = Game.Services.Get<WeaponNetworkManager>();

                return _;
            }
        }

        private static WeaponNetworkManager _;
        
        [SerializeField] private List<WeaponController> _hostGunControllerList;
        [SerializeField] private List<WeaponController> _clientGunControllerList;
        [SerializeField] private List<BulletData> _bulletDataList = new List<BulletData>();

        private WordCheckerManager _wordCheckerManager => WordCheckerManager.Service;
        private WordSpawnerNetworkManager _wordSpawnerNetworkManager => WordSpawnerNetworkManager.Services;

        public void OnLoadDamageToWeapon(float damage)
        {
            if (IsServer)
            {
                OnLoadDamageToWeaponClientRpc(damage);
            }
            else
            {
                OnLoadDamageToWeaponServerRpc(damage);
            }
        }

        [ServerRpc(RequireOwnership = false)]
        private void OnLoadDamageToWeaponServerRpc(float damage , ServerRpcParams serverRpcParams = default)
        {
            OnLoadDamageToWeaponClientRpc(damage, false);
        }

        [ClientRpc]
        private void OnLoadDamageToWeaponClientRpc(float damage, bool isHost = true)
        {
            if (isHost)
            {
                foreach (var gunController in _hostGunControllerList)
                    gunController.LoadGun(damage);
            }
            else
            {
                foreach (var gunController in _clientGunControllerList)
                    gunController.LoadGun(damage);
            }
        }

        public void OnPlayerShoots(BulletNetworkData networkData ,Vector3 spawnPoint, Quaternion rotation)
        {
            if (IsServer)
            {
                OnPlayerShootClientRpc(networkData, spawnPoint, rotation);
            }
            else
            {
                OnRequestToShootBulletServerRpc(networkData, spawnPoint, rotation);
            }
            
            _wordCheckerManager.UseLoadedWord();
        }

        [ServerRpc(RequireOwnership = false)]
        private void OnRequestToShootBulletServerRpc(BulletNetworkData networkData ,Vector3 spawnPoint, Quaternion rotation)
        {
            OnPlayerShootClientRpc(networkData, spawnPoint, rotation, false);
        }

        [ClientRpc]
        private void OnPlayerShootClientRpc(BulletNetworkData data, Vector3 spawnPoint, Quaternion rotation, bool isHost = true)
        {
            var bulletData = _bulletDataList.Find(x => x.BulletType == data.BulletType);
            var bullet = Instantiate(bulletData.Prefab,spawnPoint, rotation);
            bullet.SetBulletDamage(data.Damage);
            
            _wordSpawnerNetworkManager.UpdateWordList(isHost);
            if (isHost)
            {
                foreach (var gunController in _hostGunControllerList)
                    gunController.ResetGun();
            }
            else
            {
                foreach (WeaponController gunController in _clientGunControllerList)
                    gunController.ResetGun();
            }
        }
    }
}