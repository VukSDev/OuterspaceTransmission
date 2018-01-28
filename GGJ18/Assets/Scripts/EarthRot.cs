using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EarthRot : MonoBehaviour {

    public float speed;

	// Use this for initialization
	void Start () {
        speed = 0.2f;
	}
	
	// Update is called once per frame
	void Update () {
        transform.Rotate(0, speed, 0);
	}
}
