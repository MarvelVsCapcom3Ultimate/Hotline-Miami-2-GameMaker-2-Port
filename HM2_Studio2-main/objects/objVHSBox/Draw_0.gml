if level<2 {
i=0
repeat (22) {
draw_sprite_ext(sprite_index,i,x-(i*0.5)-addx,y-(i*0.5),image_xscale,image_yscale,lengthdir_x(5*factor,dir),merge_color(c_ltgray,c_white,i*(1/22)),1)
if i>0 and i<21 {
if select=floor((i-1)*0.2) draw_sprite_ext(sprite,i-1,x-addx-(i*0.5*vhsfactor)+lengthdir_x(dist+addx,lengthdir_x(5*factor,dir)),y-(i*0.5*vhsfactor)+lengthdir_y(dist+addx,lengthdir_x(5*factor,dir)),image_xscale,image_yscale,lengthdir_x(5*factor,dir),merge_color(c_ltgray,c_white,i*(1/22)),1) else draw_sprite_ext(sprite,i-1,x-(i*0.5)-addx,y-(i*0.5),image_xscale,image_yscale,lengthdir_x(5*factor,dir),merge_color(c_ltgray,c_white,i*(1/22)),1)
}
i+=1
}
}

if level=2 {
draw_sprite_ext(sprAct1CoverOpen,index1,x-addx-(i*0.5*vhsfactor)+lengthdir_x(dist+addx,lengthdir_x(5*factor,dir)),y-(i*0.5*vhsfactor)+lengthdir_y(dist+addx,lengthdir_x(5*factor,dir)),image_xscale,image_yscale,lengthdir_x(5*factor,dir),merge_color(c_ltgray,c_white,i*(1/22)),1)
draw_sprite_ext(sprAct1VHSTape,index2,x-addx-(i*0.5*vhsfactor)+lengthdir_x(dist+addx,lengthdir_x(5*factor,dir)),y-(i*0.5*vhsfactor)+lengthdir_y(dist+addx,lengthdir_x(5*factor,dir)),image_xscale,image_yscale,lengthdir_x(5*factor,dir),merge_color(c_ltgray,c_white,i*(1/22)),1)
if open=1 {
if index1<4 index1+=0.25 else {if objBoxSelector.drawpart>-1 objBoxSelector.change=1}
if index2<4 {if index2=0 sound_play(sndVHSOpen) index2+=0.25}
} else {
if index1>0 index1-=0.25 else {open=1 level=0}
if index2>0 {if index2-0.25=0 sound_play(sndVHSClose) index2-=0.25}
}
}

if level=3 {
draw_sprite_ext(sprAct1CoverOpen,index1,x-addx-(i*0.5*vhsfactor)+lengthdir_x(dist+addx,lengthdir_x(5*factor,dir))-coverx,y-(i*0.5*vhsfactor)+lengthdir_y(dist+addx,lengthdir_x(5*factor,dir)),1,1,image_angle,merge_color(c_ltgray,c_white,i*(1/22)),1)
draw_sprite_ext(sprAct1VHSTape,index2,x-addx-(i*0.5*vhsfactor)+lengthdir_x(dist+addx,lengthdir_x(5*factor,dir))-lengthdir_y(16*image_xscale,image_angle),y-(i*0.5*vhsfactor)+lengthdir_y(dist+addx,lengthdir_x(5*factor,dir)),image_xscale,image_yscale,image_angle,merge_color(c_ltgray,c_white,i*(1/22)),1)
if index1>0 {if index1-0.2=0 sound_play(sndVHSClose) index1-=0.2}
if image_xscale<2 image_xscale+=0.01
if image_yscale<2 image_yscale+=0.01
coverx+=10
if image_angle>-90 image_angle-=2
}

dir+=2

if change=0 and active=1 {
if dist<30 dist+=3.2 else {
dist=32 
if level=1 {if factor>0 factor-=0.1 else {if addx<280 addx+=28 else {if vhsfactor>0 vhsfactor-=0.05 else level=2}}} 
if level=0 {if vhsfactor<1 vhsfactor+=0.1 else {if objBoxSelector.level=2 {objBoxSelector.level=1 objBoxSelector.change=1} if addx>0 addx-=28 else {addx=0 if factor<1 factor+=0.1}}}
}
} else {
if dist>0 dist-=3.2 else {dist=0 if active=1 {select+=change if select<0 select=3 if select>3 select=0} change=0}
}

if active=1 {
if image_xscale<1.25 image_xscale+=0.025
image_yscale=image_xscale
} else {
if image_xscale>1 image_xscale-=0.025
image_yscale=image_xscale
}
