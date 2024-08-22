/// @description 

global.fullscreen = false;

instance_create_layer(0,0,"game",game_controller);
instance_create_layer(0,0,"game",game_camera);
instance_create_layer(mouse_x,mouse_y,"game",game_cursor);
instance_create_depth(0,0,90000,game_draw);

#region Setup rooms
for (var _i = 1; _i <= room_last; _i++) {
	if (room_exists(_i)) {
		room_set_viewport(_i,0,true,0,0,GUI_WIDTH,GUI_HEIGHT);
		room_set_view_enabled(_i,true);
	}
}
#endregion

room_goto(rm_game);