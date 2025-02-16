if !mouse_check_button(mb_left) wait=0

if write=1 {
levelname=string_upper(keyboard_string)
if string_length(levelname)>10 {levelname=string_copy(levelname,1,10) keyboard_string=levelname}
}
