function draw_sprite_stacked() {
	var x_axis = lengthdir_x(1,global.camera_angle-90);
	var y_axis = lengthdir_y(1,global.camera_angle+90);
	var i;
	for (i = 0; i < image_number; i++) {
		draw_sprite_ext(sprite_index,i,x+(i*x_axis),y+(i*y_axis),image_xscale,image_yscale,image_angle,c_white,1);
	}


}
