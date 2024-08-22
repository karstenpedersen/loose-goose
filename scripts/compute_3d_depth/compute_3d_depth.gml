///@arg x
///@arg y
function compute_3d_depth(argument0, argument1) {

	var _x = argument0;
	var _y = argument1;

	var _depth = _x*dcos(90+global.camera_angle)+
				 _y*dsin(90+global.camera_angle);
			 
	return _depth*-1;


}
