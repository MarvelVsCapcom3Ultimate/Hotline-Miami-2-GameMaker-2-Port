//draw_sprite_ext(sprite_index,1,x,y,1,1,image_angle,image_blend,image_alpha)
i=0
repeat (15) {
draw_sprite_ext(sprElevatorDoorSegment,1,x-1+i*2+lengthdir_x(5*i,dir),y,1,1,dir,c_white,1)
draw_sprite_ext(sprElevatorDoorSegment,0,x-1+i*2+lengthdir_x(5*i,dir),y,1,1,-dir,c_white,1)
draw_sprite_ext(sprElevatorDoorSegment,0,x-1+i*2+lengthdir_x(5*i+lengthdir_x(3.5,dir),dir),y+lengthdir_y(5,dir),1,1,-dir,c_white,1)
draw_sprite_ext(sprElevatorDoorSegment,1,x-1+i*2+lengthdir_x(5*i+lengthdir_x(3.5,dir),dir),y-lengthdir_y(5,dir),1,1,dir,c_white,1)
i+=1
}

i=0
repeat (15) {
draw_sprite_ext(sprElevatorDoorSegmentGrey,1,x-1+i*2+lengthdir_x(5*i,dir),y,1,1,dir,c_white,1)
draw_sprite_ext(sprElevatorDoorSegmentGrey,0,x-1+i*2+lengthdir_x(5*i,dir),y,1,1,-dir,c_white,1)
draw_sprite_ext(sprElevatorDoorSegmentGrey,0,x-1+i*2+lengthdir_x(5*i+lengthdir_x(3.5,dir),dir),y+lengthdir_y(5,dir),1,1,-dir,c_white,1)
draw_sprite_ext(sprElevatorDoorSegmentGrey,1,x-1+i*2+lengthdir_x(5*i+lengthdir_x(3.5,dir),dir),y-lengthdir_y(5,dir),1,1,dir,c_white,1)
i+=1
}
draw_sprite_ext(sprElevatorLock,1,x-1+i*2+lengthdir_x(5*i+lengthdir_x(3.5,dir),dir),y,1,1,0,c_white,1)
image_xscale=(-1+i*2+lengthdir_x(5*i+lengthdir_x(3.5,dir),dir))*(1/96)

if open=1 {
if dir<90 dir+=1
}
if open=0 {
if dir>35 dir-=1
}
