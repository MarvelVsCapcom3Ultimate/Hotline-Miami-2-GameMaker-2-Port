function string_search(argument0, argument1) {
	var i;
	if string_length(argument1)<=string_length(argument0) {
	i=0
	repeat (string_length(argument0)-string_length(argument1)+1) {
	if string_lower(string_copy(argument0,i+1,string_length(argument1)))=string_lower(argument1) return true
	i+=1
	}
	}
	return false



}
