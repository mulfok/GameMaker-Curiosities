///@desc Drag Point
if (point_in_rectangle(mouse_x,mouse_y,x-4,y-4,x+4,y+4)) {
	if (mouse_check_button_pressed(mb_left)) {
		drag = true;
	}
}

if (mouse_check_button_released(mb_left)) {
	drag = false;
}

if (drag) {
	path_change_point(path,point,mouse_x,mouse_y,room_speed);
		
	x = mouse_x;
	y = mouse_y;
}
