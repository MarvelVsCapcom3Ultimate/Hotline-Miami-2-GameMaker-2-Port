draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_black,0.5)
draw_sprite_ext(sprite_index,image_index,x-1,y-1,1,1,0,c_white,1)
if on=0 exit
if instance_exists(objEnemy) or instance_exists(objEBullet) or instance_exists(objKnockedOut) nothing=1 else {
dir+=4
draw_sprite_ext(sprArrow,3,x,y-16-abs(lengthdir_x(2,dir)),1,1,0,c_white,1)
}
