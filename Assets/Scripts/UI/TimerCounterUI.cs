using System;
using NerdWar.Manager;
using TMPro;
using UnityEngine;
using Utilities;

public class TimerCounterUI : MonoBehaviour
{
    [SerializeField] private TMP_Text _timerText;
    private Timer _timer = null;

    private void Update()
    {
        if (_timer != null)
            _timer.Tick(Time.deltaTime);
    }

    public void SetTimer(Timer timer)
    {
        if (timer == null)
        {
            _timer = null;
            _timerText.text = "00";
            return;
        }
        
        _timer = timer;
        _timer.OnSecondsUpdatedEvent += UpdateTimerUI;
    }

    private void UpdateTimerUI(float time)
    {
        string timerOutput = time.ToString("00");
        if (time > 60)
        {
            float minutes = Mathf.FloorToInt(time / 60f);
            float seconds = Mathf.FloorToInt(time - minutes * 60f);
            timerOutput = $"{minutes:00}:{seconds:00}";
        }

        _timerText.text = timerOutput;
    }
}
