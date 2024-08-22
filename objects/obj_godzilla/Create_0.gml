/// @description 

// Inherit the parent event
event_inherited();

hp_max = 1500;
hp = hp_max;

state = STATES.IDLE;
action = ACTIONS.IDLE;

attack_current_cooldown = 0;
target_current_cooldown = 0;

target_cooldown = 10;

stun_current_cooldown = 0;
stun_cooldown = 30;

attack_distance = 4;
target_type = "";

target = noone;
target_x = x;
target_y = y;

walk_range = 16;

spd_acceration = 0.1;
spd_normal = random_range(0.4,0.6);
spd = spd_normal;

move_x = 0;
move_y = 0;

egg_time_min = 220;
egg_time_max = 400;
alarm[0] = random_range(egg_time_min,egg_time_max);

sprite_idle = spr_godzilla_idle;