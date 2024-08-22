/// @description 

radius += radius_increase;

collision_circle_list(x,y,radius+4,par_object,false,true,collision_list,false);

var _obj;
for (var _i = 0; _i < ds_list_size(collision_list); _i++) {
	_obj = ds_list_find_value(collision_list,_i);
	if (ds_list_find_index(damaged_list,_obj) == -1) {
		with (_obj) {
			hp -= other.damage;
		}
		ds_list_add(damaged_list,_obj);
	}
}

if (radius >= radius_max) instance_destroy();