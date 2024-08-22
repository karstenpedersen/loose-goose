/// @description 

/*
if (instance_exists(game_draw)) {
	with (game_draw) {
		if (depth_grid != -1) {
			var _height = ds_grid_height(depth_grid);
			ds_grid_resize(depth_grid,2,_height+1);
			depth_grid[# 0,_height] = other.id;
			depth_grid[# 1,_height] = other.y;
		} else {
			var _height = 1;
			depth_grid = ds_grid_create(2,1);
			depth_grid[# 0,0] = other.id;
			depth_grid[# 1,0] = other.y;
		}
	}
}

visible = false;