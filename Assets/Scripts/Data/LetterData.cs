using System;
using NerdWar.Enum;
using UnityEngine;

namespace NerdWar.Data
{
    [Serializable]
    public class LetterData
    {
        [field: SerializeField] public char Letter { get; set; }
        [field: SerializeField] public LetterStatus Status { get; set; }
        [field: SerializeField] public LetterEffect Effect { get; set; }
        
        public LetterData(){}

        public LetterData(char letter, LetterStatus status = LetterStatus.Deselected, LetterEffect effect = LetterEffect.Normal)
        {
            this.Letter = letter;
            this.Status = status;
            this.Effect = effect;
        }
    }
}