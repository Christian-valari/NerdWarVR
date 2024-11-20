using System;
using NerdWar.Manager;
using Unity.Netcode;
using Valari.Services;

namespace NerdWar.Network.Managers
{
    public class NetworkGameManager : NetworkBehaviour
    {
        public static NetworkGameManager Service
        {
            get
            {
                if (_ == null)
                    _ = Game.Services.Get<NetworkGameManager>();

                return _;
            }
        }

        private static NetworkGameManager _;
        private GameManager _gameManager => GameManager.Service;


        public override void OnNetworkSpawn()
        {
            base.OnNetworkSpawn();
            AudioManager.Service.PlayGameBGM();

            if (IsHost)
            {
                _gameManager.OnPlayerConnected(true);
            }
        }

        public override void OnNetworkDespawn()
        {
            base.OnNetworkDespawn();
            
            AudioManager.Service.StopBGM();
            _gameManager.OnPlayerConnected(false);
        }

        [ClientRpc]
        public void StartGameClientRpc()
        {
            _gameManager.StartGame();
        }

        [ServerRpc(RequireOwnership = false)]
        public void OnRequestRestartGameServerRpc()
        {
            OnRestartGameClientRpc();
        }

        [ClientRpc]
        private void OnRestartGameClientRpc()
        {
            _gameManager.RestartGame();
        }

        [ServerRpc(RequireOwnership = false)]
        public void OnRequestEndGameWithWinnerServerRpc(ulong winner)
        {
            EndGameWithWinnerClientRpc(winner);
        }

        [ClientRpc]
        private void EndGameWithWinnerClientRpc(ulong winner)
        {
            _gameManager.OnEndGame(winner);
        }
    }
}