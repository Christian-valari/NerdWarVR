using System.Collections.Generic;
using NerdWar.Controllers;
using NerdWar.Data;
using NerdWar.Network.Manager;
using NerdWar.Network.Managers;
using Unity.Netcode;
using UnityEngine;
using Valari.Services;

namespace NerdWar.Manager
{
    public class WeaponManager : MonoBehaviour
    {
        public static WeaponManager Service
        {
            get
            {
                if (_ == null)
                    _ = Game.Services.Get<WeaponManager>();

                return _;
            }
        }

        private static WeaponManager _;
        
        [SerializeField] private List<WeaponController> _hostGunControllerList;
        [SerializeField] private List<BulletData> _bulletDataList = new List<BulletData>();

        private WordCheckerManager _wordCheckerManager => WordCheckerManager.Service;
        private WordSpawnerManager _wordSpawnerManager => WordSpawnerManager.Services;

        public void OnLoadDamageToWeapon(float damage)
        {
            foreach (var gunController in _hostGunControllerList)
                gunController.LoadGun(damage);
        }

        public void OnPlayerShoots(BulletType bulletType, float damage ,Vector3 spawnPoint, Quaternion rotation)
        {
            var bulletData = _bulletDataList.Find(x => x.BulletType == bulletType);
            var bullet = Instantiate(bulletData.Prefab,spawnPoint, rotation);
            bullet.SetBulletDamage(damage);
            
            _wordSpawnerManager.UpdateWordList();
            
            foreach (var gunController in _hostGunControllerList)
                gunController.ResetGun();
            
            _wordCheckerManager.UseLoadedWord();
        }
    }
}