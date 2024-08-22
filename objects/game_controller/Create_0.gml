/// @description 

globalvar GUI_WIDTH,GUI_HEIGHT,GUI_HALF_WIDTH,GUI_HALF_HEIGHT,GUI_MARGIN;
globalvar CAMERA,CAMERA_WIDTH,CAMERA_HEIGHT;

#region Window
default_window_width = 768;
default_window_height = 432;
window_width = default_window_width;
window_height = default_window_height;
display_width = display_get_width();
display_height = display_get_height();
#endregion

GUI_WIDTH = 384;
GUI_HEIGHT = 216;
GUI_HALF_WIDTH = GUI_WIDTH/2;
GUI_HALF_HEIGHT = GUI_HEIGHT/2;
GUI_MARGIN = 8;

display_set_gui_size(GUI_WIDTH,GUI_HEIGHT);
surface_resize(application_surface,GUI_WIDTH,GUI_HEIGHT);

view_index = 0;
CAMERA = view_camera[0];
CAMERA_WIDTH = GUI_WIDTH;
CAMERA_HEIGHT = GUI_HEIGHT;
camera_set_view_size(CAMERA,CAMERA_WIDTH,CAMERA_HEIGHT);

global.fullscreen = true;
set_fullscreen(global.fullscreen);

globalvar PAUSED,CAN_PAUSE;
PAUSED = false;
CAN_PAUSE = false;