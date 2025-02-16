function scrUpdateSearchList() {
	if searchstring="" ds_list_copy(searchlist,list) else {
	ds_list_clear(searchlist)
	i=0
	repeat (ds_list_size(list)) {
	val=string(ds_list_find_value(list,i))
	if string_search(val,searchstring) ds_list_add(searchlist,ds_list_find_value(list,i))
	i+=1
	}
	//show_message("UPDATED!")
	}
	startpos=0
	select=0

	values=floor(height/14)-1
	if values>ds_list_size(searchlist) values=ds_list_size(searchlist)

	ds_list_sort(searchlist,1)

	if ds_list_size(searchlist)>0 scrEditorSelectFurniture()



}
