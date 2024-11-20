using System.Collections.Generic;
using TMPro;
using UnityEngine;

[RequireComponent(typeof(TMP_Text))]
public class TextRandomizer : MonoBehaviour
{
    [SerializeField] private List<string> _textList = new List<string>();

    private TMP_Text _text;
    
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        _text = GetComponent<TMP_Text>();
        _text.text = _textList[0];
    }

    public void SetRandomText()
    {
        if (_text)
        {
            var randomIndex = Random.Range(0,_textList.Count);
            _text.text = _textList[randomIndex];
        }
    }
}
