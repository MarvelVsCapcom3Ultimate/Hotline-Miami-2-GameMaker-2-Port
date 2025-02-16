scrKill()
if global.test=0 {
if sprite_index=sprZebraRoll or rollreload>0 nothing=1 else {
scrPlayerEndAttack()
weapon=sprite_index
sprite_index=sprZebraRoll
rollreload=30
down=0
right=0
if keyboard_check_direct(ord(global.downkey)) down+=1
if keyboard_check_direct(ord(global.upkey)) down-=1
if keyboard_check_direct(ord(global.rightkey)) right+=1
if keyboard_check_direct(ord(global.leftkey)) right-=1
rolldir=point_direction(x,y,x+right,y+down)
if abs(down)<1 and abs(right)<1 rolldir=round(dir*(1/45))*45
rollx=lengthdir_x(3.5,rolldir)
rolly=lengthdir_y(3.5,rolldir)
dir=rolldir
image_index=0
active=0
aimon=0
image_speed=0
}
}
