///@arg x
///@arg y
///@arg object
///@arg sprite
function road_imageindex(argument0, argument1, argument2, argument3) {

	var _x = argument0;
	var _y = argument1;
	var _obj = argument2;
	var _sprite = argument3;

	var _sw = sprite_get_width(_sprite);
	var _sh = sprite_get_width(_sprite);

	var _image_index = 0;
	if (place_meeting(_x-1,_y,_obj) && place_meeting(_x,_y-1,_obj) && place_meeting(_x+_sw,_y,_obj) && place_meeting(_x,_y+_sh,_obj)) {
		_image_index = 0;
	} else if (place_meeting(_x,_y-1,_obj) && place_meeting(_x+_sw,_y,_obj) && place_meeting(_x,_y+_sh,_obj)) {
		_image_index = 1;
	} else if (place_meeting(_x-1,_y,_obj) && place_meeting(_x,_y-1,_obj) && place_meeting(_x,_y+_sh,_obj)) {
		_image_index = 2;
	} else if (place_meeting(_x-1,_y,_obj) && place_meeting(_x+_sw,_y,_obj) && place_meeting(_x,_y+_sh,_obj)) {
		_image_index = 3;
	} else if (place_meeting(_x-1,_y,_obj) && place_meeting(_x,_y-1,_obj) && place_meeting(_x+_sw,_y,_obj)) {
		_image_index = 4;
	} else if (place_meeting(_x-1,_y,_obj) && place_meeting(_x,_y-1,_obj)) {
		_image_index = 5;
	} else if (place_meeting(_x,_y-1,_obj) && place_meeting(_x+_sw,_y,_obj)) {
		_image_index = 6;
	} else if (place_meeting(_x+_sw,_y,_obj) && place_meeting(_x,_y+_sh,_obj)) {
		_image_index = 7;
	} else if (place_meeting(_x-1,_y,_obj) && place_meeting(_x,_y+_sh,_obj)) {
		_image_index = 8;
	} else if (place_meeting(_x-1,_y,_obj) && place_meeting(_x+_sw,_y,_obj)) {
		_image_index = 9;
	} else if (place_meeting(_x,_y-1,_obj) && place_meeting(_x,_y+_sh,_obj)) {
		_image_index = 10;
	} else if (place_meeting(_x+_sw,_y,_obj)) {
		_image_index = 11;
	} else if (place_meeting(_x-1,_y,_obj)) {
		_image_index = 12;
	} else if (place_meeting(_x,_y+_sh,_obj)) {
		_image_index = 13;
	} else if (place_meeting(_x,_y-1,_obj)) {
		_image_index = 14;
	} else {
		_image_index = 15;
	}

	return _image_index;


}
