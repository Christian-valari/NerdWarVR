using Unity.Netcode;
using UnityEngine;
using UnityEngine.Serialization;
using UnityEngine.XR.Interaction.Toolkit.Locomotion.Teleportation;

namespace XRMultiplayer
{
    public class CharacterResetter : MonoBehaviour
    {
        [SerializeField] Vector2 m_MinMaxHeight = new Vector2(-2.5f, 25.0f);
        [SerializeField] float m_ResetDistance = 75.0f;
        [SerializeField] Vector3 offlinePosition = new Vector3(0, .5f, -12.0f);
        [SerializeField] Vector3 player1OnlinePosition = new Vector3(0, .15f, 0);
        [SerializeField] Vector3 player2OnlinePosition = new Vector3(0, .15f, 0);
        TeleportationProvider m_TeleportationProvider;
        Vector3 m_ResetPosition;
        private void Start()
        {
            XRINetworkGameManager.Connected.Subscribe(UpdateResetPosition);
            m_TeleportationProvider = GetComponentInChildren<TeleportationProvider>();

            m_ResetPosition = offlinePosition;
            ResetPlayer();
        }

        void UpdateResetPosition(bool connected)
        {
            Debug.Log($"#{GetType().Name}# Is Connected -> {connected}");
            if (connected)
            {
                if (NetworkManager.Singleton.IsHost)
                {
                    m_ResetPosition = player1OnlinePosition;
                    ResetPlayer(player1OnlinePosition);
                }
                else
                {
                    m_ResetPosition = player2OnlinePosition;
                    ResetPlayer(player2OnlinePosition, new Quaternion(0, 180,0,0));
                }
            }
            else
            {
                m_ResetPosition = offlinePosition;
                ResetPlayer(player2OnlinePosition, new Quaternion(0, 0,0,0));
                ResetPlayer();
            }
        }

        // Update is called once per frame
        void Update()
        {
            if (transform.position.y < m_MinMaxHeight.x)
            {
                ResetPlayer();
            }
            else if (transform.position.y > m_MinMaxHeight.y)
            {
                ResetPlayer();
            }
            if (Mathf.Abs(transform.position.x) > m_ResetDistance || Mathf.Abs(transform.position.z) > m_ResetDistance)
            {
                ResetPlayer();
            }
        }

        public void ResetPlayer()
        {
            ResetPlayer(m_ResetPosition);
        }

        void ResetPlayer(Vector3 destination)
        {
            Debug.Log($"#{GetType().Name}# Destination -> {destination}");
            TeleportRequest teleportRequest = new()
            {
                destinationPosition = destination,
                destinationRotation = Quaternion.identity
            };

            if (!m_TeleportationProvider.QueueTeleportRequest(teleportRequest))
            {
                Utils.LogWarning("Failed to queue teleport request");
            }
        }
        
        void ResetPlayer(Vector3 destination, Quaternion rotation)
        {
            Debug.Log($"#{GetType().Name}# Destination -> {destination} | {rotation}");
            TeleportRequest teleportRequest = new()
            {
                destinationPosition = destination,
                destinationRotation = Quaternion.identity
            };

            transform.rotation = rotation;

            if (!m_TeleportationProvider.QueueTeleportRequest(teleportRequest))
            {
                Utils.LogWarning("Failed to queue teleport request");
            }
        }

        [ContextMenu("Set Player To Online Position")]
        void SetPlayerToOnlinePosition()
        {
            ResetPlayer(player1OnlinePosition);
        }

        [ContextMenu("Set Player To Offline Position")]
        void SetPlayerToOfflinePosition()
        {
            ResetPlayer(offlinePosition);
        }
    }
}
