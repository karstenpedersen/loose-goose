/// @description 

if (surface_exists(floor_surface)) {

} else {
	floor_surface = surface_create(room_width,room_height);
}

if (global.message_can_switch) {
	if (global.goose_total_count <= 0) {
		global.message_next = "Giant mutant egg on the highway";
	} else if (instance_exists(obj_godzilla)) {
		global.message = choose("Goose is on the loose","The goose is on a killing spree!","Stay tuned","GMTK Game Jam 2020!","Goose, Goose, Goose... GOOOOOOSE!");
	} else {
		global.message_next = "The goose is dead!";
	}
	global.message_spin_count = 2;
	global.message_can_switch = false;
} else {
	if (global.message_spin_count <= 0) {
		global.message_can_switch = true;
	}
}

if (alarm[0] <= 0) {
	alarm[0] = 360;
}

if (global.citizen_count <= global.civlians_min) {
	if (keyboard_check_pressed(vk_space)) {
		instance_create_layer(room_width/2,room_height/2,"objects",obj_nuke);
		global.message_next = "The president launched a nuke!";
		global.message_can_switch = false;
		global.message_spin_count = 3;
		global.mission_failed = true;
		global.game_ended = true;
	}
} else if ((instance_number(obj_godzilla)+instance_number(obj_egg)) <= 0) {
	global.game_ended = true;
}