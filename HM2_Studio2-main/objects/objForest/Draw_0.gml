i=0
repeat ceil(room_width/128)+2 {
if instance_exists(objJungleNightBG) draw_sprite_general(sprNickeGreenery,1,0,0,128,128,myx1+i*128-64,room_height-128,1,1,0,c_aqua,c_aqua,c_black,c_black,1)
if instance_exists(objJungleDayBG) draw_sprite_general(sprNickeGreenery,1,0,0,128,128,myx1+i*128-64,room_height-128,1,1,0,c_red,c_red,c_maroon,c_maroon,1)
if instance_exists(objJungleEveningBG) draw_sprite_general(sprNickeGreenery,1,0,0,128,96,myx1+i*128-64,room_height-112,1,1,0,c_orange,c_orange,__background_get_colour( ),__background_get_colour( ),1)
i+=1
}
myx1-=4
if myx1<-128 myx1+=128

i=0
repeat ceil(room_width/128)+2 {
if instance_exists(objJungleNightBG) draw_sprite_general(sprNickeGreenery,1,0,0,128,128,myx2+i*128-64,room_height-112,1,1,0,c_aqua,c_aqua,c_black,c_black,1)
if instance_exists(objJungleDayBG) draw_sprite_general(sprNickeGreenery,1,0,0,128,128,myx2+i*128-64,room_height-112,1,1,0,c_maroon,c_maroon,c_red,c_red,1)
if instance_exists(objJungleEveningBG) draw_sprite_general(sprNickeGreenery,1,0,0,128,96,myx2+i*128-64,room_height-96,1,1,0,c_yellow,c_yellow,__background_get_colour( ),__background_get_colour( ),1)
i+=1
}
myx2-=5
if myx2<-128 myx2+=128

