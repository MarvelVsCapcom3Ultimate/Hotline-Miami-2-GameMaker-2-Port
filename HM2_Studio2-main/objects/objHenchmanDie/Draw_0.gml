if state=4 {
if vol>0.01 vol-=0.01 else vol=0
scrSongVolume(vol)
}

if on=1 and !instance_exists(objConversation) {
if wait>0 wait-=1 else {
if sprite_index=sprHenchmanDrugged {sprite_index=sprHenchmanTalk scrGetMessage(0) wait=30} else {if state=0 state=1}
if state=4 {bgm_Stop(global.currentsong) scrPlaySong(Dust) scrSongVolume(0) vol=0 sprite_index=sprHenchmanBash2 state=5 image_speed=0}
}
if state=1 {state=2 wait=30 image_index=0 image_speed=0 sprite_index=sprSwanDragHenchman}
if state=2 {
if image_index<12 image_index+=0.125 else {
sprite_index=sprHenchmanBash1
image_index=0
state=3
zebrasprite=sprZebraKillPipe
}
}
}

if state>5 {
if vol<1 vol+=0.0025
if vol>1 vol=1
if vol<0 vol=0
scrSongVolume(vol)
}

if state=4 {
if wait<7/0.125 bearindex=7-wait*0.125
bearsprite=sprBearStomp
}

if state=3 {
if image_index<7 image_index+=0.125 else {zebrasprite=sprZebraWalkPipe zebraindex=0 state=4 scrGetMessage(1) sprite_index=sprHenchmanTalkBashed image_speed=0.125 wait=60}
zebraindex=image_index
if swanx>-8 swanx-=1
}

if state=5 {
if image_index<4 bearindex=image_index+7 else {bearindex=0 bearsprite=sprBearWalkUnarmed}
if image_index<7 image_index+=0.125 else {state=6 sprite_index=sprHenchmanBash3 image_index=0}
swanindex=image_index
if image_index>3 {zebrasprite=sprZebraKillPipe zebraindex=image_index-3}
}

if state=6 {
swanindex=0
if image_index<37 image_index+=0.125 else {if zebraindex<8 zebraindex+=0.125 else {zebraindex=0 zebrasprite=sprZebraWalkPipe state=7 done=1}}
if image_index<5 zebraindex=image_index+4 else {if image_index<9 {zebraindex=0 zebrasprite=sprZebraWalkPipe}}
if image_index>9 and image_index<17 {zebrasprite=sprZebraKillPipe zebraindex=image_index-9} else {if image_index>5 and image_index<31 {zebraindex=0 zebrasprite=sprZebraWalkPipe}}
if image_index>31 and image_index<37 {zebrasprite=sprZebraKillPipe zebraindex=image_index-31}
}

draw_sprite_ext(sprElisLeatherCouch,0,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if state<=2 draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if state<2 {
if swanvisible=1 draw_sprite_ext(sprSwan2WalkUnarmed,0,x,y+32,image_xscale,image_yscale,90,image_blend,image_alpha)
}

if state>2 {
draw_sprite_ext(sprite_index,image_index,x,y+40,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(sprSwan2WalkUnarmed,0,x,y+64,image_xscale,image_yscale,90,image_blend,image_alpha)
}

if state>1 {
if image_index>9 {
if bearangle>0 bearangle-=3
if zebraangle<150 zebraangle+=1.5
if swanangle<170 swanangle+=2.5
}
}

if zebravisible=1 draw_sprite_ext(zebrasprite,zebraindex,x+16,y+32,1,1,zebraangle,image_blend,image_alpha)
if bearvisible=1 draw_sprite_ext(bearsprite,bearindex,x-24,y+38,1,1,bearangle,image_blend,image_alpha)
if swanvisible=1 draw_sprite_ext(sprSwan2Stomp,swanindex,x+16+swanx,y+48,1,1,swanangle,image_blend,image_alpha)
