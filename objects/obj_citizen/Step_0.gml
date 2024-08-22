/// @description 

if (hp <= 0) instance_destroy();

if ((distance_to_object(obj_godzilla) <= flee_distance || distance_to_object(obj_explosion) <= flee_distance) && speed == 0) {
	var _r = walk_range;
	target_x = x+irandom_range(-_r,_r);
	target_y = y+irandom_range(-_r,_r);
}

if (distance_to_point(target_x,target_y) > 1) {
	speed = spd;
	direction = point_direction(x,y,target_x,target_y);
}

image_angle = direction;