function scrPlayerGetWeapon(argument0, argument1, argument2) {
	with objPlayer scrThrowWeapon()
	objPlayer.image_speed=0
	if argument1=objHammer {
	if argument0=objPigButcher {
	objPlayer.sprite_index=sprPigWalkHammer
	}
	}

	if argument1=objSword {
	if argument0=objSon {
	objPlayer.sprite_index=sprSonWalkSword
	}
	}

	if argument1=objBat {
	if argument0=objWriter {
	if objPlayer.kills<2 objPlayer.sprite_index=sprWriterWalkBat else objPlayer.sprite_index=sprWriter2WalkBat
	}
	if argument0=objRat {
	objPlayer.sprite_index=sprRatWalkBat
	}
	if argument0=objPlayerHenchman {
	objPlayer.sprite_index=sprHenchmanWalkBat
	}
	if argument0=objPigButcher {
	objPlayer.sprite_index=sprPigWalkBat
	}
	if argument0=objPlayerZebra {
	objPlayer.sprite_index=sprZebraWalkBat
	}
	if argument0=objPlayerBear {
	objPlayer.sprite_index=sprBearWalkBat
	}
	if argument0=objCop {
	objPlayer.sprite_index=sprCopWalkBat
	}
	if argument0=objPlayerCobra {
	objPlayer.sprite_index=sprCobraWalkBat
	}
	}

	if argument1=objBottle {
	if argument0=objPlayerCobra {
	objPlayer.sprite_index=sprCobraWalkBottle
	}
	}

	if argument1=objStick {
	if argument0=objPigButcher {
	objPlayer.sprite_index=sprPigWalkStick
	}
	if argument0=objSon {
	objPlayer.sprite_index=sprSonWalkStick
	}
	if argument0=objCop {
	objPlayer.sprite_index=sprCopWalkStick
	}
	}

	if argument1=objTaser {
	if argument0=objPigButcher {
	objPlayer.sprite_index=sprPigWalkTaser
	}
	}

	if argument1=objClub {
	if argument0=objPlayerCobra {
	objPlayer.sprite_index=sprCobraWalkClub
	}
	if argument0=objWriter {
	if objPlayer.kills<2 objPlayer.sprite_index=sprWriterWalkClub
	}
	if argument0=objRat {
	objPlayer.sprite_index=sprRatWalkClub
	}
	if argument0=objSon {
	objPlayer.sprite_index=sprSonWalkClub
	}
	if argument0=objPlayerBear {
	objPlayer.sprite_index=sprBearWalkClub
	}
	if argument0=objPlayerZebra {
	objPlayer.sprite_index=sprZebraWalkClub
	}
	}

	if argument1=objChain {
	if argument0=objPlayerZebra {
	objPlayer.sprite_index=sprZebraWalkChain
	}
	if argument0=objWriter {
	if objPlayer.kills<2 objPlayer.sprite_index=sprWriterWalkChain else objPlayer.sprite_index=sprWriter2WalkChain
	}
	if argument0=objPlayerHenchman {
	objPlayer.sprite_index=sprHenchmanWalkChain
	}
	if argument0=objCop {
	objPlayer.sprite_index=sprCopWalkChain
	}
	if argument0=objPlayerBear {
	objPlayer.sprite_index=sprBearWalkChain
	}
	}

	if argument1=objKnife or argument1=objButterfly {
	if argument0=objWriter {
	if objPlayer.kills>=2 objPlayer.sprite_index=sprWriter2WalkKnife
	}
	if argument0=objRat {
	objPlayer.sprite_index=sprRatWalkKnife
	}
	if argument0=objSon {
	objPlayer.sprite_index=sprSonWalkKnife
	}
	if argument0=objPlayerHenchman {
	objPlayer.sprite_index=sprHenchmanWalkKnife
	}
	if argument0=objPlayerZebra {
	objPlayer.sprite_index=sprZebraWalkKnife
	}
	if argument0=objPlayerBear {
	objPlayer.sprite_index=sprBearWalkKnife
	}
	if argument0=objCop {
	objPlayer.sprite_index=sprCopWalkKnife
	}
	if argument0=objPlayerCobra {
	objPlayer.sprite_index=sprCobraWalkKnife
	}
	}

	if argument1=objPipe {
	if argument0=objWriter{
	if objPlayer.kills<2 objPlayer.sprite_index=sprWriterWalkPipe
	}
	if argument0=objSon {
	objPlayer.sprite_index=sprSonWalkPipe
	}
	if argument0=objPlayerHenchman {
	objPlayer.sprite_index=sprHenchmanWalkPipe
	}
	if argument0=objPlayerZebra {
	objPlayer.sprite_index=sprZebraWalkPipe
	}
	if argument0=objPlayerBear {
	objPlayer.sprite_index=sprBearWalkPipe
	}
	if argument0=objCop {
	objPlayer.sprite_index=sprCopWalkPipe
	}
	}

	if argument1=objShotgun {
	if argument0=objSonLSD {
	objPlayer.sprite_index=sprSonWalkShotgunLSD
	objPlayer.ammo=argument2
	}
	if argument0=objSon {
	objPlayer.sprite_index=sprSonWalkShotgun
	objPlayer.ammo=argument2
	}
	if argument0=objWriter {
	if objPlayer.kills<2 {
	objPlayer.sprite_index=sprWriterDisarmShotgun
	objPlayer.image_speed=0.5
	objPlayer.ammo=argument2
	objPlayer.image_index=0
	} else {
	objPlayer.sprite_index=sprWriter2WalkShotgun
	objPlayer.ammo=argument2
	}
	}
	if argument0=objRat {
	objPlayer.sprite_index=sprRatWalkShotgun
	objPlayer.ammo=argument2
	}
	if argument0=objPlayerHenchman {
	objPlayer.sprite_index=sprHenchmanWalkShotgun
	objPlayer.ammo=argument2
	}
	if argument0=objPlayerZebra {
	objPlayer.sprite_index=sprZebraWalkShotgun
	objPlayer.ammo=argument2
	}
	if argument0=objPlayerBear {
	objPlayer.sprite_index=sprBearWalkShotgun
	objPlayer.ammo=argument2
	}
	if argument0=objCop {
	objPlayer.sprite_index=sprCopWalkShotgun
	objPlayer.ammo=argument2
	}
	if argument0=objPlayerCobra {
	objPlayer.sprite_index=sprCobraWalkShotgun
	objPlayer.ammo=argument2
	}
	if argument0=objPigButcher {
	objPlayer.sprite_index=sprPigWalkShotgun
	objPlayer.ammo=argument2
	}
	}

	if argument1=objKalashnikov {
	if argument0=objPlayerCobra {
	objPlayer.sprite_index=sprCobraWalkKalashnikov
	objPlayer.ammo=argument2
	}
	if argument0=objRat {
	objPlayer.sprite_index=sprRatWalkKalashnikov
	objPlayer.ammo=argument2
	}
	if argument0=objWriter {
	if objPlayer.kills<2 {
	objPlayer.sprite_index=sprWriterDisarmKalashnikov
	objPlayer.image_speed=0.2
	objPlayer.image_index=1
	} else {
	objPlayer.sprite_index=sprWriter2WalkKalashnikov
	objPlayer.ammo=argument2
	}
	}
	if argument0=objPlayerBear {
	objPlayer.sprite_index=sprBearWalkKalashnikov
	objPlayer.ammo=argument2
	}
	if argument0=objPlayerZebra {
	objPlayer.sprite_index=sprZebraWalkKalashnikov
	objPlayer.ammo=argument2
	}
	if argument0=objSon {
	objPlayer.sprite_index=sprSonWalkKalashnikov
	objPlayer.ammo=argument2
	}
	}

	if argument1=objMP5 {
	if argument0=objPlayerCobra {
	objPlayer.sprite_index=sprCobraWalkMP5
	objPlayer.ammo=argument2
	}
	}

	if argument1=objSilencer {
	if argument0=objSon {
	objPlayer.sprite_index=sprSonWalkSilencer
	objPlayer.ammo=argument2
	}
	if argument0=objPlayerBear {
	objPlayer.sprite_index=sprBearWalkSilencer
	objPlayer.ammo=argument2
	}
	if argument0=objPlayerZebra {
	objPlayer.sprite_index=sprZebraWalkSilencer
	objPlayer.ammo=argument2
	}
	if argument0=objRat {
	objPlayer.sprite_index=sprRatWalkSilencer
	objPlayer.ammo=argument2
	}
	if argument0=objPlayerHenchman {
	objPlayer.sprite_index=sprHenchmanWalkSilencer
	objPlayer.ammo=argument2
	}
	if argument0=objWriter {
	if objPlayer.kills<2 {
	objPlayer.sprite_index=sprWriterDisarmSilencer
	objPlayer.image_speed=0.2
	objPlayer.image_index=1
	} else {
	objPlayer.sprite_index=sprWriter2WalkSilencer
	objPlayer.ammo=argument2
	}
	}
	if argument0=objPlayerCobra {
	objPlayer.sprite_index=sprCobraWalkSilencer
	objPlayer.ammo=argument2
	}
	if argument0=objCop {
	objPlayer.sprite_index=sprCopWalkSilencer
	objPlayer.ammo=argument2
	}
	}

	if argument1=objDoubleBarrel or argument1=objShotgunWall {
	if argument0=objPigButcher {
	objPlayer.sprite_index=sprPigWalkDoubleBarrel
	objPlayer.ammo=argument2
	}
	if argument0=objRat {
	objPlayer.sprite_index=sprRatWalkDoubleBarrel
	objPlayer.ammo=argument2
	}
	if argument0=objWriter {
	if objPlayer.kills<2 {
	objPlayer.sprite_index=sprWriterDisarmDoubleBarrel
	objPlayer.image_speed=0.15
	objPlayer.image_index=1
	} else {
	objPlayer.sprite_index=sprWriter2WalkDoubleBarrel
	objPlayer.ammo=argument2
	}
	}
	if argument0=objPlayerCobra {
	objPlayer.sprite_index=sprCobraWalkDoubleBarrel
	objPlayer.ammo=argument2
	}
	if argument0=objPlayerBear {
	objPlayer.sprite_index=sprBearWalkDoubleBarrel
	objPlayer.ammo=argument2
	}
	if argument0=objPlayerZebra {
	objPlayer.sprite_index=sprZebraWalkDoubleBarrel
	objPlayer.ammo=argument2
	}
	}

	if argument1=objUzi {
	if argument0=objWriter {
	if objPlayer.kills<2 {
	objPlayer.sprite_index=sprWriterDisarmUzi
	objPlayer.image_speed=0.2
	objPlayer.image_index=1
	} else {
	objPlayer.sprite_index=sprWriter2WalkUzi
	objPlayer.ammo=argument2
	}
	}
	if argument0=objRat {
	objPlayer.sprite_index=sprRatWalkUzi
	objPlayer.ammo=argument2
	}
	if argument0=objPlayerHenchman {
	objPlayer.sprite_index=sprHenchmanWalkUzi
	objPlayer.ammo=argument2
	}
	if argument0=objPlayerZebra {
	objPlayer.sprite_index=sprZebraWalkUzi
	objPlayer.ammo=argument2
	}
	if argument0=objPlayerBear {
	objPlayer.sprite_index=sprBearWalkUzi
	objPlayer.ammo=argument2
	}
	if argument0=objCop {
	objPlayer.sprite_index=sprCopWalkUzi
	objPlayer.ammo=argument2
	}
	if argument0=objSon {
	objPlayer.sprite_index=sprSonWalkUzi
	objPlayer.ammo=argument2
	}
	if argument0=objPlayerCobra {
	objPlayer.sprite_index=sprCobraWalkUzi
	objPlayer.ammo=argument2
	}
	}

	if argument1=obj9mm {
	if argument0=objPlayerHenchman {
	objPlayer.sprite_index=sprHenchmanWalk9mm
	objPlayer.ammo=argument2
	}
	if argument0=objPlayerZebra {
	objPlayer.sprite_index=sprZebraWalk9mm
	objPlayer.ammo=argument2
	}
	if argument0=objPlayerBear {
	objPlayer.sprite_index=sprBearWalk9mm
	objPlayer.ammo=argument2
	}
	if argument0=objCop {
	objPlayer.sprite_index=sprCopWalk9mm
	objPlayer.ammo=argument2
	}
	if argument0=objPigButcher {
	objPlayer.sprite_index=sprPigWalk9mm
	objPlayer.ammo=argument2
	}
	if argument0=objWriter {
	if objPlayer.kills<2 {
	objPlayer.sprite_index=sprWriterDisarm9mm
	objPlayer.image_speed=0.2
	objPlayer.image_index=1
	} else {
	objPlayer.sprite_index=sprWriter2Walk9mm
	objPlayer.ammo=argument2
	}
	}

	}

	if argument1=objM16 {
	if argument0=objWriter {
	if objPlayer.kills<2 {
	objPlayer.sprite_index=sprWriterDisarmM16
	objPlayer.image_speed=0.2
	objPlayer.image_index=1
	} else {
	objPlayer.sprite_index=sprWriter2WalkM16
	objPlayer.ammo=argument2
	}
	}
	if argument0=objPlayerCobra {
	objPlayer.sprite_index=sprCobraWalkM16
	objPlayer.ammo=argument2
	}
	if argument0=objRat {
	objPlayer.sprite_index=sprRatWalkM16
	objPlayer.ammo=argument2
	}
	if argument0=objPlayerBear {
	objPlayer.sprite_index=sprBearWalkM16
	objPlayer.ammo=argument2
	}
	if argument0=objPlayerZebra {
	objPlayer.sprite_index=sprZebraWalkM16
	objPlayer.ammo=argument2
	}
	}

	if argument1=objMP5 {
	if argument0=objPlayerCobra {
	objPlayer.sprite_index=sprCobraWalkMP5
	objPlayer.ammo=argument2
	}
	}

	if argument1=objFamae {
	if argument0=objSon {
	objPlayer.sprite_index=sprSonWalkFamae
	objPlayer.ammo=argument2
	}
	if argument0=objCop {
	objPlayer.sprite_index=sprCopWalkFamae
	objPlayer.ammo=argument2
	}
	}

	if argument1=objAxe {
	if argument0=objSonLSD {
	objPlayer.sprite_index=sprSonWalkAxeLSD
	objPlayer.ammo=argument2
	}
	}

	if argument1=objMagnum {
	if argument0=objSon {
	objPlayer.sprite_index=sprSonWalkMagnum
	objPlayer.ammo=argument2
	}
	if argument0=objSonLSD {
	objPlayer.sprite_index=sprSonWalkMagnumLSD
	objPlayer.ammo=argument2
	}
	if argument0=objWriter {
	objPlayer.sprite_index=sprWriterWalkMagnum
	objPlayer.ammo=argument2
	}
	}

	if argument1=objMendoza {
	if argument0=objSon {
	objPlayer.sprite_index=sprSonWalkMendoza
	objPlayer.ammo=argument2
	}
	if argument0=objCop {
	objPlayer.sprite_index=sprCopWalkMendoza
	objPlayer.ammo=argument2
	}
	}

	if argument1=objMachete {
	if argument0=objSon {
	objPlayer.sprite_index=sprSonWalkMachette
	}
	if argument0=objCop {
	objPlayer.sprite_index=sprCopWalkMachete
	}
	}

	sound_play(sndPickUpWeapon)



}
