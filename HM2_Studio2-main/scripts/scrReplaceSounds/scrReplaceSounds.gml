function scrReplaceSounds() {
	var i,file,myfile;
	myfile=file_text_open_write(working_directory+"\\soundfiles.txt")
	i=0 
	repeat (200) {
	if sound_exists(i) {
	file=working_directory+"\\"+sound_get_name(i)+".wav"
	//if file_exists(file) sound_replace(i,file,0,1)
	file_text_write_string(myfile,sound_get_name(i)+".wav")
	file_text_writeln(myfile)
	}
	i+=1
	}
	file_text_close(myfile)



}
