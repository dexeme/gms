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

if distance_to_object(obj_par_npcs) <= 100{
	if keyboard_check_pressed(ord("F")){
		var _npc = instance_nearest(x, y, obj_par_npcs);
		var _dialogo = instance_create_layer(x, y, "Dialogo", obj_dialogo);
		_dialogo.npc_nome = _npc.nome;
	}
}

