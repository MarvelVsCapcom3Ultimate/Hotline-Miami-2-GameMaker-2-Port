if wait>0 {
wait-=1
} else {
image_speed=0
}
if !instance_exists(objConversation) talk=0
if instance_exists(objConversation) {
if talk=0 {talk=1 image_speed=0.25 wait=200}
}
objCourtReporterTable.image_speed=image_speed
