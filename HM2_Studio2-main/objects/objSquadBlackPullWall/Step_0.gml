if wait>0 {wait-=1 exit}
if image_index<12 {
objPlayer.active=0
objPlayer.aimon=0
objPlayer.dir=90
image_index+=0.1
} else {
if y<760 {y+=1 x+=1 image_angle=scrRotate(image_angle,90,5)} else {
objPlayer.active=1
objPlayer.aimon=1
}
}
