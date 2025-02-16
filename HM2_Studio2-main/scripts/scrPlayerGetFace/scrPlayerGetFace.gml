function scrPlayerGetFace() {
	if objPlayer.object_index=objPlayerZebra return sprMaskZebra
	if objPlayer.object_index=objPlayerTiger return sprMaskTiger
	if objPlayer.object_index=objPlayerBear return sprMaskBear
	if objPlayer.object_index=objPlayerSwanChainsaw return sprMaskSwan1
	return sprFacePayday



}
