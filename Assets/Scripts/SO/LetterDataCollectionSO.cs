using System.Collections.Generic;
using NerdWar.Data;
using NerdWar.Enum;
using UnityEngine;

namespace NerdWar.SO
{
    [CreateAssetMenu(menuName = "LetterDataCollectionSO", fileName = "LetterDataCollectionSO")]
    public class LetterDataCollectionSO : ScriptableObject
    {
        [SerializeField] private List<LetterData> _letterDataList = new List<LetterData>();

        public List<LetterData> GetLetterDataList()
        {
            return _letterDataList;
        }

        public void AddRandomizeLetterEffect(int numberOfLetters)
        {
            var effectArray = System.Enum.GetValues(typeof(LetterEffect));
        }
    }
}