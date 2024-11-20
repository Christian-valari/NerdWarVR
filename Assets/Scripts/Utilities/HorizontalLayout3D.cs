using NerdWar.Controllers;
using NerdWar.Manager;
using NerdWar.Network.Controller;
using NerdWar.SO;
using UnityEngine;

public class HorizontalLayout3D : MonoBehaviour
{
    [SerializeField] private float _spacing = 1.0f;
    [SerializeField] private bool _centerObjects = true;
    
    private GameSettingSO _gameSetting => GameSettingSO.Service;

    private void OnEnable()
    {
        WordCheckerManager.OnLetterSelectedEvent += UpdateLayout;
        GameManager.OnUpdateLettersLayoutEvent += UpdateLayout;
    }

    private void OnDisable()
    {
        WordCheckerManager.OnLetterSelectedEvent -= UpdateLayout;
        GameManager.OnUpdateLettersLayoutEvent -= UpdateLayout;
    }

    void ArrangeObjects()
    {
        // Get all child objects of this game object
        int childCount = transform.childCount;

        // Calculate the starting x position based on the number of objects and spacing
        float totalWidth = (childCount - 1) * _spacing;
        float startX = _centerObjects ? -totalWidth / 2 : 0;

        // Loop through each child object and arrange them
        for (int i = 0; i < childCount; i++)
        {
            Transform child = transform.GetChild(i);

            if (_gameSetting.IsSingePlayer)
            {
                if (child.TryGetComponent(out LetterController controller))
                {
                    // Set the position of the child object
                    Vector3 newPosition = new Vector3(startX + (i * _spacing), 0, 0);
                    controller.MoveLetterToNewPosition(newPosition);
                    child.localRotation = Quaternion.identity;
                }
            }
            else
            {
                if (child.TryGetComponent(out LetterNetworkController controller))
                {
                    // Set the position of the child object
                    Vector3 newPosition = new Vector3(startX + (i * _spacing), 0, 0);
                    controller.MoveLetterToNewPosition(newPosition);
                    child.localRotation = Quaternion.identity;
                }
            }
        }
    }

    // Call this method when you want to rearrange objects at runtime
    public void UpdateLayout()
    {
        ArrangeObjects();
    }
}
