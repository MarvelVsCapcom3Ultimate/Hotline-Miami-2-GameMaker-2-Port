function scrDrawTexture(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
	var tex,width,height;
	tex=sprite_get_texture(argument0,0)
	width=sprite_get_width(argument0)
	height=sprite_get_height(argument0)
	texture_set_repeat(true)
	draw_primitive_begin_texture(pr_trianglestrip,tex)
	draw_set_color(argument7)
	draw_vertex_texture(argument1,argument2,argument5*(1/width),argument6*(1/height))
	draw_vertex_texture(argument1+argument3,argument2,argument5*(1/width)+(argument3*(1/width)),argument6*(1/height))
	draw_vertex_texture(argument1,argument2+argument4,argument5*(1/width),argument6*(1/height)+(argument4*(1/height)))
	draw_vertex_texture(argument1+argument3,argument2+argument4,argument5*(1/width)+(argument3*(1/width)),argument6*(1/height)+(argument4*(1/height)))
	draw_primitive_end()
	texture_set_repeat(false)



}
