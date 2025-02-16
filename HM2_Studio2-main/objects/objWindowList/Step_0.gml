if instance_exists(objEditorWindow) write=0

dir+=1

letters=string_length(keyboard_string)
if letters>20 letters=20
if write=1 searchstring=string_copy(keyboard_string,1,letters)
if laststring=searchstring nothing=1 else scrUpdateSearchList()
laststring=searchstring
