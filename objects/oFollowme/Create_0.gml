///@desc Init
//show_debug_overlay(true);

sprite		= sRibbon;
width		= sprite_get_height(sprite);
stepsize	= .04;

path		= pathRibbon;
text		= sprite_get_texture(sprite,0);
texrepeats	= path_get_length(pathRibbon) div sprite_get_height(sprite);

//Create Anchor Points
var i, anchor;

i = 0;
while (i < path_get_number(path)) {
	p_x[i] = path_get_point_x(path,i);
	p_y[i] = path_get_point_y(path,i);
	
	anchor = instance_create_depth(
		path_get_point_x(path,i),
		path_get_point_y(path,i),
		0,
		oAnchor
	);
		
	anchor.path = path;
	anchor.point = i;
	
	i++;
}
