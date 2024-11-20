using System.Collections.Generic;
using TMPro;
using UnityEngine;

namespace NerdWar.UI
{
    public class DamageCounterUI : MonoBehaviour
    {
        [SerializeField] private MeshRenderer _bulletHolder;
        [SerializeField] private TMP_Text _counterText;
        [SerializeField] private List<Material> _forceField;

        public void UpdateBulletCounter(int counter)
        {
            Material activeMaterial = counter > 0 ? _forceField[0] : _forceField[1];
            _bulletHolder.material = activeMaterial;
            _counterText.text = counter.ToString();
        }
    }
}