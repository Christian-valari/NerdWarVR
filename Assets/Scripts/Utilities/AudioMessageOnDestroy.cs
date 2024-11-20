using System.Collections.Generic;
using UnityEngine;

namespace NerdWar.Utilities
{
    public class AudioMessageOnDestroy : MonoBehaviour
    {
        [SerializeField][Range(0, 100)] private float _percentAge;

        [SerializeField] private List<AudioClip> _audioClips;

        public AudioClip GetRandomAudioMessage()
        {
            var randomNum = Random.Range(0f, 100f);  
            if (randomNum <= _percentAge)
            {
                var randomClipIndex = Random.Range(0, _audioClips.Count);
                return _audioClips[randomClipIndex];
            }

            return null;
        }
    }
}
