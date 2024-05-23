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
   npc = instance_nearest(x, y, obj_par_npc);
    if (npc != noone && distance_to_object(npc) < 32 && keyboard_check_pressed(ord("E"))) {
        if (!npc.mostrando_dialogo) {
            npc.start_dialog();
        }
    }
} else {
    show_error("Objeto 'obj_par_npc' não encontrado.", true);
}

