/// @description 

with (par_depth) depth_3d(x,y);

if (room == rm_game) {
	if (message_x > -string_width(global.message)) {
		message_x -= 2;
	} else {
		global.message_spin_count--;
		global.message = global.message_next;
		global.message_next = "";
		message_x = GUI_WIDTH;
	}
}
/*
if (ds_exists(depth_grid,ds_type_grid)) {
	var _height = ds_grid_height(depth_grid);
	var _new_depth;
	for (var _i = 0; _i < _height; _i++) {
		var _obj = depth_grid[# 0,_i];
		
		if (is_undefined(_obj) || !instance_exists(_obj)) {
			ds_grid_delete_row(depth_grid,_i);
			continue;
		}
		
		_new_depth = compute_3d_depth(_obj.x,_obj.y);
		
		depth_grid[# 1,_i] = _new_depth;
	}
	ds_grid_sort(depth_grid,1,false);
}