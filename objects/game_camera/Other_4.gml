/// @description 

// Move camera
if (room == rm_game) {
	if (instance_exists(target) && target != noone) {
		x = target.x;
		y = target.y;
		event_user(0);
	} else {
		x = room_width/2;
		y = room_height/2;
	}
} else {
	x = 0;
	y = 0;
}

event_user(0);