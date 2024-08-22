/// @description 

damage = 10;

radius_max = 9;
radius_increase = 0.5;
radius = 2;

collision_list = ds_list_create();
damaged_list = ds_list_create();

audio_play_sound(snd_hit,50,false);

add_to_surface(x,y,spr_effect_explosion,irandom(sprite_get_number(spr_effect_explosion)-1),1,1,0);