function scr_slime_escolher_estado(){
		scr_slime_checar_personagem();
		prox_estado = choose(scr_slime_andando, scr_slime_parado)
	
	if prox_estado == scr_slime_andando{
		estado = scr_slime_andando;
		dest_x = irandom_range(0, room_width);
		dest_y = irandom_range(0, room_height);
	}else if prox_estado == scr_slime_parado{
		estado = scr_slime_parado;
	}
}
