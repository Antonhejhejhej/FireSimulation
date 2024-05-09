using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

public class LightFlicker : MonoBehaviour
{
    [SerializeField] private float strength;
    [SerializeField] private float flickerSpeed;
    [SerializeField] private float randomness;
    private Light pointLight;
    private float time;
    private float startIntensity;
    public float multiplier;

    private float newIntensity;
    
    void Start()
    {
        
        if (!TryGetComponent(out pointLight))
        {
            Destroy(gameObject);
        }

        startIntensity = pointLight.intensity;
        multiplier = 1.0f;
    }

    
    void Update()
    {
        time += Time.deltaTime * (1 - Random.Range(-randomness, randomness) * Mathf.PI);
        pointLight.intensity = (startIntensity + Mathf.Sin(time * flickerSpeed) * strength) * multiplier;

        if (time > 1000)
        {
            time = 0;
        }
    }

    private void FixedUpdate()
    {
        //float rnd = Random.
        
       // newIntensity = 
    }
}
