using UnityEngine;

public class ScaleAnimation : MonoBehaviour
{
    public float scaleDuration = 1f; // Time to scale up and down
    public float minScale = 0.8f; // Minimum scale factor
    public float maxScale = 1.2f; // Maximum scale factor

    private Vector3 initialScale;
    private bool isScalingUp = true;

    void Start()
    {
        initialScale = transform.localScale;
    }

    void Update()
    {
        ScaleText();
    }

    private void ScaleText()
    {
        float scaleSpeed = (maxScale - minScale) / scaleDuration;
        float scaleChange = scaleSpeed * Time.deltaTime;

        if (isScalingUp)
        {
            transform.localScale += new Vector3(scaleChange, scaleChange, scaleChange);

            // If max scale reached, start scaling down
            if (transform.localScale.x >= maxScale)
            {
                isScalingUp = false;
            }
        }
        else
        {
            transform.localScale -= new Vector3(scaleChange, scaleChange, scaleChange);

            // If min scale reached, start scaling up
            if (transform.localScale.x <= minScale)
            {
                isScalingUp = true;
            }
        }
    }
}
