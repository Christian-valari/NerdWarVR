using System.Collections.Generic;
using UnityEngine;
using Valari.Utilities;

namespace NerdWar.Utilities
{
    public class LetterSpawnPointHolder : MonoBehaviour
    {
        [SerializeField] private List<Transform> _letterSpawnPointList = new List<Transform>();

        public List<Transform> GetAvailableSpawnPoint(List<int> idList)
        {
            List<Transform> spawnPoints = new List<Transform>();
            for (var i = 0; i < _letterSpawnPointList.Count; i++)
            {
                bool isSelectedId = idList.Exists(x => x == i);
                if (!isSelectedId && _letterSpawnPointList[i].childCount <= 0)
                    spawnPoints.Add(_letterSpawnPointList[i]);
            }

            return spawnPoints;
        }

        public void DeleteChild()
        {
            foreach (Transform letterSpawnPoint in _letterSpawnPointList)
            {
                letterSpawnPoint.DeleteChildren();
            }
        }
    }
}