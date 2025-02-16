if reload>0 reload-=1 else {
if birds>0  {
birds-=1
my_id=instance_create(-100,random(room_width),objBirdpoint)
my_id.path=path_duplicate(path)
i=0
repeat (6) {
path_change_point(my_id.path,i,path_get_point_x(path,i)-32+random(32),path_get_point_y(path,i)-96+random(96),1)
i+=1
}
with my_id path_start(path,200+random(50),0,1)
}
}
