path=path_add()
path_set_closed(path,0)
path_set_kind(path,1)
path_set_precision(path,8)
path_add_point(path,0,room_height*0.75,1)
path_add_point(path,room_width+160,room_height*0.4,1)


my_id=instance_create(-100,random(room_width),objBirdpoint)
my_id.path=path_duplicate(path)
i=0
repeat (10) {
path_change_point(my_id.path,i,path_get_point_x(path,i)-32+random(32),path_get_point_y(path,i)-96+random(96),1)
i+=1
}
with my_id path_start(path,200,0,1)
birds=30+random(60)

reload=4
