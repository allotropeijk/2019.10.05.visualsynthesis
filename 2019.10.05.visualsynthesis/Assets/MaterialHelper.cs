using UnityEngine;

public class MaterialHelper : MonoBehaviour
{
    [SerializeField]
    private Material grayscaleMaterial;

    private bool enable = true;
    private float percentage = 1.0f;
    private bool flip = false;

    public void ToggleEnabled()
    {
        enable = !enable;
    }

    public void SetPercentage(float value)
    {
        percentage = value;
    }

    public void ToggleFlipped()
    {
        flip = !flip;
    }

    private void Update()
    {
        grayscaleMaterial.SetFloat("_Enabled", enable ? 1.0f : 0.0f);
        grayscaleMaterial.SetFloat("_Perc", percentage);
        grayscaleMaterial.SetFloat("_Flip", flip ? 1.0f : 0.0f);
    }
}
