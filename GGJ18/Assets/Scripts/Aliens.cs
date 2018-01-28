using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Aliens : MonoBehaviour {

    public Transform spawner;

    public Collider trig;

    public float speed, heightRandom, depthRandom;
	
    void Start()
    {
        Spawn();
    }

	void Update () {
        Movement();
    }

    void Movement()
    {
        transform.Translate(speed * Time.deltaTime, 0, 0);
    }
    
    void Spawn()
    {
        transform.position = new Vector3(spawner.transform.position.x, spawner.transform.position.y + Random.Range(-heightRandom, heightRandom), spawner.transform.position.z + Random.Range(-depthRandom, depthRandom));
        speed = speed + 0.2f;
        GameManager.Instance.contactNum = Random.Range(0, 8);
    }

    void OnTriggerEnter(Collider trig)
    {
        if (trig.gameObject.tag == "Respawner")
        {
            Spawn();
        }
    }
}
