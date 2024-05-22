function scr_slime_perseguindo(){
	image_speed = 1.5;
	
		dest_x = obj_personagem.x;
		dest_y = obj_personagem.y;
	
	var _dir = point_direction(x, y, dest_x, dest_y);
		hveloc = lengthdir_x(veloc_persg, _dir);
		vveloc = lengthdir_y(veloc_persg, _dir);
	
	scr_slime_colisao();
		if distance_to_object(obj_personagem) >= dist_desaggro{
			estado = scr_slime_escolher_estado;
			alarm [0] = irandom_range(120, 240);
					}
				}

