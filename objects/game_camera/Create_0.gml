/// @description INIT camera

#region Camera
default_width = CAMERA_WIDTH;
default_height = CAMERA_HEIGHT;
width = default_width;
height = default_height;
view_w_half = CAMERA_WIDTH/2;
view_h_half = CAMERA_HEIGHT/2;
global.camera_x = x-view_w_half;
global.camera_y = y-view_h_half;
camera_set_view_pos(CAMERA,global.camera_x,global.camera_y);
#endregion

rotate_spd_start = 0.5;
rotate_spd_max = 2;
rotate_spd_acceleration = 0.075;
rotate_spd_deacceleration = 0.25;
rotate_spd = 0;

target = obj_player;

xTo = x;
yTo = y;

can_rotate = true;
can_zoom = true;

#region Shake
shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 16;
#endregion

global.camera_angle = 0;

event_user(0);