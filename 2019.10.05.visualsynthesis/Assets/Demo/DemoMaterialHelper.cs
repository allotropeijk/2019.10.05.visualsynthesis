using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DemoMaterialHelper : MonoBehaviour
{
    [SerializeField]
    Material demoMaterial;

    [SerializeField]
    float scale = 10.0f;

    // Update is called once per frame
    void Update()
    {
        demoMaterial.SetFloat("_TimeScale", scale);
    }

    public void SetScale(float value)
    {
        scale = Mathf.Lerp(1.0f, 1000, value);
    }
}
