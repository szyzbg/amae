
[cm]

@clearstack
@bg storage ="brand.png" time=700
[playse storage="bland.ogg"]

@wait time = 2000

;コーション
@bg storage ="caution.png" time=700

@wait time = 3000

;メッセージ設定
;メッセージウィンドウの設定
[position layer="message0" left=20 top=500 width=1240 height=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=24 x=50 y=510]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;話者登録/回想用


;主人公
[chara_new name="ryu" storage="ryu.png" jname="龍之介"] 

;ト書き
[chara_new name="t" storage="takuma.png" jname="  "] 

;ユウカ
[chara_new name="you" storage="you100.png" jname="ユウカ"] 

;マユカ
[chara_new name="may" storage="may100.png" jname="マユカ"] 

;金髪の子
[chara_new name="gold" storage="gold100.png" jname="金髪の女の子"] 

;黒髪の子
[chara_new name="black" storage="black100.png" jname="黒髪の女の子"] 

;ユウカとマユカ
[chara_new name="uni" storage="uni100.png" jname="ユウカとマユカ"] 


*start 
[bg   time="500" storage="white.png" method="crossfade"]
[wait time="300"]
@bg storage ="title.png" time=700
[playbgm storage=bgm04.ogg]
@wait time = 300

[playse storage="title.ogg"]

@wait time = 800

[button x=814 y=315 graphic="title/button_start.png" target="gamestart"]
[button x=814 y=385 graphic="title/button_load.png"  role="load" ]
[button x=814 y=455 graphic="title/button_cg.png" storage="cg.ks" ]
[button x=814 y=525 graphic="title/button_replay.png" storage="replay.ks" ]
[button x=814 y=595 graphic="title/button_config.png" role="sleepgame" storage="config.ks" ]

[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
@jump storage="lb01_0001.ks"


