//Draw FPS
draw_set_font(fntDefault);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_text(320,0,"FPS: " + string(floor(fps_real)));

//Draw Text
draw_set_font(fntDefault);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(1,1,"ANGLE: "+string(angle)+"\nRANDOMISING: "+string(rand));
for (var i = 0; i < attribs; i++) {
	var fh = string_height("Q");
	
	draw_text(1,(fh*2)+(fh*i),"ATTRIBUTE 0"+string(i)+": "+string(attribute[i]));
}
