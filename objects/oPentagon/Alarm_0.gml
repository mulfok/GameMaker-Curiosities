//Make some vertices
if (rand) {
	attribute = [];
	
	for (i = 0; i < attribs; i++) {
		attribute[i] = irandom_range(1,maxval);
	}
}

alarm[0] = 1*room_speed;
