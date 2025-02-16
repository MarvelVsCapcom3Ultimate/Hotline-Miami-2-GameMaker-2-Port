draw_set_halign(fa_center)
draw_set_valign(fa_center)
textalpha=1-(abs(textx)*(1/(__view_get( e__VW.WView, 0 )*0.75)))
draw_set_font(fntCreditsSmall)
color1=merge_color(c_green,c_lime,0.5+lengthdir_x(0.3,dir))
color2=merge_color(merge_color(c_green,c_black,0.5),c_green,0.5+lengthdir_x(0.3,dir))
draw_text_transformed_color(__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.HView, 0 )/2-20+1+textx*0.01,string_hash_to_newline(title[current]),0.5,0.5,0,color1,color1,color2,color2,textalpha)
color1=merge_color(c_yellow,c_white,0.5+lengthdir_x(0.3,dir))
color2=merge_color(c_orange,c_yellow,0.5+lengthdir_x(0.3,dir))
draw_text_transformed_color(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-20+textx*0.01,string_hash_to_newline(title[current]),0.5,0.5,0,color1,color1,color2,color2,textalpha)


draw_set_font(fntCreditsBig)
color1=merge_color(c_red,c_white,0.5+lengthdir_x(0.3,dir))
color2=merge_color(c_red,c_fuchsia,0.5+lengthdir_x(0.3,dir))
draw_text_transformed_color(__view_get( e__VW.WView, 0 )/2+2,__view_get( e__VW.HView, 0 )/2+2+textx*0.01,string_hash_to_newline(credit[current]),0.5,0.5,0,color1,color1,color2,color2,textalpha)
color2=merge_color(c_red,c_white,0.5+lengthdir_x(0.3,dir))
color1=merge_color(c_red,c_fuchsia,0.5+lengthdir_x(0.3,dir))
draw_set_font(fntCreditsOutline)
draw_text_transformed_color(__view_get( e__VW.WView, 0 )/2+2,__view_get( e__VW.HView, 0 )/2+2+textx*0.01,string_hash_to_newline(credit[current]),0.5,0.5,0,color1,color1,color2,color2,textalpha)
draw_set_font(fntCreditsBig)
color1=merge_color(merge_color(c_aqua,c_white,0.5+lengthdir_x(0.2,dir)),c_white,whitealpha)
color2=merge_color(merge_color(c_aqua,c_blue,0.3-lengthdir_x(0.3,dir)),c_white,whitealpha)
draw_text_transformed_color(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2+textx*0.01,string_hash_to_newline(credit[current]),0.5,0.5,0,color1,color1,color2,color2,textalpha)
color2=merge_color(merge_color(c_aqua,c_white,0.5+lengthdir_x(0.2,dir)),c_white,random(whitealpha))
color1=merge_color(merge_color(c_aqua,c_blue,0.3-lengthdir_x(0.3,dir)),c_white,random(whitealpha))
draw_set_font(fntCreditsOutline)
draw_text_transformed_color(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2+textx*0.01,string_hash_to_newline(credit[current]),0.5,0.5,0,color1,color1,color2,color2,textalpha)

dir+=2
if whitealpha>0 whitealpha-=0.01
if next=0 {
if textx>12 textx-=6 else {if textx>0 whitealpha=1 textx=0}
} else {
if textx>-__view_get( e__VW.WView, 0 )*0.75 {wait=40 textx-=6} else {textx=-__view_get( e__VW.WView, 0 )*0.75 if wait>0 wait-=1 else {current+=1 next=0 textx=abs(textx)}}
}


