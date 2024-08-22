/// @description 


draw_sprite(spr_missile_area,0,x,y);

var _a = -global.camera_angle+90;
draw_sprite_ext(sprite_index,image_index,x+lengthdir_x(z,_a),y+lengthdir_y(z,_a),image_xscale,image_yscale,-global.camera_angle,image_blend,image_alpha);