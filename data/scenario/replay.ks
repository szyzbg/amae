;=========================================
; 回想モード　画面作成
;=========================================
*start
@layopt layer=message0 visible=false
@clearfix
[hidemenubutton]
[cm]
[playse buf=0 storage="mute.ogg"]
[playbgm storage=bgm01.ogg]

;話者登録/回想用


;主人公
[chara_new name="ryu" storage="ryu.png" jname="龍之介"] 

;ト書き
[chara_new name="t" storage="takuma.png" jname="  "] 

;ユウカ
[chara_new name="you" storage="you100.png" jname="ユウカ"] 

;マユカ
[chara_new name="may" storage="may100.png" jname="マユカ"] 

;ユウカとマユカ
[chara_new name="uni" storage="uni100.png" jname="ユウカとマユカ"] 





[bg storage="../../tyrano/images/system/bg_base.png" time=100]
[layopt layer=1 visible=true]

[image name="label_replay" layer=1 left=0 top=0 storage="config/label_recollection.png" folder="image" ]

[iscript]
    
    tf.page = 0;
    tf.selected_replay_obj = ""; //選択されたリプレイを一時的に保管
    
[endscript]



*replaypage
[cm]
[button graphic="config/menu_button_close.png" enterimg="config/menu_button_close2.png"  target="*backtitle" x=1152 y=592 ]

[iscript]
	tf.target_page = "page_"+tf.page;
[endscript]

*replayview

@jump target=&tf.target_page


;メッセージ設定
;メッセージウィンドウの設定
[position layer="message0" left=20 top=500 width=1240 height=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]

;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=24 x=50 y=510]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]






*page_0
[skipstop]
[autostop]
;1
[replay_image_button name="h1_scene" graphic="cg301_01.png" no_graphic="../../tyrano/images/system/noimage.png" x=111 y=128 width=240 height=135 folder="bgimage" ]
[replay_image_button name="h2_scene" graphic="cg101_01.png" no_graphic="../../tyrano/images/system/noimage.png" x=381 y=128 width=240 height=135 folder="bgimage" ]
[replay_image_button name="h3_scene" graphic="cg201_01.png" no_graphic="../../tyrano/images/system/noimage.png" x=651 y=128 width=240 height=135 folder="bgimage" ]
[replay_image_button name="h4_scene" graphic="cg101_12.png" no_graphic="../../tyrano/images/system/noimage.png" x=921 y=128 width=240 height=135 folder="bgimage" ]
;2
[replay_image_button name="h5_scene" graphic="cg304_01.png" no_graphic="../../tyrano/images/system/noimage.png" x=111 y=270 width=240 height=135 folder="bgimage" ]
[replay_image_button name="h6_scene" graphic="cg203_01.png" no_graphic="../../tyrano/images/system/noimage.png" x=381 y=270 width=240 height=135 folder="bgimage" ]
[replay_image_button name="h7_scene" graphic="cg103_01.png" no_graphic="../../tyrano/images/system/noimage.png" x=651 y=270 width=240 height=135 folder="bgimage" ]
[replay_image_button name="h8_scene" graphic="cg302_01.png" no_graphic="../../tyrano/images/system/noimage.png" x=921 y=270 width=240 height=135 folder="bgimage" ]
;3
[replay_image_button name="h9_scene" graphic="cg304_12.png" no_graphic="../../tyrano/images/system/noimage.png" x=111 y=414 width=240 height=135 folder="bgimage" ]
[replay_image_button name="h10_scene" graphic="cg305_01.png" no_graphic="../../tyrano/images/system/noimage.png" x=381 y=414 width=240 height=135 folder="bgimage" ]
[replay_image_button name="h11_scene" graphic="cg307_01.png" no_graphic="../../tyrano/images/system/noimage.png" x=651 y=414 width=240 height=135 folder="bgimage" ]
[replay_image_button name="h12_scene" graphic="cg309_01.png" no_graphic="../../tyrano/images/system/noimage.png" x=921 y=414 width=240 height=135 folder="bgimage" ]

@jump target ="*common"


*common

[s]

*backtitle
[cm]
[freeimage layer=1]
[stopbgm]
[jump storage="title.ks" target="start"]

*nextpage
[emb exp="tf.page++;"]
@jump target="*replaypage"


*backpage
[emb exp="tf.page--;"]
@jump target="*replaypage"

*clickcg
[cm]

[iscript]
    tf.flag_replay = true;
[endscript]

[free layer=1 name="label_replay"]

@jump storage=&tf.selected_replay_obj.storage target=&tf.selected_replay_obj.target
[s]

*no_image

@jump  target=*replaypage


