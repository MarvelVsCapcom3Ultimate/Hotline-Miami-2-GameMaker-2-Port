if mouse_x>x and mouse_y>y and mouse_x<x+width and mouse_y<y+height {
if startpos<ds_list_size(searchlist)-values startpos+=4
if startpos>ds_list_size(searchlist)-values startpos=ds_list_size(searchlist)-values
} else {
if index<sprite_get_number(mysprite)-1 index+=1 else index=0
}
