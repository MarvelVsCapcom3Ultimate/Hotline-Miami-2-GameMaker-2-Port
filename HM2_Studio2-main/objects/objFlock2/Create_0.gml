path=path_add()
path_set_closed(path,0)
path_set_kind(path,1)
path_set_precision(path,8)
path_add_point(path,-32,random(room_height),1)
i=0
repeat (5) {
path_add_point(path,random(room_width),random(room_height),1)
i+=1
}
path_add_point(path,1000,random(room_height),1)


my_id=instance_create(-32,random(room_width),objBirdpoint)
my_id.path=path_duplicate(path)
i=0
repeat (7) {
path_change_point(my_id.path,i,path_get_point_x(path,i)-32+random(32),path_get_point_y(path,i)-96+random(96),1)
i+=1
}
with my_id path_start(path,200,0,1)
birds=200

reload=4
