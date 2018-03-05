using UnityEngine;
using System.Collections;

public class CameraBackgroundChanger : MonoBehaviour {
  public Color startColor;
  public Color endColor;
  private Color currentColor;
  public float delay = 0f;
  public float speed = 0.1f;
  private Camera cam;

  private void Start () {
    cam = gameObject.GetComponent<Camera>();
    if (cam != null) StartCoroutine(Fade());
  }

  private IEnumerator Fade () {
    cam.backgroundColor = startColor;
    yield return new WaitForSeconds(delay);
    float t = 0f;
    while (t < 1f) {
      t += Time.deltaTime * speed;
      currentColor = Color.Lerp(startColor, endColor, t);
      cam.backgroundColor = currentColor;
      yield return null;
    }
  }
}
