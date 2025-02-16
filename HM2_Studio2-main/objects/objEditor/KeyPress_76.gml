if keyboard_check(vk_control) {
myfile=get_open_filename("HOTLINE FILES|*.hlm","")
if myfile="" nothing=1 else scrEditorLoadLevel(string_replace(myfile,".hlm",""))
}
