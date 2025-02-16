if mouse_x>x and mouse_y>y and mouse_x<x+width and mouse_y<y+height {
if startpos>0 startpos-=4
if startpos<0 startpos=0
} else {
if index>0 index-=1 else index=sprite_get_number(mysprite)-1
}
