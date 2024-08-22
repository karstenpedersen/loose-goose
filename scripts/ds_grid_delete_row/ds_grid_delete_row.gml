///@arg grid
///@arg row
function ds_grid_delete_row(argument0, argument1) {

	var _grid = argument0;
	var _row = argument1;

	var _grid_width = ds_grid_width(_grid);
	var _grid_height = ds_grid_height(_grid);

	ds_grid_set_grid_region(_grid,_grid,0,_row+1,_grid_width-1,_grid_height-1,0,_row);
	ds_grid_resize(_grid,_grid_width,_grid_height-1);


}
