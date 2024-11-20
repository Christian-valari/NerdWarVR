using System;
using System.Collections.Generic;
using System.Linq;
using NerdWar.Data;
using UnityEngine;
using UnityEngine.Serialization;

namespace NerdWar.SO
{
    [CreateAssetMenu(fileName = "RoundWordDataSO", menuName = "RoundWordDataSO", order = 0)]
    public class RoundWordDataSO: ScriptableObject
    {
        public RoundWordData Data;
        [Tooltip("The words must be separated with next line in order to make it into a list!")]
        [SerializeField][TextArea(10, 30)] private string _wordListSerialize;
        
        public void SerializeWordList()
        {
            if (_wordListSerialize.Length <= 0) return;
            
            var separatedWords = _wordListSerialize.Split("\n", StringSplitOptions.None);
            var wordList = new List<string>();
            
            foreach (var separatedWord in separatedWords)
                wordList.Add(separatedWord.ToUpper());
            
            Data.WordList = wordList;
        }
    }
}