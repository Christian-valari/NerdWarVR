using System;
using System.Numerics;
using NerdWar.Controllers;
using UnityEngine;

namespace NerdWar.Data
{
    [Serializable]
    public class BulletData
    {
        public BulletType BulletType;
        public BulletController Prefab;
    }
}