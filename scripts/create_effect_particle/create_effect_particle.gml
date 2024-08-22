///@arg x
///@arg y
///@arg sprite
///@arg speed
///@arg dir_min
///@arg dir_max
///@arg amount
function create_effect_particle(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {

	var _x = argument0;
	var _y = argument1;
	var _sprite = argument2;
	var _speed = argument3;
	var _dir_min = argument4;
	var _dir_max = argument5;
	var _amount = argument6;

	repeat (_amount) {
		with (instance_create_layer(_x,_y,"objects_floor",obj_effect_particle)) {
			sprite_index = _sprite;
			speed = _speed;
			direction = random_range(_dir_min,_dir_max);
			image_angle = direction;
		}
	}


}
