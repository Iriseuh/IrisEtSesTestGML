// Collisions

if(place_meeting(x + hspd, y, leMur)){
	while (!place_meeting(x + sign(hspd), y, leMur)){
		x = x + sign(hspd);
	}
	hspd = 0;
}

x = x - hspd;

if(place_meeting(x, y + vspd, leMur)){
	while (!place_meeting(x, y + sign(vspd), leMur)){
		y = y + sign(vspd);
	}
	vspd = 0;
}

y = y + vspd;

if(place_meeting(x, y + 1, leMur)){
	vspd = -10
}