using System;
using System.Collections.Generic;

namespace NerdWar.Data
{
    [Serializable]
    public class RoundWordData
    {
        public float RoundTimeLimit = 60;
        public float EndDamage = 1;
        public List<string> WordList = new List<string>();
        
        public List < string > GetShuffleWordList()
        {
            var list = WordList;
            for (int i = list.Count - 1; i > 0; i--)
            {
                int j = UnityEngine.Random.Range(0, i + 1);
                (list[i], list[j]) = (list[j], list[i]);
            }
            
            return list;
        }
        
        public List<char> GetShuffledLetters()
        {
            List<char> letterList = new List<char>();
            foreach (string word in WordList)
            {
                var letterArray = word.ToCharArray(); 
                foreach (var letter in letterArray)
                    letterList.Add(letter);
            }
            
            for (int i = letterList.Count - 1; i > 0; i--)
            {
                int j = UnityEngine.Random.Range(0, i + 1);
                (letterList[i], letterList[j]) = (letterList[j], letterList[i]);
            }
            
            return letterList;
        }
    }
}