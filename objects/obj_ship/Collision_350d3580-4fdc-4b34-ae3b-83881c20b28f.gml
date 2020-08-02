/// @description Insert description here
// You can write your code in this editor

if (invincible == false) {
	lives = lives - 1;
	audio_play_sound(snd_collision, 1, false);
	invincible = true;
	alarm[0] = 60;
	repeat(3) {
	    shader_set(shd_flash_white_spr);
	    draw_self();
	    shader_reset(); 
	    alarm[1] = 20;
	}
}

if (lives <= 0) {
	instance_destroy();
	repeat(10) {
		instance_create_layer(x,y, "Instances", obj_debris)
	}
}



