if sprite_index=sprBearWalkSpecial {
sprite_index=sprBearHolsterWeapons
ammo=0
mags=0
global.magammo=0
image_index=0
}
if sprite_index=sprBearHolsterWeapons {
alarm[1]=2
exit
}
active=0
aimon=0
sprite_index=sprBearWalkie
image_index=0
legindex=0
objEffector.talked=0
talks=1
