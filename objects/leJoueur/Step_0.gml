// Déétéction de touche

press_droite = keyboard_check(vk_right);
press_gauche = keyboard_check(vk_left);
press_jump = keyboard_check_pressed(vk_space);

// Mouvements du personnage

var move = press_droite - press_gauche;
var djump = 0;
hspd = move * pspeed;
vspd = vspd + grav;

if(place_meeting(x, y + 1, leMur)) && (press_jump){
	vspd = -10
	sprite_index = jumpPlayer;
}

if (keyboard_check(vk_shift)){
	pspeed = spdboost;
}else{
	pspeed = walkspd;
}


// Collisions

if(place_meeting(x + hspd, y, leMur)){
	while (!place_meeting(x + sign(hspd), y, leMur)){
		x = x + sign(hspd);
	}
	hspd = 0;
}

x = x + hspd;

if(place_meeting(x, y + vspd, leMur)){
	while (!place_meeting(x, y + sign(vspd), leMur)){
		y = y + sign(vspd);
	}
	vspd = 0;
}

y = y + vspd;

if hspd == 0 {
	sprite_index = idolJoueur;	
}
else{
	sprite_index = walkJoueur;
}


if hspd !=0 {
	image_xscale = sign(hspd)
}