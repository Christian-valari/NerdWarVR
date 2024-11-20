using System;

namespace Utilities
{
    public class Timer
    {
        private float _time = 0;

        public Action<float> OnSecondsUpdatedEvent { get; set; }
        public Action OnTimeEndedEvent { get; set; }

        public void Tick(float deltaTime)
        {
            _time -= deltaTime;
            OnSecondsUpdatedEvent?.Invoke(_time);
            
            if(_time <= 0)
                OnTimeEndedEvent?.Invoke();
        }
        
        public Timer(float duration)
        {
            _time = duration;
        }
    }
}