//MADE BY MINOR FACTION FOR MARIA KOZAK

using UnityEngine;
using System.Collections;

public class ObjectBehaviousController : MonoBehaviour {
  [Tooltip("Link the main scene camera here.")]
  public Transform mainCamera;

  [Space]
  public bool rotate = false;
  public Vector3 rotateAxis = new Vector3(1f, 0f, 0f);
  public float rotateSpeed = 1f;

  [Space]
  public bool scale = false;
  public float scaleStart = 1f;
  public float scaleEnd = 2f;
  public float scaleSpeed = 1f;

  [Space]
  public bool bounce = false;
  public float bounceMagnitude = 1f;
  public float bounceSpeed = 1f;

  [Space]
  [Header("*** Bounce overrider moving ***")]
  public bool moveTowardsPlayer = false;
  public float moveSpeed = 1f;
  public float minDistance = 0.5f;
  private float currentDistance;
  [Tooltip("Will show the current distance in Unity's log.")]
  public bool showDistanceInLog = false;

  [Space]
  public bool playSound = false;
  public AudioClip soundToPlay;
  public float volume = 1f;
  private AudioSource source;

  [Space]
  public bool appearBehindPlayer = false;
  public float degreeThresholdToAppear = 100f;
  private float currentAngle;
  [Tooltip("Will show the current angle in Unity's log.")]
  public bool showAngleInLog = false;
  [Tooltip("How long does it take before another object can appear behind a player")]
  public float globalAppearanceInterval = 5f;
  private static float timeStamp;

  [Space]
  public bool appearOnTimer = false;
  [Tooltip("IN SECONDS")]
  public float appearTimer = 1f;
  private bool hasAppeared = false;

  private void Start () {
    MeshRenderer[] mrs = transform.GetComponentsInChildren<MeshRenderer>();
    foreach (MeshRenderer mr in mrs) mr.enabled = false;
    if (appearOnTimer) StartCoroutine(ActivateWithDelay());
    if (appearBehindPlayer) StartCoroutine(WatchForPlayersBack());
  }

  private void AppearAndActivate () {
    if (hasAppeared) return; //If it has already appeared don't do the rest.
    MeshRenderer[] mrs = transform.GetComponentsInChildren<MeshRenderer>();
    foreach (MeshRenderer mr in mrs) mr.enabled = true;
    if (rotate) StartCoroutine(Rotate());
    if (scale) StartCoroutine(Scale());
    if (bounce) StartCoroutine(Bounce());
    if (moveTowardsPlayer) StartCoroutine(MoveTowardsPlayer());
    if (playSound) {
      AddAudioSource();
      source.PlayOneShot(soundToPlay, volume);
    }
    hasAppeared = true;
  }

  private IEnumerator Rotate () {
    while (rotate == true) {
      float t = rotateSpeed * Time.deltaTime;
      transform.Rotate(rotateAxis, t);
      yield return null;
    }
  }

  private IEnumerator Scale () {
    float objScale = scaleStart;
    while (objScale < scaleEnd) {
      objScale += scaleSpeed + Time.deltaTime;
      transform.localScale = new Vector3(objScale, objScale, objScale);
      yield return null;
    }
  }

  private IEnumerator Bounce () {
    Vector3 startPos = transform.position;
    while (bounce) {
      float t = Time.timeSinceLevelLoad / bounceSpeed;
      float distance = bounceMagnitude * Mathf.Sin(t);
      transform.position = startPos + Vector3.up * distance;
      yield return null;
    }
  }

  private void AddAudioSource () {
    source = gameObject.AddComponent<AudioSource>();
    source.playOnAwake = false;
    source.loop = true;
    source.spatialBlend = 1f;
  }

  private IEnumerator ActivateWithDelay () {
    yield return new WaitForSeconds(appearTimer);
    AppearAndActivate();
  }

  private IEnumerator MoveTowardsPlayer () {
    if (mainCamera == null) {
      Debug.Log(gameObject.name + " doesn't have the Main Camera assigned. Maria has to assign a Main Camera to " + gameObject.name);
      yield break;
    }
    currentDistance = Vector3.Distance(transform.position, mainCamera.position);
    while (currentDistance > minDistance) {
      currentDistance = Vector3.Distance(transform.position, mainCamera.position);
      if (showDistanceInLog) Debug.Log(currentDistance);
      transform.position = Vector3.MoveTowards(transform.position, mainCamera.position, moveSpeed * Time.deltaTime);
      yield return null;
    }
  }

  private IEnumerator WatchForPlayersBack () {
    while (!hasAppeared) {
      degreeThresholdToAppear = 100;
      currentAngle = Vector3.Angle(mainCamera.transform.forward, transform.position - mainCamera.transform.position);
      if (showAngleInLog) Debug.Log(currentAngle);
      if (currentAngle > degreeThresholdToAppear && Time.time > timeStamp) {
        timeStamp = Time.time + globalAppearanceInterval;
        AppearAndActivate();
        yield break;
      }
      yield return null;
    }
  }
}
