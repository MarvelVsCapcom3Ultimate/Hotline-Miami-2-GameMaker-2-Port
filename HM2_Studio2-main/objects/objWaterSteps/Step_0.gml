if scrMovingPlayerExists() {
with objPlayer {
if legindex>=4 and legindex-(abs(myxspeed)+abs(myyspeed))*0.1*factor<4 {
instance_create(x+scrPosDirX(11,5*left,objPlayer.legdir),y+scrPosDirY(11,5*left,objPlayer.legdir),objWaterSplash)
}
if legindex>=12 and legindex-(abs(myxspeed)+abs(myyspeed))*0.1*factor<12 {
instance_create(x+scrPosDirX(11,-5*left,objPlayer.legdir),y+scrPosDirY(11,-5*left,objPlayer.legdir),objWaterSplash)
}
}
}
