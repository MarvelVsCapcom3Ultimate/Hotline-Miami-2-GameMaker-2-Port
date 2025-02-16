if !surface_exists(surf) {
surf=surface_create(room_width,room_height)
surface_set_target(surf)
draw_clear_alpha(c_black,0)
surface_reset_target()
}

surface_set_target(surf)
draw_clear_alpha(c_black,0)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
date=string_upper(months[month])+" "+string(day)+string_upper(ending[day-1])+", "+string(year)+"#"+global.location
draw_set_font(fntDate)
draw_set_color(merge_color(c_gray,c_dkgray,random(1)))
draw_text(__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.HView, 0 )-(__view_get( e__VW.HView, 0 )*0.45)*factor-1,string_hash_to_newline(date))
draw_set_color(merge_color(c_white,c_ltgray,random(0.2)))
draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )-(__view_get( e__VW.HView, 0 )*0.45)*factor,string_hash_to_newline(date))

if hour<10 time="0"+string(hour) else time=string(hour)
time+=":"
if minute<10 time+="0"+string(minute) else time+=string(minute)
draw_set_font(fntTime)
draw_set_color(merge_color(c_maroon,c_dkgray,random(1)))
draw_text(__view_get( e__VW.WView, 0 )/2+1,(__view_get( e__VW.HView, 0 )*0.42)*factor+1,string_hash_to_newline(time))
draw_set_color(merge_color(c_red,c_white,random(0.2)))
draw_text(__view_get( e__VW.WView, 0 )/2,(__view_get( e__VW.HView, 0 )*0.42)*factor,string_hash_to_newline(time))
draw_sprite_ext(sprLine,0,__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-2,string_width(string_hash_to_newline(time))*0.5*factor,1,0,merge_color(c_white,c_ltgray,random(0.2)),1)
draw_sprite_ext(sprLine,0,__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.HView, 0 )/2-2+1,string_width(string_hash_to_newline(time))*0.5*factor,1,0,merge_color(c_gray,c_dkgray,random(0.2)),1)
surface_reset_target()
