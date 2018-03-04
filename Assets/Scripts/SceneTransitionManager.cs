using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class SceneTransitionManager : MonoBehaviour {
  public string sceneToLoad;
  public string cameraName = "Main Camera";
  public bool autoLoad = true;
  public float autoLoadDelay = 10f;
  private OVRScreenFade screenFader;
  private bool isLoading = false;

  private void Start () {
    screenFader = GameObject.Find(cameraName).GetComponent<OVRScreenFade>();
    if (autoLoad) StartCoroutine(AutoLoad());
  }

  private void Update () {
    if (Input.GetKeyDown("space") && !isLoading) StartCoroutine(FadeThenLoad());
  }

  private IEnumerator AutoLoad () {
    yield return new WaitForSeconds(autoLoadDelay);
    StartCoroutine(FadeThenLoad());
  }

  private IEnumerator FadeThenLoad () {
    isLoading = true;
    screenFader.CustomFade(0f, 1f);
    yield return new WaitForSeconds(2f);
    SceneManager.LoadSceneAsync(sceneToLoad);
  }
}