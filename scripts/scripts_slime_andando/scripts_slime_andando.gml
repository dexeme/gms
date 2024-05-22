function scr_slime_andando(){
	scr_slime_checar_personagem();
	
	image_speed = 1;
	
	if distance_to_point(dest_x, dest_y) > veloc{
		var _dir = point_direction(x, y, dest_x, dest_y);
		hveloc = lengthdir_x(veloc, _dir);
		vveloc = lengthdir_y(veloc, _dir);
		scr_slime_colisao();
	
	}else{
		x = dest_x;
		y = dest_y;
	}
	
}

