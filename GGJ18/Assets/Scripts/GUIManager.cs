using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GUIManager : MonoBehaviour {

    public GameObject darkFader;
    public GameObject tutorialPanel;
    public GameObject mainPanel;

    float delay = 0.5f;

    public void Awake()
    {
        DontDestroyOnLoad(this);

        if (FindObjectsOfType(GetType()).Length > 1)
        {
            Destroy(gameObject);
        }
    }

    public void StartGame()
    {
        darkFader.GetComponent<Animator>().SetTrigger("FadeOut");
        Invoke("LoadLevel", delay);
    }

    // Focus, twisted things ahead
    public void TutorialOn()
    {
        mainPanel.GetComponent<Animator>().SetTrigger("ExitMain");
        Invoke("MainOff", delay);
    }

    public void TutorialOff()
    {
        tutorialPanel.GetComponent<Animator>().SetTrigger("ExitTutorial");
        Invoke("MainOn", delay);
    }

    void MainOn()
    {
        mainPanel.GetComponent<Animator>().SetTrigger("EnterMain");
    }

    void MainOff()
    {
        tutorialPanel.GetComponent<Animator>().SetTrigger("EnterTutorial");
    }

    void LoadLevel()
    {
        SceneManager.LoadScene("L0");
    }
}
