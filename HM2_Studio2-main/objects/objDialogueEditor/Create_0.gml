dialoguelist1=ds_list_create()
dialoguelist2=ds_list_create()
startpos=0
width=room_width*0.25-64
height=200
select=0
//show_message(string(ds_list_size(list)))
image_xscale=width/32
image_yscale=height/32

values=0
maxvalues=floor(height/14)-1

choice=-1
blink=0
write=0
line1=""
line2=""

index=0
//alarm[0]=1

dir=0
mysprite=sprDinerWaitress
