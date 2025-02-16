if global.done=1 instance_destroy()
if limit>0 {if objPlayer.y>y solid=1 else solid=0}
if limit<0 {if objPlayer.y<y solid=1 else solid=0}
if place_meeting(x,y,objPlayer) solid=0
