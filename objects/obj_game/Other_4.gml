/// @description Insert description here
// You can write your code in this editor

if (room == rm_game) {
	audio_pause_sound(msc_song);

	repeat(6) {
		var xx = choose(
			irandom_range(0, room_width*0.2),
			irandom_range(room_width*0.8, room_width)

		);
		var yy = choose(
			irandom_range(0, room_height*0.2),
			irandom_range(room_height*0.8, room_height)
		);
		
		instance_create_layer(xx, yy, "Instances", obj_asteroid);
	}
	
	alarm[0] = 60;
}


if (room == rm_start) {
	audio_play_sound(msc_song, 2, true);
}

if (room == rm_gameover) {
	audio_play_sound(snd_lose, 1, false);
}