///@arg x
///@arg y
function depth_3d(argument0, argument1) {

	var xx = argument0;
	var yy = argument1;

	var dir = -global.camera_angle+90;
	depth = xx*lengthdir_x(1,dir)+yy*lengthdir_y(1,dir);


}
