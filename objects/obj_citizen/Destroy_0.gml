/// @description 

create_effect(x,y,spr_effect_blood_citizen,0.5,0,360,5);

var _r = 20;
var _angle = image_angle+random_range(-_r,_r);
//add_to_surface(x,y,sprite_index,image_index,image_xscale,image_yscale,_angle);

global.citizen_count--;
global.civilianz_killed++;
global.material_cost += 10000;