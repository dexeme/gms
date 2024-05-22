function scr_personagem_colisao(){
	if place_meeting(x + hveloc, y, obj_parede){
		while !place_meeting(x + sign(hveloc), y, obj_paredae){
			x += sign(hveloc);
		}
	
		hveloc = 0;
	}

	x += hveloc;



	if place_meeting(x, y + vveloc, obj_parede){
		while !place_meeting(x, y + sign(vveloc), obj_parede){
			y += sign(vveloc);	
		}
	
		vveloc = 0;
	}

	y += vveloc;
	
}

