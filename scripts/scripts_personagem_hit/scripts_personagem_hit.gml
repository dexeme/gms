function scr_personagem_hit(){
	if alarm[2] > 0{
		hveloc = lengthdir_x(3, empurrar_dir);
		vveloc = lengthdir_y(3, empurrar_dir);
		
		scr_personagem_colisao();
	}else{
		estado = scr_personagem_andando;
	}	

}
