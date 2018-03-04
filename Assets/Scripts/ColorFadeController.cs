using UnityEngine;
using System.Collections;

public class ColorFadeController : MonoBehaviour {
  public Color startColor;
  public Color endColor;
  private Color currentColor;
  public float delay = 0f;
  public float speed = 0.1f;
  private Renderer mRenderer;

  private void Start () {
    mRenderer = gameObject.GetComponent<MeshRenderer>();
    if (mRenderer != null) StartCoroutine(Fade());
  }

  private IEnumerator Fade () {
    mRenderer.material.color = startColor;
    yield return new WaitForSeconds(delay);
    float t = 0f;
    while (t < 1f) {
      t += Time.deltaTime * speed;
      currentColor = Color.Lerp(startColor, endColor, t);
      mRenderer.material.color = currentColor;
      yield return null;
    }
  }
}
