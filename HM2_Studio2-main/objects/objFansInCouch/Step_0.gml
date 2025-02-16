if wait>0 {wait-=1 objPlayer.active=0}
addx=0
if objEffector.sprite=sprMaskBear addx=-32
if objEffector.sprite=sprMaskSwan2 addx=-12
if objEffector.sprite=sprMaskTiger addx=12
if objEffector.sprite=sprMaskZebra addx=32
if stage<10 {
if instance_number(objConversation)+instance_number(objDate)=0 {
scrGetMessage(stage)
stage+=1
}
} 

if instance_exists(objConversation) {
dist=point_distance(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),objFansInCouch.x-__view_get( e__VW.WView, 0 )/2+addx+64,objFansInCouch.y-__view_get( e__VW.HView, 0 )/2)
dir=point_direction(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),objFansInCouch.x-__view_get( e__VW.WView, 0 )/2+addx+64,objFansInCouch.y-__view_get( e__VW.HView, 0 )/2)
__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (lengthdir_x(dist*0.05,dir)) )
__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (lengthdir_y(dist*0.05,dir)) )
} else {if stage=10 {objPlayer.active=1 stage=11}}
