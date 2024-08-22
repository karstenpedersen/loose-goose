/// @description 

#region Input
i_up = keyboard_check(ord("W"));
i_right = keyboard_check(ord("A"));
i_down = keyboard_check(ord("S"));
i_left = keyboard_check(ord("D"));
#endregion

i_move = mouse_check_button(mb_left);

#region Movement

if (global.goose_total_count > 0) {
	var _a;

	if (i_up) {
		_a = -global.camera_angle-270;
		x += lengthdir_x(spd,_a);
		y += lengthdir_y(spd,_a);
	}
	if (i_left) {
		_a = -global.camera_angle;
		x += lengthdir_x(spd,_a);
		y += lengthdir_y(spd,_a);
	}
	if (i_down) {
		_a = -global.camera_angle-90;
		x += lengthdir_x(spd,_a);
		y += lengthdir_y(spd,_a);
	}
	if (i_right) {
		_a = -global.camera_angle-180;
		x += lengthdir_x(spd,_a);
		y += lengthdir_y(spd,_a);
	}

	var _b = CAMERA_WIDTH/2;
	x = clamp(x,_b,room_width-_b);
	_b = CAMERA_HEIGHT/2;
	y = clamp(y,_b,room_height-_b);
}
#endregion

if (global.goose_total_count > 0) {
	if (mouse_check_button(mb_left) && attack_current_cooldown <= 0) {
		if (weapon == WEAPONS.MISSILE) {
			instance_create_layer(mouse_x,mouse_y,"objects",obj_missile);
			attack_current_cooldown = missile_attack_cooldown;
			launched_missiles++;
		}
	}
}

if (launched_missiles > 0 && !display_missile_text) {
	global.message_next = "The military has launched missiles                        Hope they can aim";
	global.message_can_switch = false;
	global.message_spin_count = 2;
	display_missile_text = true;
}

attack_current_cooldown--;