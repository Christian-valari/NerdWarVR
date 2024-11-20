using System;
using Unity.Netcode;
using UnityEngine;

namespace NerdWar.Data
{
    public struct BulletNetworkData : INetworkSerializable, IEquatable<BulletNetworkData>
    {
        public float Damage;
        public BulletType BulletType;
        
        public void NetworkSerialize<T>(BufferSerializer<T> serializer) where T : IReaderWriter
        {
            serializer.SerializeValue(ref Damage);
            serializer.SerializeValue(ref BulletType);
        }

        public bool Equals(BulletNetworkData other)
        {
            return Damage == other.Damage && BulletType == other.BulletType;
        }
    }
}