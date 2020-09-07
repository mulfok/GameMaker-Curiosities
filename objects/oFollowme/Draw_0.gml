///@desc Draw
//draw_path(path,0,0,true);
draw_set_colour(c_white);
gpu_set_texrepeat(true);
gpu_set_texfilter(false);

//Draw Ribbon Over Path
draw_primitive_begin_texture(pr_trianglestrip,text);
	for (var i = 0; i < 1; i += stepsize) {
		px = path_get_x(path,i);
		py = path_get_y(path,i);
	
		nx = path_get_x(path,i+(stepsize/4));
		ny = path_get_y(path,i+(stepsize/4));
	
		d = point_direction(px,py,nx,ny) + 90;
	
		l = width / 2;
	
		vx = lengthdir_x(l,d);
		vy = lengthdir_y(l,d);
	
		//Draw Vertices
		draw_vertex_texture(px+vx,py+vy,i*texrepeats,0);
		draw_vertex_texture(px-vx,py-vy,i*texrepeats,1);
		
		//Save Coords
		if (i == 0) {
			s1_x = px+vx;
			s1_y = py+vy;
			s2_x = px-vx;
			s2_y = py-vy;
		}
	}
	
	if (!path_get_closed(path)) {
		px = path_get_x(path,i);
		py = path_get_y(path,i);
	
		nx = path_get_x(path,i-(stepsize/4));
		ny = path_get_y(path,i-(stepsize/4));
	
		d = point_direction(px,py,nx,ny) - 90;
	
		l = width / 2;
	
		vx = lengthdir_x(l,d);
		vy = lengthdir_y(l,d);
	
		//Draw Vertices
		draw_vertex_texture(px+vx,py+vy,i*texrepeats,0);
		draw_vertex_texture(px-vx,py-vy,i*texrepeats,1);
	} else {
		//Draw Vertices
		draw_vertex_texture(s1_x,s1_y,i*texrepeats,0);
		draw_vertex_texture(s2_x,s2_y,i*texrepeats,1);
	}
	
draw_primitive_end();
