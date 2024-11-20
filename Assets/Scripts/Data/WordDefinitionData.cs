using System;
using UnityEngine.Serialization;

namespace NerdWar.Data
{
    [Serializable]
    public struct WordDefinitionData
    {
        public string Word;
        public int Value;

        public WordDefinitionData(string word, int value)
        {
            Word = word;
            Value = value;
        }
    }
}