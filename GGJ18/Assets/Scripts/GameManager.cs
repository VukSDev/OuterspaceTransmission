using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GameManager : MonoBehaviour {

    public static GameManager Instance { set; get; }

    int scoreAmount;

    public Text score;

    public GameObject satellite, buttonOne, buttonTwo, buttonThree, screen, panel, numberPlane;

    public GameObject[] contact;

    bool oneState, twoState, threeState;

    // 0 and 1 in array are 0 1 textures, while 2-7 are screen images
    public Texture[] textures;

    public Texture[] numbers;

    public int contactNum;

	// Use this for initialization
	void Start () {
        Instance = this;
        scoreAmount = 0;
	}
	
	// Update is called once per frame
	void Update () {

        if(scoreAmount == 10)
        {
            score.text = "You have received everything you need to know...";
        }
        else
        {
            score.text = scoreAmount.ToString() + " / 10";
        }

        if (Input.GetMouseButtonDown(0))
        {
            ButtonPressed();
        }
        SetScreen();
        SetNumber();
	}
    
    void ButtonPressed()
    {

        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);

        RaycastHit hit;

        if (Physics.Raycast(ray, out hit))
        {
            // Change button 1
            if (hit.transform.gameObject == buttonOne)
            {
                SoundManager.Instance.buttonSrc.PlayOneShot(SoundManager.Instance.buttonClip[Random.Range(0, 1)]);
                buttonOne.GetComponent<Animator>().SetTrigger("Pressed");
                if (buttonOne.GetComponent<MeshRenderer>().material.GetTexture("_Texture") == textures[0])
                {
                    buttonOne.GetComponent<MeshRenderer>().material.SetTexture("_Texture", textures[1]);
                    oneState = true;
                }

                else if (buttonOne.GetComponent<MeshRenderer>().material.GetTexture("_Texture") == textures[1])
                {
                    buttonOne.GetComponent<MeshRenderer>().material.SetTexture("_Texture", textures[0]);
                    oneState = false;
                }
            }

            // Change button 2
            if (hit.transform.gameObject == buttonTwo)
            {
                SoundManager.Instance.buttonSrc.PlayOneShot(SoundManager.Instance.buttonClip[Random.Range(0, 1)]);
                buttonTwo.GetComponent<Animator>().SetTrigger("Pressed");
                if (buttonTwo.GetComponent<MeshRenderer>().material.GetTexture("_Texture") == textures[0])
                {
                    buttonTwo.GetComponent<MeshRenderer>().material.SetTexture("_Texture", textures[1]);
                    twoState = true;
                }

                else if (buttonTwo.GetComponent<MeshRenderer>().material.GetTexture("_Texture") == textures[1])
                {
                    buttonTwo.GetComponent<MeshRenderer>().material.SetTexture("_Texture", textures[0]);
                    twoState = false;
                }
            }

            // Change button 3
            if (hit.transform.gameObject == buttonThree)
            {
                SoundManager.Instance.buttonSrc.PlayOneShot(SoundManager.Instance.buttonClip[Random.Range(0, 1)]);
                buttonThree.GetComponent<Animator>().SetTrigger("Pressed");
                if (buttonThree.GetComponent<MeshRenderer>().material.GetTexture("_Texture") == textures[0])
                {
                    buttonThree.GetComponent<MeshRenderer>().material.SetTexture("_Texture", textures[1]);
                    threeState = true;
                }

                else if (buttonThree.GetComponent<MeshRenderer>().material.GetTexture("_Texture") == textures[1])
                {
                    buttonThree.GetComponent<MeshRenderer>().material.SetTexture("_Texture", textures[0]);
                    threeState = false;
                }
            }
        }
    }

    void SetScreen()
    {
        // Correct 0
        if(!oneState && !twoState && !threeState && contactNum == 0)
        {
            screen.GetComponent<MeshRenderer>().material.SetTexture("_Texture", textures[2]);
            screen.GetComponent<MeshRenderer>().material.SetFloat("_PanX", 0);
            screen.GetComponent<MeshRenderer>().material.SetFloat("_PanY", 0f);
            SoundManager.Instance.screenSrc.PlayOneShot(SoundManager.Instance.screenClip[Random.Range(0, 7)]);
        }
        // Correct 1
        else if (!oneState && !twoState && threeState && contactNum == 1)
        {
            screen.GetComponent<MeshRenderer>().material.SetTexture("_Texture", textures[3]);
            screen.GetComponent<MeshRenderer>().material.SetFloat("_PanX", 0);
            screen.GetComponent<MeshRenderer>().material.SetFloat("_PanY", 0f);
            SoundManager.Instance.screenSrc.PlayOneShot(SoundManager.Instance.screenClip[Random.Range(0, 7)]);
        }
        // Correct 2
        else if (!oneState && twoState && !threeState && contactNum == 2)
        {
            screen.GetComponent<MeshRenderer>().material.SetTexture("_Texture", textures[4]);
            screen.GetComponent<MeshRenderer>().material.SetFloat("_PanX", 0);
            screen.GetComponent<MeshRenderer>().material.SetFloat("_PanY", 0f);
            SoundManager.Instance.screenSrc.PlayOneShot(SoundManager.Instance.screenClip[Random.Range(0, 7)]);
        }
        // Correct 3
        else if (!oneState && twoState && threeState && contactNum == 3)
        {
            screen.GetComponent<MeshRenderer>().material.SetTexture("_Texture", textures[5]);
            screen.GetComponent<MeshRenderer>().material.SetFloat("_PanX", 0);
            screen.GetComponent<MeshRenderer>().material.SetFloat("_PanY", 0f);
            SoundManager.Instance.screenSrc.PlayOneShot(SoundManager.Instance.screenClip[Random.Range(0, 7)]);
        }
        // Correct 4
        else if (oneState && !twoState && !threeState && contactNum == 4)
        {
            screen.GetComponent<MeshRenderer>().material.SetTexture("_Texture", textures[6]);
            screen.GetComponent<MeshRenderer>().material.SetFloat("_PanX", 0);
            screen.GetComponent<MeshRenderer>().material.SetFloat("_PanY", 0f);
            SoundManager.Instance.screenSrc.PlayOneShot(SoundManager.Instance.screenClip[Random.Range(0, 7)]);
        }
        // Correct 5
        else if (oneState && !twoState && threeState && contactNum == 5)
        {
            screen.GetComponent<MeshRenderer>().material.SetTexture("_Texture", textures[7]);
            screen.GetComponent<MeshRenderer>().material.SetFloat("_PanX", 0);
            screen.GetComponent<MeshRenderer>().material.SetFloat("_PanY", 0f);
            SoundManager.Instance.screenSrc.PlayOneShot(SoundManager.Instance.screenClip[Random.Range(0, 7)]);
        }
        // Correct 6
        else if (oneState && twoState && !threeState && contactNum == 6)
        {
            screen.GetComponent<MeshRenderer>().material.SetTexture("_Texture", textures[8]);
            screen.GetComponent<MeshRenderer>().material.SetFloat("_PanX", 0);
            screen.GetComponent<MeshRenderer>().material.SetFloat("_PanY", 0f);
            SoundManager.Instance.screenSrc.PlayOneShot(SoundManager.Instance.screenClip[Random.Range(0, 7)]);
        }
        // Correct 7
        else if (oneState && twoState && threeState && contactNum == 7)
        {
            screen.GetComponent<MeshRenderer>().material.SetTexture("_Texture", textures[9]);
            screen.GetComponent<MeshRenderer>().material.SetFloat("_PanX", 0);
            screen.GetComponent<MeshRenderer>().material.SetFloat("_PanY", 0f);
            SoundManager.Instance.screenSrc.PlayOneShot(SoundManager.Instance.screenClip[Random.Range(0, 7)]);
        }
        else
        {
            screen.GetComponent<MeshRenderer>().material.SetTexture("_Texture", textures[10]);
            screen.GetComponent<MeshRenderer>().material.SetFloat("_PanX", 5000f);
            screen.GetComponent<MeshRenderer>().material.SetFloat("_PanY", 0.5f);
            SoundManager.Instance.screenSrc.clip = SoundManager.Instance.screenClip[8];
        }
    }

    void SetNumber()
    {
        switch (contactNum)
        {
            case 0:
                numberPlane.GetComponent<MeshRenderer>().material.mainTexture = numbers[0];
                break;
            case 1:
                numberPlane.GetComponent<MeshRenderer>().material.mainTexture = numbers[1];
                break;
            case 2:
                numberPlane.GetComponent<MeshRenderer>().material.mainTexture = numbers[2];
                break;
            case 3:
                numberPlane.GetComponent<MeshRenderer>().material.mainTexture = numbers[3];
                break;
            case 4:
                numberPlane.GetComponent<MeshRenderer>().material.mainTexture = numbers[4];
                break;
            case 5:
                numberPlane.GetComponent<MeshRenderer>().material.mainTexture = numbers[5];
                break;
            case 6:
                numberPlane.GetComponent<MeshRenderer>().material.mainTexture = numbers[6];
                break;
            case 7:
                numberPlane.GetComponent<MeshRenderer>().material.mainTexture = numbers[7];
                break;
        }
    }
}
