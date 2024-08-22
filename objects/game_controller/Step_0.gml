/// @description 

if (room == rm_game) {
	if (global.goose_total_count <= 0) {
		if (keyboard_check_pressed(vk_escape)) game_end();
	}
	
	if (global.game_ended) {
		if (keyboard_check_pressed(vk_escape)) {
			game_end();
		} else if (keyboard_check_pressed(vk_space)) {
			game_restart();
		}
	}
}