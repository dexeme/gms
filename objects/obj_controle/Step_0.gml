/// @description Step do obj_controle
if instance_exists(obj_dialogo){
	global.dialogo = true;
}

global.tecla = keyboard_check_pressed(ord("E"));