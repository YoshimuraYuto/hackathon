操作方法  
掴む：外側のボタン２つ  
上昇：A　下降：B　保存：X  
  
--- 変更点 ---  
  
＜OVRPlayerController周り＞  
●カクカクした視点移動を削除。  
　 OVRPlayerControllerのSnap RotationをOFF  
●当たり判定を細く。手が届かない感じをなくす。  
   Character Controller の Radius = 0.2  
●掴む判定を甘く。  
   CustomHandLefr, RightのGrabVolumeRigのRadiusを10倍の0.26  
●自由に上下移動。落ちないようにするために。  
　 OVRPlayerControllerのGravityModifier=0。  
　 OVRPlayerController.cs　の　UpdateController関数で、  
   　Controller.Move()呼び出しの前に、上昇下降するようにmoveDirection.yを指定。  
　 　287行目の謎条件式のMoveThrottle.yの条件を単純化。　  
　  
  
＜IceBlock周り＞  
●MeshCoiiderはConvexをONにする。（よくわからないが、こうしないと衝突判定されない）  
●BlockControl.cs  
  自由な氷像を作るのに、重力に従わせると積むのも難しい。  
　物体に衝突している時だけIsKinematicをONで物理演算を切って、くっついた感じにするスクリプトを作成。  
  このスクリプトと、rigidbodyとcolliderとove grabableを入れたオブジェクトはすべて掴めてすべてくっつく。  
●衝突判定周りのことがわかりづらかったので、下部のブロックを抜くと浮いた状態になる。  
　 厄介そうなのでこのままの仕様に。  
●IceBlockGenerator.cs  
　 IceBlockを一定間隔でランダム箇所に降らせる。  
  
  
＜記録周り＞  
●SaveLoadFile.cs  
　 IceBlockの状態を記録し、ゲーム開始時に読み込む簡易セーブデータを作成。savefile.dat。  
  
＜他＞  
●Planeのcolliderの上部を若干下げて、雪に埋まっている感じに。  
  