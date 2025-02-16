function scrEditorSortFurniture() {
	list=ds_list_create()
	i=0 
	repeat (3000) {
	if sprite_exists(i) {
	if string_copy(sprite_get_name(i),4,4)="ELis" or string_copy(sprite_get_name(i),4,4)="Elis" ds_list_add(list,string_copy(sprite_get_name(i),8,string_length(sprite_get_name(i))-7))
	}
	i+=1
	}



}
