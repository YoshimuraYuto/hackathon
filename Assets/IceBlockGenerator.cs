using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IceBlockGenerator : MonoBehaviour {
	
	[SerializeField]
	private GameObject blockObj;
	public float span = 3.0f; // ブロックの生成時間間隔
	private float currentTime = 0f;
	private int generateCount = 0;
	private static int GenerateCountMax = 50; //生成するブロックの最大値

	private void Update() {
		currentTime += Time.deltaTime;

		if (currentTime > span && generateCount<= GenerateCountMax) {
			Generate();
			currentTime = 0f;
			generateCount++;
		}
	}

	private void Generate() {
		// 10m?四方にランダム生成
		float val1 = Random.Range(-10.0f, 10.0f);
		float val2 = Random.Range(1.0f, 10.0f);
		float val3 = Random.Range(-10.0f, 10.0f);
		var obj = Instantiate(blockObj,
			this.gameObject.transform.position + new Vector3(val1, val2, val3),
			transform.rotation) as GameObject;
		//Find関数で検索しやすいよう、ブロック名をパターン化
		int ice_block_num = 0;
		string obj_name = "IceBlock_" + ice_block_num;
		var go_state = GameObject.Find(obj_name);
		Debug.Log(go_state);
		int debug = 0;
		while (go_state != null) { //オブジェクトを新しい名前で登録
			ice_block_num++;
			obj_name = "IceBlock_" + ice_block_num;
			go_state = GameObject.Find(obj_name);
			Debug.Log(go_state);
			debug++;
			if (debug > 5000) break; //過剰ループ判定（5000個以上のオブジェクトは想定しない）
		}
		obj.name = obj_name;
	}
}
