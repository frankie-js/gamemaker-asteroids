/// @description Insert description here
// You can write your code in this editor
score = score + 10

instance_destroy();

with(other) {
	instance_destroy();
	
	if (sprite_index == spr_asteroid_huge) {
		repeat(2) {
			var new_ast = instance_create_layer(x, y, "Instances", obj_asteroid);
			new_ast.sprite_index = spr_asteroid_med;
		}
	} else if (sprite_index == spr_asteroid_med) {
		repeat(2) {
			var new_ast = instance_create_layer(x, y, "Instances", obj_asteroid);
			new_ast.sprite_index = spr_asteroid_small;
		}
	}
	
	repeat(10) { 
		instance_create_layer(x, y, "Instances", obj_debris);
	}
}