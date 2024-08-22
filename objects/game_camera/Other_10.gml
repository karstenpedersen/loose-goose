/// @description View size

// Set view size
camera_set_view_size(CAMERA,width,height);
CAMERA_WIDTH = camera_get_view_width(CAMERA);
CAMERA_HEIGHT = camera_get_view_height(CAMERA);
view_w_half = CAMERA_WIDTH/2;
view_h_half = CAMERA_HEIGHT/2;
global.camera_x = x-view_w_half;
global.camera_y = y-view_h_half;
camera_set_view_pos(CAMERA,global.camera_x,global.camera_y);