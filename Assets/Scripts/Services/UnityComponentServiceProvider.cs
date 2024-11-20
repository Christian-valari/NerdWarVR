using UnityEngine;

namespace Valari.Services
{
    public sealed class UnityComponentServiceProvider<T> : IServiceProvider where T : Object
    {
        private T _instance;
    
        public object GetService()
        {
            if (_instance == null)
                _instance = GameObject.FindFirstObjectByType<T>();
            return _instance;
        }
    }
}