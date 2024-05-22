/// @description Insert description here
if inicializar == false{
	scr_textos();
	inicializar = true
	alarm[0] = 1;
	}

	if pagina < ds_grid_height(texto_grid) - 1{
		if global.tecla{	
			alarm[0] = 1;
			pagina++;
			caractere = 0;
	}else{
		if op_num != 0{
			op_draw = true;			
		}else{
			if global.tecla{
				global.dialogo = false;
				instance_destroy();
			}
		}
	}
}
