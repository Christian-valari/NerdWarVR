using System;
using System.Collections.Generic;
using System.IO;
using NerdWar.Data;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using UnityEngine;

namespace NerdWar.SO
{
    [CreateAssetMenu(fileName = "WordDefinitionCollectionSO", menuName = "WordDefinitionCollectionSO", order = 0)]
    public class WordDefinitionCollectionSO : ScriptableObject
    {
        [SerializeField] private string _jsonFileName = "Dictionary";
        [SerializeField] private List<string> _wordList = new List<string>();
        [SerializeField] private List<WordDefinitionData> _wordDefinitionDataList = new List<WordDefinitionData>();

        public WordDefinitionData? GetWordDefinition(string word)
        {
            if (_wordDefinitionDataList.Exists(x => x.Word.Equals(word, StringComparison.OrdinalIgnoreCase)))
            {
                var wordDefinitionData = _wordDefinitionDataList.Find(x => x.Word.Equals(word, StringComparison.OrdinalIgnoreCase));
                return wordDefinitionData;
            }

            return null;
        }
        
        public void SerializeIntoWordList()
        {
            _wordList.Clear();
            _wordDefinitionDataList.Clear();
            
            var jsonString = File.ReadAllText($"{Application.dataPath}/{_jsonFileName}.json");

            try
            {
                var jsonData = JsonConvert.DeserializeObject<Dictionary<string, int>>(jsonString);
                // JArray jsonArray = JArray.Parse(jsonString);
                // List<WordDefinitionEntry> wordDefinitionEntries = new List<WordDefinitionEntry>();
                //
                // foreach (JObject obj in jsonArray)
                // {
                //     WordDefinitionEntry entry = new WordDefinitionEntry();
                //     entry.WordDefinition = new Dictionary<string, int>();
                //
                //     foreach (var pair in obj)
                //     {
                //         entry.WordDefinition.Add(pair.Key, Int32.Parse(pair.Value.ToString()));
                //         _wordList.Add(pair.Key);
                //     }
                //
                //     wordDefinitionEntries.Add(entry);
                // }


                // Access and print each word-definition pair
                foreach (var entry in jsonData)
                {
                    _wordDefinitionDataList.Add(new WordDefinitionData(entry.Key, entry.Value));
                }
            }
            catch (JsonException e)
            {
                Debug.LogError("JSON Parsing Error: " + e.Message);
            }
        }
        
    }
}