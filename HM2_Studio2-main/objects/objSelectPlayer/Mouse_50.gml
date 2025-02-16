if wait>0 exit
if mouse_x>room_width/2-width/2+12 and mouse_x<room_width/2-8 and mouse_y>room_height/2-height/2+56 and mouse_y<room_height/2-height/2+56+players*16 {
select=floor((mouse_y-(room_height/2-height/2+56))*1/16)
scrEnemiesAvailable(select)
}


