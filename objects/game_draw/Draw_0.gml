/// @description 

if (instance_exists(level_controller)) {
	with (level_controller) {
		if (surface_exists(floor_surface)) {
			draw_surface_ext(floor_surface,0,0,1,1,0,c_ltgray,1);
		}
	}
}
/*
if (ds_exists(depth_grid,ds_type_grid)) {
	var _height = ds_grid_height(depth_grid);
	for (var _i = 0; _i < _height; _i++) {
		var _obj = depth_grid[# 0,_i];
		if (!is_undefined(_obj) && instance_exists(_obj)) {
			with (_obj) {
				event_perform(ev_draw,0);
			}
		}
	}
}