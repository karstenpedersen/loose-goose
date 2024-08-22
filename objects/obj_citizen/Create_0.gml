/// @description 

// Inherit the parent event
event_inherited();

hp = 1;

state = STATES.IDLE;
action = ACTIONS.IDLE;

move_to_x = x;
move_to_y = y;

spd_normal = 0.1;
spd = spd_normal;

flee_distance = 24;
walk_range = 32;

target_x = x;
target_y = y;

population_increase = 1;

alarm[0] = 1;

image_speed = 0;
image_index = irandom(image_number-1);