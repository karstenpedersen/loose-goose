///@arg x
///@arg y
///@arg sprite
///@arg index
///@arg xscale
///@arg yscale
///@arg rot
function add_to_surface(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {

	var _x = argument0;
	var _y = argument1;
	var _sprite = argument2;
	var _index = argument3;
	var _xscale = argument4;
	var _yscale = argument5;
	var _rot = argument6;

	if (instance_exists(level_controller)) {
		with (level_controller) {
			if (surface_exists(floor_surface)) {
				surface_set_target(floor_surface);

				draw_sprite_ext(_sprite,_index,_x,_y,_xscale,_yscale,_rot,c_white,1);

				surface_reset_target();
			} else {
				floor_surface = surface_create(room_width,room_height);
			}
		}
	}


}
