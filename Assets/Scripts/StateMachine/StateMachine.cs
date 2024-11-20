namespace Valari.StateMachine
{
    public class StateMachine
    {
        private IState _previousState;

        public IState CurrentlyRunningState { get; private set; }

        /// <summary>
        /// Call to change states
        /// </summary>
        /// <param name="newState"></param>
        public void ChangeState(IState newState)
        {
            if (CurrentlyRunningState != null)
            {
                CurrentlyRunningState.Exit();
                _previousState = CurrentlyRunningState;
            }

            CurrentlyRunningState = newState;
            CurrentlyRunningState.Enter();
        }

        /// <summary>
        /// Call in Update method to execute state
        /// </summary>
        public void ExecuteStateUpdate()
        {
            CurrentlyRunningState?.Execute();
        }

        /// <summary>
        /// Switch to previous state
        /// </summary>
        public void SwitchToPreviousState()
        {
            CurrentlyRunningState.Exit();
            CurrentlyRunningState = _previousState;
            CurrentlyRunningState.Enter();
        }

        /// <summary>
        /// Get current state name
        /// </summary>
        /// <returns></returns>
        public string GetCurrentStateName()
        {
            return CurrentlyRunningState.ToString();
        }
    }
}