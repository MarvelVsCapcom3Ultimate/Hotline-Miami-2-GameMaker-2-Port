scrEditorSortFurniture()
ds_list_sort(list,1)
startpos=0
width=room_width*0.25-64
height=300
select=0
//show_message(string(ds_list_size(list)))
image_xscale=width/32
image_yscale=height/32

values=floor(height/14)-1
maxvalues=floor(height/14)-1

choice=-1
blink=0
write=0
searchstring=""
laststring=""

searchlist=ds_list_create()
ds_list_copy(searchlist,list)

index=0

scrEditorSelectFurniture()

//alarm[0]=1

dir=0
