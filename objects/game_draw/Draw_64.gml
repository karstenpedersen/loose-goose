/// @description 

if (room == rm_game) {
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_red);
	draw_text(GUI_MARGIN,GUI_MARGIN,"LIVE");
	
	#region Message
	draw_set_color(c_white);
	draw_rectangle(0,GUI_HEIGHT-12,GUI_WIDTH,GUI_HEIGHT,false);
	
	draw_set_color(c_red);
	draw_set_alpha(1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_font(fn_gui_message);
	draw_text(message_x,GUI_HEIGHT-6,global.message);

	draw_set_color(c_red);
	draw_rectangle(0,GUI_HEIGHT-12,string_width("BREAKING")+12,GUI_HEIGHT,false);
	draw_set_color(c_white);
	draw_text(6,GUI_HEIGHT-6,"BREAKING");
	#endregion
	
	if (global.goose_total_count <= 0) {
		#region Start screen
		draw_set_alpha(1);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_color(c_yellow);
		draw_text(GUI_HALF_WIDTH,GUI_HALF_HEIGHT-32,"Loose Goose");
		draw_set_color(c_white);
		draw_text(GUI_HALF_WIDTH,GUI_HALF_HEIGHT+48,"SPACE - Play\nESCAPE - Exit\n\n[CONTROLS]\nMB1 - Launch missile\nW,A,S,D - Move camera\nQ,E - Rotate camera")
		#endregion
	} else {
		if (!global.game_ended) {
			draw_set_color(c_white);
			draw_set_halign(fa_center);
			draw_set_valign(fa_top);
			draw_text(GUI_HALF_WIDTH,8,"Population " + string(global.citizen_count));
			if (global.citizen_count <= global.civlians_min) {
				draw_set_alpha(1);
				draw_set_halign(fa_center);
				draw_set_valign(fa_middle);
				draw_set_color(c_yellow);
				draw_text(GUI_HALF_WIDTH,GUI_HALF_HEIGHT-32,"Mission failed\nToo many civilians died");
				draw_set_color(c_white);
				draw_text(GUI_HALF_WIDTH,GUI_HALF_HEIGHT+32,"SPACE - Launch nuke");
			}
		} else {
			draw_set_color(c_black);
			draw_set_alpha(0.75);
			draw_rectangle(0,0,GUI_WIDTH,GUI_HEIGHT,false);
		
			draw_set_color(c_white);
			draw_set_alpha(1);
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			if (global.mission_failed) {
				draw_set_color(c_yellow);
				draw_text(GUI_HALF_WIDTH,GUI_HALF_HEIGHT-32,"Mission failed")
				draw_set_color(c_white);
				draw_text(GUI_HALF_WIDTH,GUI_HALF_HEIGHT+48,"SPACE - Retry\nESCACPE - Exit\n\nMaterial cost - " + string(global.material_cost) + "$\nCivilians killed - " + string(global.civilianz_killed));
			} else {
				draw_set_color(c_yellow);
				draw_text(GUI_HALF_WIDTH,GUI_HALF_HEIGHT-32,"Success");
				draw_set_color(c_white);
				draw_text(GUI_HALF_WIDTH,GUI_HALF_HEIGHT+48,"SPACE - Menu\nESCAPE - Exit\n\nMaterial cost - " + string(global.material_cost) + "$\nCivilians killed - " + string(global.civilianz_killed));
			}
		}
	}
}

draw_sprite(spr_cursor,0,device_mouse_x_to_gui(0),device_mouse_y_to_gui(0));