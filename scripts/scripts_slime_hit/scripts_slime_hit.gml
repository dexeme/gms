function scr_slime_hit(){
	alarm[2] = 180;
	empurrar_veloc = lerp(empurrar_veloc, 0, 0.05);
	
	hveloc = lengthdir_x(empurrar_veloc, empurrar_dir);
	vveloc = lengthdir_x(empurrar_veloc, empurrar_dir);
	
		scr_slime_colisao();	

}
