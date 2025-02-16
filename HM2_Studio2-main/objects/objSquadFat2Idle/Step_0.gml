if talked=1 {
if !instance_exists(objConversation) {
bgm_Stop(global.currentsong)
global.title="INTO THE PIT"
global.subtitle="11TH SCENE"
global.level=rmFansHeadQuarters3
global.rewind=0
room_goto(rmVHS)
}
}
