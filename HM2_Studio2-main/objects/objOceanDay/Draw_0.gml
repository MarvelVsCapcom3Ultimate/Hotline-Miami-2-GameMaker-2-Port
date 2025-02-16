
color=merge_color(c_aqua,c_fuchsia,0.5+lengthdir_x(0.5,index*5))
color2=merge_color(c_aqua,c_fuchsia,0.5-lengthdir_x(0.5,index*5))
draw_surface_ext(surf,0,0,1,1,0,color,1)
i=0 
repeat (room_height/4) {
if oceanx>(limit-30) scale=1+((limit-30)-oceanx)*0.0333 else scale=1
draw_sprite_ext(sprOceanFoam,oceanindex[i]+index,oceanx+lengthdir_x(oceanlength[i],oceandir[i]),i*4,scale,1,0,merge_color(c_white,color,0.2+(1-scale)*0.5),1)
oceandir[i]+=oceandiradd[i]
i+=1
}

oceanspeed=((limit+20)-oceanx)*0.025
if oceanspeed>2 oceanspeed=2
if oceanx<limit oceanx+=oceanspeed else {oceanx=-16 limit=190-random(30)}
index+=0.2
