using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Valari.Views
{
    public class ViewCollection : ScriptableObject
    {
        [SerializeField] 
        private View _sampleView;
        
        public SampleView SampleView => (SampleView)_sampleView;
    }
}