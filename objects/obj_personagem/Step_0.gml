/// @description Insert description here

script_execute(estado);

depth = -y;

if alarm[1] <= 0{
	estamina += 1;
}

estamina = clamp(estamina, 0, max_estamina[level]);

if xp >= max_xp[level]{
	xp = xp - max_xp[level];
	
if level < 5{
	
	level += 1;
	
	vida = max_vida[level];
	estamina = max_estamina[level];
	
	if keyboard_check_pressed(ord("H")){
	    arma = ARMAS.ARCO;
		
	if keyboard_check_pressed(ord("J")){
	    arma = ARMAS.ESPADA;
			}

		}

	}
	
}



// Verificar se obj_par_npc existe antes de usá-lo
if (object_exists(obj_par_npc)) {
   var _npc = instance_nearest(x, y, obj_par_npc);
    if (_npc  != noone && distance_to_object(_npc) < 32 && keyboard_check_pressed(ord("E"))) {
		show_debug_message("Clicou E")
        if (!dialog_active) {
            _npc .start_dialog();
			player_can_move = false;
        }
    }
} else {
    show_error("Objeto 'obj_par_npc' não encontrado.", true);
}
