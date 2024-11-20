using System.Collections.Generic;
using System.IO;
using NerdWar.Data;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using UnityEngine;

namespace NerdWar.SO
{
    [CreateAssetMenu(fileName = "RoundWordDataListSO", menuName = "RoundWordDataListSO", order = 0)]
    public class RoundWordDataListSO : ScriptableObject
    {
        [SerializeField] private List<RoundWordDataSO> _roundWordList = new List<RoundWordDataSO>();

        // This must be a button
        public void SerializeRoundWordList()
        {
            foreach (RoundWordDataSO roundWordDataSo in _roundWordList)
            {
                roundWordDataSo.SerializeWordList();
            }
        }

        public RoundWordData GetRoundWordDataSOByIndex(int index)
        {
            if (index > _roundWordList.Count - 1)
                return null;
            
            return _roundWordList[index].Data;
        }
    }
}