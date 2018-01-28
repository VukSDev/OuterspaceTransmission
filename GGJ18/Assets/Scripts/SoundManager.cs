using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundManager : MonoBehaviour {

    public static SoundManager Instance { set; get; }

    public AudioSource musicSrc, screenSrc, buttonSrc;

    public AudioClip[] screenClip, buttonClip;

    void Awake()
    {
        Instance = this;

        DontDestroyOnLoad(this);

        if (FindObjectsOfType(GetType()).Length > 1)
        {
            Destroy(gameObject);
        }
    }
}
