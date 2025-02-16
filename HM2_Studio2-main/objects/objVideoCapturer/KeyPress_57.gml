if global.recording=false {
i=1;
while file_exists("video"+string(i)+".avi") i+=1;
filename="video"+string(i)+".avi";
vcapture_begin(window_handle(),filename,room_speed);
global.recording=true
} else {
vcapture_save()
global.recording=false
}
