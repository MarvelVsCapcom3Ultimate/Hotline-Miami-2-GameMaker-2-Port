if wait=1 {
if __view_get( e__VW.YView, 0 )>objHost.y-80 __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (1) ) else wait=0
exit
}
if state<14 {
with objSpotlight {
direction=270
if y>224 instance_destroy()
}
if !instance_exists(objConversation) {
scrGetMessage(state)
state+=1
} 
with objAudience {
if round(random(60))=2 image_speed=0
}
objHost.image_speed=0
if sprite_index=sprPigInterviewStand nothing=1 else image_speed=0
with objPigInterviewStand image_speed=0
if state<16 {
if objEffector.sprite=sprFaceHost or objEffector.sprite=sprFaceHostAnxious or objEffector.sprite=sprFaceHostTwitch {
dist=point_distance(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),objHost.x-__view_get( e__VW.WView, 0 )/2.5,objHost.y-80)
dir=point_direction(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),objHost.x-__view_get( e__VW.WView, 0 )/2.5,objHost.y-80)
__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (lengthdir_x(dist*0.05,dir)) )
__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (lengthdir_y(dist*0.05,dir)) )
objHost.image_speed=0.15
}
if objEffector.sprite=sprFacePig  or objEffector.sprite=sprFacePigAngry {
dist=point_distance(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),objPigInterview.x-__view_get( e__VW.WView, 0 )/2.5,objPigInterview.y-80)
dir=point_direction(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),objPigInterview.x-__view_get( e__VW.WView, 0 )/2.5,objPigInterview.y-80)
__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (lengthdir_x(dist*0.05,dir)) )
__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (lengthdir_y(dist*0.05,dir)) )
image_speed=0.15
with objPigInterviewStand image_speed=0.15
}
}
} else {
if !instance_exists(objConversation) {
if wait2>0 wait2-=1 else {
if state<25 {
scrGetMessage(state)
state+=1
} else {
if done=0 {
sound_play(sndStatic)
objEffector.fade=1
objEffector.next=1
objEffector.noise=60
objEffector.newsong=1
objEffector.nextroom=rmPigApartment1
global.level=scrGetNextRoom()
objEffector.song=scrGetSong()
bgm_Stop(global.currentsong)
done=1
} else {
objEffector.amount+=8
}
}
}
image_speed=0
with objRichard {
if image_index<11 image_index+=0.1 else {if !instance_exists(objSpotlight) {
//objRichard.depth=-6 
instance_create(objRichard.x,objRichard.y-12,objSpotlight) 
objTalkshowLight.flash=1
objTalkshowLight.nightmare=1
tile_layer_show(999)
sound_play(sndThunder)
sound_stop(sndPounding)
bgm_Stop()
scrPlaySong(Richard)

with objEllenDead visible=1
with objPigInterview sprite_index=sprPigInterviewDirty
with objTalkShowDJ sprite_index=sprTalkShowDJBroken
with objHost sprite_index=sprTalkShowChairDirty
with objTeleprompter sprite_index=sprTeleprompterBroken
with objTalkShowTable sprite_index=sprTalkShowTableDirty
with objAudience instance_destroy()
with objTalkshowCoach instance_destroy()
with objTalkshowCamera sprite_index=sprTalkShowCameraDirty
with objTalkShowChairs sprite_index=sprTalkShowChairsDirty
with objPigInterviewStand instance_destroy()
} 
}
dist=point_distance(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),objPigInterview.x-__view_get( e__VW.WView, 0 )/2.5,objPigInterview.y-60)
dir=point_direction(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),objPigInterview.x-__view_get( e__VW.WView, 0 )/2.5,objPigInterview.y-60)
__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (lengthdir_x(dist*0.05,dir)) )
__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (lengthdir_y(dist*0.05,dir)) )
with objPigInterviewStand image_speed=0
}
}
}
if state>5 {if pvol<0.995 pvol+=0.005 sound_volume(sndPounding,pvol)}
