/// @description 

// Inherit the parent event
event_inherited();

sprite_index = asset_get_index("spr_building" + string(irandom_range(1,3)));

citizens = irandom_range(2,4);
global.citizen_count += citizens;

outside_view = false;
