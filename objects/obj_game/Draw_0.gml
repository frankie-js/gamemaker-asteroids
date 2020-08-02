/// @description Insert description here
// You can write your code in this editor

switch(room) {
	case rm_game:
		draw_text(20, 20, ("String: " + string(score)));
		draw_text(20, 40, ("Lives: " + string(lives)));
		break;
		
	case rm_start:
		draw_set_halign(fa_center);
		var colour = c_yellow;
		draw_text_ext_transformed_color(
			room_width/2, 100, "Space Rocks", 250, 250,
			3, 3, 0, colour, colour, colour, colour, 1
		);
		draw_text(
			room_width/2, 200,
			@"
Score 1000 points to win!

UP: accelerate
LEFT/RIGHT: change direction
DOWN: decelerate
SPACE: shoot

>> PRESS ENTER TO START <<
"
		);
		draw_set_halign(fa_left);
		break;
		
	case rm_win:
		draw_set_halign(fa_center);
		var colour = c_lime;
		draw_text_ext_transformed_color(
			room_width/2, 100, "YOU WON!", 250, 250,
			3, 3, 0, colour, colour, colour, colour, 1
		);
		draw_text(
			room_width/2, 200,
			">> PRESS ENTER TO RESTART <<"
		);
		draw_set_halign(fa_left);
		break;
		
	case rm_gameover:
		draw_set_halign(fa_center);
		var colour = c_red;
		draw_text_ext_transformed_color(
			room_width/2, 150, "GAME OVER", 250, 250,
			3, 3, 0, colour, colour, colour, colour, 1
		);
		draw_text(
			room_width/2, 250,
			"FINAL SCORE: " + string(score)
		);
		draw_text(
			room_width/2, 300,
			">> PRESS ENTER TO RESTART <<"
		);
		draw_set_halign(fa_left);
		break;
}