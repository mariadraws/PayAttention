using UnityEngine;

public class ShowTimer : MonoBehaviour {
  public GUIStyle style;
  void OnGUI () {
    GUI.Label(new Rect(10, 10, 100, 20), Time.time.ToString(),style);
  }
}
