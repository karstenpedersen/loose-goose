/// @description 
#region Input
i_up = keyboard_check(ord("W"));
i_right = keyboard_check(ord("A"));
i_down = keyboard_check(ord("S"));
i_left = keyboard_check(ord("D"));
#endregion

i_move = mouse_check_button(mb_left);

hp_max = 100;
hp = 10;
spd = 2;

missile_attack_cooldown = 15;

attack_current_cooldown = 0;

weapon = WEAPONS.MISSILE;

launched_missiles = 0;
display_missile_text = false;