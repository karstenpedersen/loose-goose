/// @description 


if (global.game_started && alarm[0] <= 0) {
	if (global.goose_total_count <= 0) {
		if (keyboard_check_pressed(vk_space)) {
			alarm[0] = 1;
			global.message_next = "The eggs has hatched";
		}
	} else {
		alarm[0] = 160;
	}
}

if (hp <= 0) {
	audio_play_sound(snd_hit2,50,false);
	instance_destroy();
	create_effect(x,y,spr_effect_egg_destroyed,0,0,0,1);
}