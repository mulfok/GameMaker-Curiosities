//How many things to look out for
rand = false;

//User Changeable
attribs			= 5;
dist			= 75;
maxval			= 100;

//Make some vertices
attribute		= [];
xx				= 158;
yy				= 093;
angle			= 360/attribs;

for (var i = 0; i < attribs; i++) {
	attribute[i] = irandom_range(1,maxval);
}

alarm[0] = 1*room_speed;
