
using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;
using System;
using System.Collections.Generic;

public class SaveLoadFile : MonoBehaviour {

	[SerializeField]
	private GameObject blockObj;
	private FileStream fileStream;
	private BinaryFormatter bf;
	bool isCalledOnce = false;
	float currentTime = 0;

	private void Update() {
		if (!isCalledOnce) { //最初に1度だけ読み込み
			isCalledOnce = true;
			Load();
		}
		if (OVRInput.GetDown(OVRInput.RawButton.X)) { //Xボタンで状態保存
			Save();
		}

		currentTime -= Time.deltaTime;
		if(currentTime <= 0) {
			currentTime = 0;
		} else  if(currentTime < 3) {
			textUI.text = "";
		}
	}

	[Serializable]
	public struct Vector3Serializer {
		public float x;
		public float y;
		public float z;

		public Vector3Serializer(Vector3 v3) {
			x = v3.x;
			y = v3.y;
			z = v3.z;
		}
	}

	[Serializable]
	public struct RotateSerializer {
		public float x;
		public float y;
		public float z;
		public float w;

		public RotateSerializer(Quaternion q4) {
			x = q4.x;
			y = q4.y;
			z = q4.z;
			w = q4.w;
		}
	}

	[Serializable]
	public class SaveData {
		[SerializeField]
		private String name = "";
		[SerializeField]
		private Vector3Serializer vector = new Vector3Serializer();
		[SerializeField]
		private RotateSerializer rotate = new RotateSerializer();

		public string Name { get => name; set => name = value; }
		public Vector3Serializer Vector { get => vector; set => vector = value; }
		public RotateSerializer Rotate { get => rotate; set => rotate = value; }
	}

	public Text textUI;

	private void Save() {
		bf = new BinaryFormatter();
		fileStream = null;
		Debug.Log("Save.");
		//IceBlockの検索と状態の取得
		List<SaveData> saveDataList = new List<SaveData>();
		int ice_block_num = 0;
		string obj_name = "IceBlock_" + ice_block_num;
		while (GameObject.Find(obj_name) != null) {
			SaveData data = new SaveData();
			data.Name = obj_name;
			Vector3Serializer tmpv = new Vector3Serializer(GameObject.Find(obj_name).transform.position);
			data.Vector = tmpv;
			RotateSerializer tmpr = new RotateSerializer(GameObject.Find(obj_name).transform.rotation);
			data.Rotate = tmpr;
			Debug.Log(GameObject.Find(obj_name).transform.position);
			Debug.Log(GameObject.Find(obj_name).transform.rotation);
			saveDataList.Add(data);
			ice_block_num++;
			obj_name = "IceBlock_" + ice_block_num;
			Debug.Log(obj_name);
		}
		// 取得したIceBlockのリストをシリアライズ
		try {
			fileStream = File.Create(Application.dataPath + "/savedata.dat");
			bf.Serialize(fileStream, saveDataList);
			Debug.Log("シリアライズ成功");
			textUI.text = "保存しました。";
			currentTime = 6;
		} catch (IOException e1) {
			Debug.Log("ファイルオープンエラー");
		} finally {
			if (fileStream != null) {
				fileStream.Close();
			}
		}
	}


	private void Load() {
		bf = new BinaryFormatter();
		fileStream = null;

		try {
			Debug.Log("Load.");
			fileStream = File.Open(Application.dataPath + "/savedata.dat", FileMode.Open);
			//　読み込んだデータをデシリアライズ
			List<SaveData> saveDataList = bf.Deserialize(fileStream) as List<SaveData>;
			Debug.Log(saveDataList);
			// 情報を基にIceBlockを生成
			foreach (SaveData data in saveDataList) {
				Vector3Serializer vec3tmp = data.Vector;
				RotateSerializer q4tmp = data.Rotate;
				Vector3 vec3 = new Vector3(vec3tmp.x, vec3tmp.y, vec3tmp.z);
				Quaternion q4 = new Quaternion(q4tmp.x, q4tmp.y, q4tmp.z, q4tmp.w);
				var obj = Instantiate(blockObj,
					//GameObject.Find("IceBlockLoadPoint").transform.position + 
					vec3, q4) as GameObject;
				obj.name = data.Name;
			}
		} catch (FileNotFoundException e1) {
			Debug.Log("ファイルがありません");
		} catch (IOException e2) {
			Debug.Log("ファイルオープンエラー");
		} finally {
			if (fileStream != null) {
				fileStream.Close();
			}
		}

	}
}