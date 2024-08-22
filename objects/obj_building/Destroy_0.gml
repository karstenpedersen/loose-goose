/// @description 

var _r = 4;
repeat (citizens) {
	with (instance_create_layer(x+irandom_range(-_r,_r),y+irandom_range(-_r,_r),"objects",obj_citizen)) {
		population_increase = 0;
	}
}

add_to_surface(x,y,spr_effect_building,irandom(sprite_get_number(spr_effect_building)-1),1,1,0);
screen_shake(2,1);

global.material_cost += choose(75000,100000,125000,150000,175000,200000);