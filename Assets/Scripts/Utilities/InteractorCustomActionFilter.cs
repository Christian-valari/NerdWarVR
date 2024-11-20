using NerdWar.Controllers;
using NerdWar.Network.Controller;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.XR.Interaction.Toolkit.Interactors;

[RequireComponent(typeof(XRRayInteractor))]
public class InteractorCustomActionFilter : MonoBehaviour
{
    [SerializeField] private LayerMask _allowHoverActivateMask;
    private XRRayInteractor _rayInteractor;

    private void Awake()
    {
        _rayInteractor = GetComponent<XRRayInteractor>();
    }

    public void OnHoverEnter()
    {
        if(_rayInteractor.TryGetCurrentRaycast(out RaycastHit? hit, out int index, out RaycastResult? uiResult, out int uiRaycastHitIndex, out bool isUIHitClosest))
        {
            if (hit.HasValue)
            {
                var hitObject = hit.Value.collider.gameObject;
                bool isLetterLayer = hitObject.layer == LayerMask.NameToLayer("Letters");
                if (isLetterLayer)
                {
                    if (hitObject.TryGetComponent(out LetterNetworkController controller))
                    {
                        _rayInteractor.allowHoveredActivate = !controller.IsSelected;
                    }
                    
                    if (hitObject.TryGetComponent(out LetterController offlineController))
                    {
                        _rayInteractor.allowHoveredActivate = !offlineController.IsSelected;
                    }
                }
                else
                {
                    _rayInteractor.allowHoveredActivate = false;
                }
            }
        }
    }
}
