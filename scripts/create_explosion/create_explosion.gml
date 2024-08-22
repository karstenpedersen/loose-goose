///@arg x
///@arg y
///@arg damage
///@arg radius_max
///@arg radius_increase
function create_explosion(argument0, argument1, argument2, argument3, argument4) {

	var _x = argument0;
	var _y = argument1;
	var _damage = argument2;
	var _radius_max = argument3;
	var _radius_increase = argument4;

	with (instance_create_layer(_x,_y,"objects",obj_explosion)) {
		damage = _damage;
		radius_max = _radius_max;
		radius_increase = _radius_increase;
	}




}
