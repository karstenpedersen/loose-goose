/// @description 

var _r = 9;
repeat (100) {
	create_effect(x+irandom_range(-_r,_r),y+irandom_range(-_r,_r),spr_effect_blood,irandom_range(0.5,5),0,360,4);
}

audio_play_sound(snd_hit3,50,false);