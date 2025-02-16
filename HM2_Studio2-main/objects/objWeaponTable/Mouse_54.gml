if current>-1 {
if taken[current]=0 {
i=0 
repeat (5) {
taken[i]=0
i+=1
}
if current=0 {objPlayer.sprite_index=sprNickeWalkMachinegun objPlayer.ammo=20 global.magammo=20}
if current=1 {objPlayer.sprite_index=sprNickeWalkShotgun objPlayer.ammo=6 global.magammo=10}
if current=2 {objPlayer.sprite_index=sprNickeWalkHeavy objPlayer.ammo=40 global.magammo=0}
if current=3 {objPlayer.sprite_index=sprNickeWalkSniper objPlayer.ammo=10 global.magammo=10}
if current=4 {objPlayer.sprite_index=sprNickeWalkFlameThrower objPlayer.ammo=100 global.magammo=0}
global.sprite=objPlayer.sprite_index
taken[current]=1
sound_play(sndPickUpWeapon)
}
}
