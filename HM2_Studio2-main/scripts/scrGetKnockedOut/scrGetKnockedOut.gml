function scrGetKnockedOut() {
	if object_get_parent(object_index)=objEGang return sprEGangGetUp
	if object_get_parent(object_index)=objEMafia {if instance_exists(objLSD) return sprEMafiaGetUpLSD else return sprEMafiaGetUp}
	if object_get_parent(object_index)=objPolice return sprPoliceGetUp
	if object_get_parent(object_index)=objColombian return sprColombianGetUp
	if object_get_parent(object_index)=objGuard return sprGuardGetUp



}
