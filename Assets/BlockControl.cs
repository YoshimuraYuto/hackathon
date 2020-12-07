using UnityEngine;
using System.Collections;

public class BlockControl : MonoBehaviour {

	public bool collisionState = false;
	private Rigidbody rb;
	public string collisionObjectName = "";

	void Start() {
		rb = this.gameObject.GetComponent<Rigidbody>();
	}
	void Update() {
	}

	private void OnCollisionEnter(Collision collision) {
		if (collisionState == false
			&& collision.gameObject.name != "Plane" && collision.gameObject.name != "OVRPlayerController") {
			collisionState = true;
			rb.isKinematic = true;
		}
		if (collision.gameObject.name == "Plane" || collision.gameObject.name == "OVRPlayerController") {
			collisionState = false;
			rb.isKinematic = false;
		}
		collisionObjectName = collision.gameObject.name;
	}

}