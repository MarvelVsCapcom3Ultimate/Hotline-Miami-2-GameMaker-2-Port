if solid=1 exit
swinger=1
if abs(swingspeed)>3.5 exit
if y<other.y and other.x<x {swingspeed=-1 exit}
if y<other.y and other.x>x {swingspeed=1 exit}
if other.x<x+lengthdir_x(50,image_angle+90) swingspeed=-1 else swingspeed=1
