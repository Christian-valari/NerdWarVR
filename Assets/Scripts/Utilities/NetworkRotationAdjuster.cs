using System.Collections.Generic;
using Unity.Netcode;
using UnityEngine;
using XRMultiplayer;

namespace NerdWar.Utilities
{
    public class NetworkRotationAdjuster : MonoBehaviour
    {
        [SerializeField] private List<Vector3> _rotationAdjustments;

        private void Start()
        {
            XRINetworkGameManager.Connected.Subscribe(AdjustRotation);
        }

        private void AdjustRotation(bool connected)
        {
            Debug.Log($"#{GetType().Name}# Local Id -> {XRINetworkGameManager.LocalId}");

            var rotation = NetworkManager.Singleton.IsHost ? _rotationAdjustments[0] : _rotationAdjustments[1];
            transform.rotation = new Quaternion(rotation.x, rotation.y, rotation.z, 0);
        }
    }
}
