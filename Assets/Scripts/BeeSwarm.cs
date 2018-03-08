using System.Collections;
using UnityEngine;

public class BeeSwarm : MonoBehaviour {
  public GameObject beePrefab;
  public int numberOfBees = 20;
  public float minHeight = 0f;
  public float maxHeight = 10f;
  public float minRadius = 2f;
  public float maxRadius = 10f;
  public float minSpeed = 1f;
  public float maxSpeed = 10f;
  public float bankVariance = 5f;
  public float beeScale = 1f;

  private Transform[] beeOrigins;
  private float[] speeds;
  private static int spawnIndex = 0;

  private void Awake () {
    SetName();
  }

  private void Start () {
    SpawnSwarm();
  }

  private void Update () {
    RotateBeeOrigins();
  }

  private void SpawnSwarm () {
    CreateBeeArray();
    CreateSpeedsArray();
  }

  private void CreateBeeArray () {
    int index = 0;
    beeOrigins = new Transform[numberOfBees];
    for (int i = 0; i < numberOfBees; i++) {
      GameObject beePivot = new GameObject("BeePivot" + i);
      beePivot.transform.SetParent(gameObject.transform);
      beePivot.transform.localPosition = new Vector3(0f, Random.Range(minHeight, maxHeight), 0f);
      beePivot.transform.localEulerAngles = new Vector3(Random.Range(-bankVariance, bankVariance), Random.Range(0f, 360f), Random.Range(-bankVariance, bankVariance));
      GameObject objBee = Instantiate(beePrefab, beePivot.transform);
      objBee.name = "Bee" + index;
      objBee.transform.localScale = new Vector3(beeScale, beeScale, beeScale);
      beeOrigins[i] = beePivot.transform;
      objBee.transform.localPosition = new Vector3(Random.Range(minRadius, maxRadius), 0f, 0f);
    }
  }

  private void CreateSpeedsArray () {
    int index = 0;
    speeds = new float[numberOfBees];
    foreach (float speed in speeds) {
      speeds[index++] = Random.Range(minSpeed, maxSpeed);
    }
  }

  private void RotateBeeOrigins () {
    for (int i = 0; i < numberOfBees; i++) {
      beeOrigins[i].Rotate(Vector3.up * -speeds[i]);
    }
  }

  private void SetName () {
    gameObject.name = "BeeSwarm" + spawnIndex++;
  }
}
