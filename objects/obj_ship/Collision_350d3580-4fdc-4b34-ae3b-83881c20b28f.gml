/// @description Insert description here
// You can write your code in this editor
lives = lives - 1;

instance_destroy();

repeat(10) {
	instance_create_layer(x,y, "Instances", obj_debris)
}