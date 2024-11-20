using System;
using NerdWar.SO;
using UnityEngine;

namespace Utilities
{
    public class SerializerHelper : MonoBehaviour
    {
        [SerializeField] private RoundWordDataListSO _roundWordDataList;
        [SerializeField] private WordDefinitionCollectionSO _wordDefinitionCollection;
        
        private void Start()
        {
            _roundWordDataList.SerializeRoundWordList();
            _wordDefinitionCollection.SerializeIntoWordList();
        }
    }
}