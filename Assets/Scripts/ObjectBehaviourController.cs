//MADE BY MINOR FACTION FOR MARIA KOZAK

using UnityEngine;
using System.Collections;

public class ObjectBehaviourController : MonoBehaviour {

  [Space]
  public string mainCameraName = "FirstPersonCharacter";
  private Transform mainCamera;

  [Space]
  [Tooltip("IN SECONDS")]
  public float appearTimer = 1f;

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
  [Header("*** Bounce overrides moving ***")]
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
  public bool loop = false;
  private AudioSource source;

  private void Start () {
    MeshRenderer[] mrs = transform.GetComponentsInChildren<MeshRenderer>();
    foreach (MeshRenderer mr in mrs) mr.enabled = false;
    StartCoroutine(ActivateWithDelay());
  }

  private void AppearAndActivate () {
    MeshRenderer[] mrs = transform.GetComponentsInChildren<MeshRenderer>();
    foreach (MeshRenderer mr in mrs) mr.enabled = true;
    if (rotate) StartCoroutine(Rotate());
    if (scale) StartCoroutine(Scale());
    if (bounce) StartCoroutine(Bounce());
    if (moveTowardsPlayer) StartCoroutine(MoveTowardsPlayer());
    if (playSound) AddAndPlaySource();
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

  private void Awake () {
    mainCamera = GameObject.Find(mainCameraName).transform;
  }

  private void AddAndPlaySource () {
    source = gameObject.AddComponent<AudioSource>();
    source.playOnAwake = false;
    source.loop = loop;
    source.spatialBlend = 1f;
    source.clip = soundToPlay;
    source.volume = volume;
    source.Play();
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
}
