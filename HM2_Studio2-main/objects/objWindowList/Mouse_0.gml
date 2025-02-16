if instance_exists(objEditorWindow) exit
lastselect=select
if (mouse_x>x+width-12 and mouse_x<x+width and mouse_y>=y and mouse_y<=y+height) or (choice==1){
if choice=0 nothing=1 else {
choice=1
startpos=floor((mouse_y-(y))*((ds_list_size(searchlist)-(values-1))/height))
write=0
}
}
if (mouse_x>x and mouse_x<x+width-12 and mouse_y>=y+14 and mouse_y<=y+height) or (choice==0 and mouse_y>=y+14) {
if choice=1 nothing=1 else {
choice=0
select=startpos+floor(((mouse_y-(y+14))*(1/(height/(maxvalues+1)))))
if select>ds_list_size(searchlist)-1 select=ds_list_size(searchlist)-1
write=0
}
}
if lastselect=select nothing=1 else scrEditorSelectFurniture()

//show_message(string(startpos))
