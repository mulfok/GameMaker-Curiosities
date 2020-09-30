///@desc Help
//Draw Pentagon Shape
for (var j = 0; j < attribs; j++) {
	//Draw Splices
	draw_line_colour(
		xx,
		yy,
		xx + (dist) * dsin((j * angle)),
		yy - (dist) * dcos((j * angle)),
		c_gray,
		c_gray
	);
}

var per, mofo;

//Draw Graph
draw_primitive_begin(pr_linestrip);
	//Draw main points
	for (var i = 0; i < attribs; i++) {
		per = (attribute[i]/maxval) * 100;
		mofo = (dist/100) * per;
		
		draw_vertex_colour(xx+mofo*dsin((angle*i)),yy-mofo*dcos((angle*i)),c_blue,1);
	}
	
	//Close polygon
	per = (attribute[0]/maxval) * 100;
	mofo = (dist/100) * per;
	
	draw_vertex_colour(xx+mofo*dsin(0),yy-mofo*dcos(0),c_blue,1);
	
draw_primitive_end();
