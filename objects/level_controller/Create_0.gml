/// @description 

global.game_started = true;
global.game_ended = false;

global.citizen_count = 0;
global.goose_total_count = 0;

floor_surface = surface_create(room_width,room_height);

global.message_can_switch = false;
global.message_spin_count = 3;
global.message = "Giant mutant egg on the highway";
global.message_next = "Find another route, if you are driving by";
global.points = 0;

global.mission_failed = false;

instance_create_layer(obj_egg.x,obj_egg.y,"objects",obj_player);

global.material_cost = 0;
global.civilianz_killed = 0;
global.civlians_min = 500;