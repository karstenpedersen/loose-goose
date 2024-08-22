/// @description 

if (!outside_view) {
	if (distance_to_object(game_camera) <= CAMERA_WIDTH/2+24) {
		var x_axis = lengthdir_x(1,global.camera_angle-90);
		var y_axis = lengthdir_y(1,global.camera_angle+90);
		var i;
		for (i = height; i < image_number; i++) {
			draw_sprite_ext(sprite_index,i,x+(i*x_axis)-lengthdir_x(height,global.camera_angle-90),y+(i*y_axis)-lengthdir_y(height,-global.camera_angle+90),image_xscale,image_yscale,image_angle,c_white,1);
		}
	}
}