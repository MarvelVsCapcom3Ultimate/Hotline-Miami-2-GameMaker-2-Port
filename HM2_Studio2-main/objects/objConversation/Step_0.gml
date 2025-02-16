if reload>0 reload-=1
if room=rmLSDGate and current=1 {
if index<7 index+=0.15
exit
}
if line1[current]="..." and line2[current]="" index=0 else index+=indexspeed
