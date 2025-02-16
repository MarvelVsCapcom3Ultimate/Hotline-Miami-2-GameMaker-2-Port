function scrGetAmmoDraw() {
	if (instance_exists(objPlayer))
	{
		global.ammo = -1;
		global.ammotype = 0;
		if objPlayer.sprite_index=sprZebraWalk9mm {global.maxammo=15 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprZebraWalkUzi {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprZebraWalkShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=2}
		if objPlayer.sprite_index=sprZebraWalkM16 {global.maxammo=20 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprZebraWalkKalashnikov {global.maxammo=24 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprZebraWalkSilencer {global.maxammo=12 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprZebraWalkDoubleBarrel {global.maxammo=2 global.ammo=objPlayer.ammo global.ammotype=2}
		if objPlayer.sprite_index=sprZebraAttack9mm {global.maxammo=15 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprZebraAttackUzi {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprZebraAttackShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=2}
		if objPlayer.sprite_index=sprZebraAttackM16 {global.maxammo=20 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprZebraAttackKalashnikov {global.maxammo=24 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprZebraAttackSilencer {global.maxammo=12 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprZebraAttackDoubleBarrel1 or objPlayer.sprite_index=sprZebraAttackDoubleBarrel2 {global.maxammo=2 global.ammo=objPlayer.ammo global.ammotype=2}
		
		if objPlayer.sprite_index=sprBearWalk9mm {global.maxammo=15 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprBearWalkUzi {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprBearWalkShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=2}
		if objPlayer.sprite_index=sprBearWalkM16 {global.maxammo=20 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprBearWalkKalashnikov {global.maxammo=24 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprBearWalkSilencer {global.maxammo=12 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprBearWalkDoubleBarrel {global.maxammo=2 global.ammo=objPlayer.ammo global.ammotype=2}
		if objPlayer.sprite_index=sprBearAttack9mm {global.maxammo=15 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprBearAttackUzi {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprBearAttackShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=2}
		if objPlayer.sprite_index=sprBearWalkSpecial or objPlayer.sprite_index=sprBearReloadWeapons {global.magammo=objPlayer.mags*64 global.maxammo=64 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprBearAttackM16 {global.maxammo=20 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprBearAttackKalashnikov {global.maxammo=24 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprBearAttackSilencer {global.maxammo=12 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprBearAttackDoubleBarrel1 or objPlayer.sprite_index=sprBearAttackDoubleBarrel2 {global.maxammo=2 global.ammo=objPlayer.ammo global.ammotype=2}
		
		
		
		if objPlayer.sprite_index=sprSonWalkSilencer {global.maxammo=12 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprSonWalkMagnum {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprSonWalkFamae {global.maxammo=20 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprSonWalkMendoza {global.maxammo=32 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprSonWalkShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=2}
		if objPlayer.sprite_index=sprSonWalkKalashnikov {global.maxammo=24 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprSonWalkUzi {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprSonWalkMagnumLSD {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprSonWalkShotgunLSD {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=2}
		if objPlayer.sprite_index=sprSonAttackMagnum {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprSonAttackFamae {global.maxammo=5 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprSonAttackMendoza {global.maxammo=32 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprSonAttackShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=2}
		if objPlayer.sprite_index=sprSonAttackSilencer {global.maxammo=12 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprSonAttackKalashnikov {global.maxammo=24 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprSonAttackUzi {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprSonAttackMagnumLSD {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprSonAttackShotgunLSD {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=2}
		
		if objPlayer.sprite_index=sprHenchmanWalkSilencer {global.maxammo=12 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprHenchmanWalk9mm {global.maxammo=15 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprHenchmanWalkUzi {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprHenchmanWalkShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=2}
		if objPlayer.sprite_index=sprHenchmanAttack9mm {global.maxammo=15 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprHenchmanAttackUzi {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprHenchmanAttackShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=2}
		if objPlayer.sprite_index=sprHenchmanAttackSilencer {global.maxammo=12 global.ammo=objPlayer.ammo global.ammotype=0}
		
		if instance_exists(objPlayerSwanGun) {
		if objPlayerSwanGun.sprite_index=sprSwanWalk9mm {global.maxammo=15 global.ammo=objPlayerSwanGun.ammo global.ammotype=0}
		if objPlayerSwanGun.sprite_index=sprSwanWalkUzi {global.maxammo=30 global.ammo=objPlayerSwanGun.ammo global.ammotype=0}
		if objPlayerSwanGun.sprite_index=sprSwanWalkShotgun {global.maxammo=6 global.ammo=objPlayerSwanGun.ammo global.ammotype=2}
		if objPlayerSwanGun.sprite_index=sprSwanWalkM16 {global.maxammo=20 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayerSwanGun.sprite_index=sprSwanWalkKalashnikov {global.maxammo=24 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayerSwanGun.sprite_index=sprSwanWalkSilencer {global.maxammo=12 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayerSwanGun.sprite_index=sprSwanWalkDoubleBarrel {global.maxammo=2 global.ammo=objPlayer.ammo global.ammotype=2}
		if objPlayerSwanGun.sprite_index=sprSwanAttack9mm {global.maxammo=15 global.ammo=objPlayerSwanGun.ammo global.ammotype=0}
		if objPlayerSwanGun.sprite_index=sprSwanAttackUzi {global.maxammo=30 global.ammo=objPlayerSwanGun.ammo global.ammotype=0}
		if objPlayerSwanGun.sprite_index=sprSwanAttackShotgun {global.maxammo=6 global.ammo=objPlayerSwanGun.ammo global.ammotype=2}
		if objPlayerSwanGun.sprite_index=sprSwanAttackM16 {global.maxammo=20 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayerSwanGun.sprite_index=sprSwanAttackKalashnikov {global.maxammo=24 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayerSwanGun.sprite_index=sprSwanAttackSilencer {global.maxammo=12 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayerSwanGun.sprite_index=sprSwanAttackDoubleBarrel1 or objPlayerSwanGun.sprite_index=sprSwanAttackDoubleBarrel2 {global.maxammo=2 global.ammo=objPlayer.ammo global.ammotype=2}
		}
		
		if objPlayer.sprite_index=sprCopWalk9mm {global.maxammo=15 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprCopWalkUzi {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprCopWalkShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=2}
		if objPlayer.sprite_index=sprCopAttack9mm {global.maxammo=15 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprCopAttackUzi {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprCopAttackShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=0}
		
		if objPlayer.sprite_index=sprPigWalk9mm {global.maxammo=15 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprPigWalkDoubleBarrel {global.maxammo=2 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprPigWalkShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=2}
		if objPlayer.sprite_index=sprPigAttack9mm {global.maxammo=15 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprPigAttackDoubleBarrel1 or objPlayer.sprite_index=sprPigAttackDoubleBarrel2 {global.maxammo=2 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprPigAttackShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=0}
		
		if objPlayer.sprite_index=sprRatWalkKalashnikov {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprRatWalkUzi {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprRatWalkSilencedUzi {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprRatWalkSilencer {global.maxammo=12 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprRatWalkShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=2}
		if objPlayer.sprite_index=sprRatWalkM16 {global.maxammo=20 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprRatWalkDoubleBarrel {global.maxammo=2 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprRatAttackKalashnikov {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprRatAttackUzi {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprRatAttackSilencedUzi {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprRatAttackSilencer {global.maxammo=12 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprRatAttackShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprRatAttackM16 {global.maxammo=20 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprRatAttackDoubleBarrel1 or objPlayer.sprite_index=sprRatAttackDoubleBarrel2 {global.maxammo=2 global.ammo=objPlayer.ammo global.ammotype=0}
		
		if objPlayer.sprite_index=sprWriter2WalkKalashnikov {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprWriter2WalkUzi {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprWriter2Walk9mm {global.maxammo=15 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprWriter2WalkSilencer {global.maxammo=12 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprWriter2WalkShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=2}
		if objPlayer.sprite_index=sprWriter2WalkM16 {global.maxammo=20 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprWriter2WalkDoubleBarrel {global.maxammo=2 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprWriter2AttackKalashnikov {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprWriter2AttackUzi {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprWriter2Attack9mm {global.maxammo=15 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprWriter2AttackSilencer {global.maxammo=12 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprWriter2AttackShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprWriter2AttackM16 {global.maxammo=20 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprWriter2AttackDoubleBarrel1 or objPlayer.sprite_index=sprWriterAttackDoubleBarrel2 {global.maxammo=2 global.ammo=objPlayer.ammo global.ammotype=0}
		
		if objPlayer.sprite_index=sprCobraWalkKalashnikov {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprCobraWalkUzi {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprCobraWalkShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=2}
		if objPlayer.sprite_index=sprCobraWalkM16 {global.maxammo=20 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprCobraWalkSilencer {global.maxammo=12 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprCobraWalkDoubleBarrel {global.maxammo=2 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprCobraAttackKalashnikov {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprCobraAttackUzi {global.maxammo=30 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprCobraAttackShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprCobraAttackM16 {global.maxammo=20 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprCobraAttackSilencer {global.maxammo=12 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprCobraAttackDoubleBarrel1 or objPlayer.sprite_index=sprCobraAttackDoubleBarrel2 {global.maxammo=2 global.ammo=objPlayer.ammo global.ammotype=0}
		
		//if objPlayer.sprite_index=sprNickeWalkUnarmed {global.maxammo=0 global.ammo=objPlayer.ammo global.ammotype=0}
		if objPlayer.sprite_index=sprNickeWalkShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=2}
		if objPlayer.sprite_index=sprNickeWalkMachinegun {global.maxammo=20 global.ammo=objPlayer.ammo global.ammotype=1}
		if objPlayer.sprite_index=sprNickeWalkFlameThrower {global.maxammo=100 global.ammo=objPlayer.ammo global.ammotype=3}
		if objPlayer.sprite_index=sprNickeWalkHeavy {global.maxammo=40 global.ammo=objPlayer.ammo global.ammotype=1}
		if objPlayer.sprite_index=sprNickeWalkSniper {global.maxammo=10 global.ammo=objPlayer.ammo global.ammotype=1}
		if objPlayer.sprite_index=sprNickeAttackShotgun {global.maxammo=6 global.ammo=objPlayer.ammo global.ammotype=2}
		if objPlayer.sprite_index=sprNickeAttackMachinegun {global.maxammo=20 global.ammo=objPlayer.ammo global.ammotype=1}
		if objPlayer.sprite_index=sprNickeAttackFlameThrower {global.maxammo=100 global.ammo=floor(objPlayer.ammo*0.1) global.ammotype=3}
		if objPlayer.sprite_index=sprNickeAttackHeavy {global.maxammo=40 global.ammo=objPlayer.ammo global.ammotype=1}
		if objPlayer.sprite_index=sprNickeAttackSniper {global.maxammo=10 global.ammo=objPlayer.ammo global.ammotype=1}
		//if objPlayer.sprite_index=sprZebraWalk9mm {global.maxammo=15 global.ammo=objPlayer.ammo}
	}



}
