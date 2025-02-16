if global.editor = true {
	room = rmEditor;
	audio_stop_sound(sndStaticVHS);
} 
else 
{
	room = rmRestart;
	audio_stop_sound(sndStaticVHS);
}
