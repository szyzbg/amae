;=========================================
; CG モード　画面作成
;=========================================

@layopt layer=message0 visible=false
[playse buf=0 storage="mute.ogg"]
[playbgm storage=bgm01.ogg]

@clearfix
[hidemenubutton]
[cm]

[bg storage="../../tyrano/images/system/bg_base.png" time=100]
[layopt layer=1 visible=true]

[image layer=1 left=0 top=0 storage="config/label_cg.png" folder="image" ]

[iscript]
    
    tf.page = 0;
    tf.selected_cg_image = ""; //選択されたCGを一時的に保管
    
[endscript]



*cgpage
[layopt layer=1 visible=true]

[cm]
[button graphic="config/menu_button_close.png" enterimg="config/menu_button_close2.png"  target="*backtitle" x=1152 y=592 ]

[iscript]
    tf.tmp_index = 0;
    tf.cg_index = 12 * tf.page;
    tf.top = 100;
    tf.left = 60;
    
[endscript]

[iscript]
	tf.target_page = "page_"+tf.page;
[endscript]

*cgview
@jump target=&tf.target_page

*page_0
;1
[cg_image_button graphic="cg301_01.png,cg301_02.png,cg301_03.png,cg301_04.png,cg301_05.png,cg301_06.png,cg301_07.png,cg301_08.png,cg301_09.png,cg301_10.png,cg301_11.png" no_graphic="../../tyrano/images/system/noimage.png" x=60 y=144 width=224 height=126 folder="bgimage" ]
[cg_image_button graphic="cg101_01.png,cg101_02.png,cg101_03.png,cg101_04.png,cg101_05.png,cg101_06.png,cg101_07.png,cg101_08.png,cg101_09.png,cg101_10.png,cg101_11.png,cg101_18.png,cg101_19.png,cg101_20.png,cg101_21.png,cg101_22.png,cg101_12.png,cg101_13.png,cg101_14.png,cg101_15.png,cg101_16.png,cg101_17.png" no_graphic="../../tyrano/images/system/noimage.png" x=292 y=144 width=224 height=126 folder="bgimage" ]
[cg_image_button graphic="cg201_01.png,cg201_02.png,cg201_03.png,cg201_04.png,cg201_05.png,cg201_06.png,cg201_07.png,cg201_071.png,cg201_08.png,cg201_09.png" no_graphic="../../tyrano/images/system/noimage.png" x=524 y=144 width=224 height=126 folder="bgimage" ] 
[cg_image_button graphic="cg304_01.png,cg304_02.png,cg304_021.png,cg304_03.png,cg304_04.png,cg304_05.png,cg304_06.png,cg304_07.png,cg304_08.png,cg304_09.png,cg304_10.png,cg304_11.png,cg304_12.png,cg304_13.png,cg304_14.png,cg304_15.png,cg304_16.png,cg304_17.png,cg304_18.png,cg304_19.png,cg304_20.png,cg304_21.png" no_graphic="../../tyrano/images/system/noimage.png" x=756 y=144 width=224 height=126 folder="bgimage" ] 
[cg_image_button graphic="cg203_01.png,cg203_02.png,cg203_03.png,cg203_04.png,cg203_05.png,cg203_06.png,cg203_07.png,cg203_08.png,cg203_09.png,cg203_10.png,cg203_11.png" no_graphic="../../tyrano/images/system/noimage.png" x=988 y=144 width=224 height=126 folder="bgimage" ]
;2
[cg_image_button graphic="cg103_01.png,cg103_02.png,cg103_03.png,cg103_04.png,cg103_05.png,cg103_06.png,cg103_07.png,cg103_08.png,cg103_09.png" no_graphic="../../tyrano/images/system/noimage.png" x=60 y=278 width=224 height=126 folder="bgimage" ]
[cg_image_button graphic="cg302_01.png,cg302_02.png,cg302_03.png,cg302_04.png,cg302_05.png,cg302_06.png,cg302_07.png,cg302_08.png,cg302_09.png,cg302_10.png" no_graphic="../../tyrano/images/system/noimage.png" x=292 y=278 width=224 height=126 folder="bgimage" ] 
[cg_image_button graphic="cg305_01.png,cg305_02.png,cg305_03.png,cg305_04.png,cg305_05.png,cg305_06.png,cg305_07.png,cg305_08.png,cg305_09.png,cg305_10.png" no_graphic="../../tyrano/images/system/noimage.png" x=524 y=278 width=224 height=126 folder="bgimage" ] 
[cg_image_button graphic="cg307_01.png,cg307_02.png,cg307_03.png,cg307_04.png,cg307_05.png,cg307_06.png,cg307_07.png,cg307_08.png,cg307_09.png,cg307_10.png,cg307_11.png,cg307_12.png" no_graphic="../../tyrano/images/system/noimage.png" x=756 y=278 width=224 height=126 folder="bgimage" ]
[cg_image_button graphic="cg309_01.png,cg309_02.png,cg309_03.png,cg309_04.png,cg309_05.png,cg309_06.png,cg309_07.png,cg309_08.png,cg309_09.png,cg309_10.png,cg309_11.png" no_graphic="../../tyrano/images/system/noimage.png" x=988 y=278 width=224 height=126 folder="bgimage" ]

@jump target="*common"


*common


*endpage



[s]

*backtitle
[cm]
[freeimage layer=1]
[stopbgm]
[jump storage="title.ks" target="start"]



*nextpage
[emb exp="tf.page++;"]
@jump target="*cgpage"


*backpage
[emb exp="tf.page--;"]
@jump target="*cgpage"

*clickcg
[cm]

[layopt layer=1 visible=false]

[eval exp="tf.cg_index=0"]

*cg_next_image

[if exp="sf.cg_view[tf.selected_cg_image[tf.cg_index]]"]
[image storage=&tf.selected_cg_image[tf.cg_index] folder="bgimage"  ]
[l]
[bg storage="../../tyrano/images/system/bg_base.png" time=10]
[endif]
[eval exp="tf.cg_index++"]
@jump target="*cg_next_image" cond="tf.selected_cg_image.length > tf.cg_index"


@jump  target=*cgpage
[s]

*no_image

@jump  target=*cgpage



