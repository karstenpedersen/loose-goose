/// @description 

add_to_surface(x,y,spr_effect_egg_liquid,0,1,1,0);
repeat (5) {
	create_effect(x,y,spr_effect_egg,random_range(1,3),0,360,3);
}

instance_create_layer(x,y,"objects",obj_godzilla);
global.goose_total_count++;
instance_destroy();