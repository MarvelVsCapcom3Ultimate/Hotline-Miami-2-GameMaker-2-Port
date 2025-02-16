if instance_exists(objEditorWindow) write=0

dir+=1

letters=string_length(keyboard_string)
if letters>32 letters=32
if write==1 {line1=string_copy(keyboard_string,1,letters) keyboard_string=line1}
if write==2 {line2=string_copy(keyboard_string,1,letters) keyboard_string=line2}
