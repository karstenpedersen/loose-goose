/// @description 

#region Set target
if (instance_exists(obj_player)) {
	target = obj_player;
} else {
	target = noone;
	if (instance_exists(obj_egg)) {
		x = obj_egg.x;
		y = obj_egg.y;
	} else if (instance_exists(obj_godzilla)) {
		x = obj_godzilla.x;
		y = obj_godzilla.y;
	}
}
#endregion

if (can_zoom) {
	#region Zoom
	if (mouse_check_button_pressed(mb_middle)) {
		#region Default
		width = default_width;
		height = default_height;
		event_user(0);
		#endregion
	} else if (keyboard_check_pressed(vk_pageup) && width > default_width/2) {
		#region Zoom in
		width = width-default_width/10;
		height = height-default_height/10;
		event_user(0);
		#endregion
	} else if (keyboard_check_pressed(vk_pagedown) && width < default_width*2) {
		#region Zoom out
		width = width+default_width/10;
		height = height+default_height/10;
		event_user(0);
		#endregion
	}
	#endregion
}

i_rotate_right = keyboard_check(ord("E"));
i_rotate_left = keyboard_check(ord("Q"));

if (global.goose_total_count <= 0) {
	global.camera_angle -= 0.5;
} else {
	if (i_rotate_right || i_rotate_left) {
		rotate_spd = lerp(rotate_spd,rotate_spd_max,rotate_spd_acceleration);
	
		if (i_rotate_right) global.camera_angle -= rotate_spd;
		else if (i_rotate_left) global.camera_angle += rotate_spd;
	} else {
		rotate_spd = lerp(rotate_spd,0,rotate_spd_deacceleration);
	}
}
camera_set_view_angle(CAMERA,global.camera_angle);

#region Follow target
if instance_exists(target) {
	xTo = target.x;
	yTo = target.y;
}

var _num = 15;
x += (xTo-x)/_num;
y += (yTo-y)/_num;

x = clamp(x,view_w_half+buff,room_width-view_w_half-buff);
y = clamp(y,view_h_half+buff,room_height-view_h_half-buff);

#region Screen shake
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));
#endregion

// Update camera
global.camera_x = round(x-view_w_half);
global.camera_y = round(y-view_h_half);
camera_set_view_pos(CAMERA,global.camera_x,global.camera_y);
#endregion


#region Activate and deactivate objects
if (!PAUSED) {
	instance_activate_all();
	
	with (par_building) {
		if (outside_view && distance_to_object(obj_godzilla) > 12) instance_deactivate_object(self);
	}
}
#endregion