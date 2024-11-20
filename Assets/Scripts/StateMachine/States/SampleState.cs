using System;
using UnityEngine;
using Valari.StateMachine;

namespace Valari
{
    public class SampleState : IState
    {
        public Data Params;

        public struct Data
        {
            public MonoBehaviour MonoBehaviour { get; set; }
            public Action OnFinished { get; set; }
        }
        
        public void Enter()
        {
            Debug.Log("On Enter State!");
        }

        public void Execute()
        {
            
        }

        public void Exit()
        {
            Debug.Log("On Exit State");
        }
    }
}