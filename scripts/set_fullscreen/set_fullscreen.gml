///@arg fullscreen
function set_fullscreen(argument0) {

	global.fullscreen = argument0;

	if (!global.fullscreen) {
		with (game_controller) {
			window_set_size(window_width,window_height);
			var _x = floor((display_width-window_width)/2);
			var _y = floor((display_height-window_height)/2);
		}
		window_set_position(_x,_y);
	}

	window_set_fullscreen(global.fullscreen);


}
