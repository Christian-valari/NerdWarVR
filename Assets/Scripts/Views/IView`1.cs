using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Valari.Views
{
    public interface IView<T> : IView
    {
        void Initialize(T data);
    }
}
