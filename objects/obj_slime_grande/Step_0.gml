/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if vida <= 0{
	instance_destroy();
	repeat(3){
		instance_create_layer(x, y, 3, obj_slime);
	}
}


