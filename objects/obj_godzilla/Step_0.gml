/// @description 

#region State machine
if (target != noone) {
	if (instance_exists(target)) {
		target_x = target.x;
		target_y = target.y;
	} else {
		if (target_type == "building") target_current_cooldown = 10;
		else if (target_type == "human") target_current_cooldown = 0;
		
		target = noone;
		target_x = x;
		target_y = y;
		target_type = "";
	}
} else {
	if (target_current_cooldown <= 0) {
		if (instance_exists(obj_citizen) && instance_exists(par_building)) {
			var _citizen = instance_nearest(x,y,obj_citizen);
			var _building = instance_nearest(x,y,par_building);
			
			if (distance_to_object(_citizen) <= distance_to_object(par_building)) {
				target = _citizen;
			} else {
				target = _building;
			}
		} else if (instance_exists(obj_citizen)) {
			target = instance_nearest(x,y,obj_citizen);
			target_type = "human";
		} else if (instance_exists(par_building)) {
			target = instance_nearest(x,y,par_building);
			target_type = "building";
		} else {
			target_x = room_width/2;
			target_y = room_height/2;
		}
	
		if (target != noone) {
			target_x = target.x;
			target_y = target.y;
		}
	}
}

// State
if (hp <= 0) {
	state = STATES.DEAD;
} else if (target_x != x || target_y != y && stun_current_cooldown <= 0) {
	state = STATES.MOVE;
} else {
	state = STATES.IDLE;
}

switch (state) {
	case STATES.IDLE:
		speed = 0;
		sprite_index = sprite_idle;
		break;
		
	case STATES.MOVE:
		speed = spd;
		direction = point_direction(x,y,target_x,target_y);
		break;
		
	case STATES.DEAD:
		speed = 0;
		break;
}
#endregion

if (hp <= 0) {
	instance_destroy();
}

target_current_cooldown--;
stun_current_cooldown--;

if (global.citizen_count > 0 && alarm[0] <= 0) {
	alarm[0] = random_range(egg_time_min,egg_time_max);
}

image_angle = direction;

// Action