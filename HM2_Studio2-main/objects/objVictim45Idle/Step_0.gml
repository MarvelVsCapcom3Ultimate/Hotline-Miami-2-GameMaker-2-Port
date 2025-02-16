if wait>0 wait-=1 else {
test=scrLook(objPlayer.x,objPlayer.y,4) 
if test>0 and test<2 nothing=1 else {
instance_create(x,y-12,objVictim4)
instance_create(x,y+12,objVictim5)
instance_destroy()
}
}
