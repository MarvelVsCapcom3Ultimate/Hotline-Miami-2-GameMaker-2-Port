if keyboard_check(vk_control) {
myfile=get_save_filename("HOTLINE FILES|*.hlm",global.levelname+".hlm") 
if myfile="" nothing=1 else scrEditorSaveLevel(string_replace(myfile,".hlm",""))
}
