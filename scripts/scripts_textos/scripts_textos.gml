function scr_textos(){
	switch npc_nome{
		case "Primeiro Texto":
			ds_grid_add_text("1", spr_retrato_1, 0, "Personagem 1");
			ds_grid_add_text("2", spr_retrato_1, 0, "Personagem 1");
			ds_grid_add_text("3", spr_retrato_1, 0, "Personagem 1");
			ds_grid_add_text("4", spr_retrato_1, 0, "Personagem 1");
				add_op("Primeira Opao",	"Resposta 1");
				add_op("Segunda Opçao",		"Resposta 2");
				add_op("Terceira Opao",	"Resposta 3");
				break;
				case "Resposta 1":
					ds_grid_add_text("Essa é a primeira resposta", spr_retrato_1, 0, "Personagem 1");
					ds_grid_add_text("Essa é a primeira resposta", spr_retrato_1, 0, "Personagem 1");
				break;
				case "Resposta 2":
					ds_grid_add_text("Essa é a segunda resposta", spr_retrato_1, 0, "Personagem 1");
					ds_grid_add_text("Essa é a segunda resposta", spr_retrato_1, 0, "Personagem 1");
				case "Resposta 3":
					ds_grid_add_text("Essa é a terceira resposta", spr_retrato_1, 0, "Personagem 1");
					ds_grid_add_text("Essa é a terceira resposta", spr_retrato_1, 0, "Personagem 1");
	}
}

function ds_grid_add_row(){
	///@arg ds_grid
	
	var _grid = argument[0];
	ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid)+1);
	return(ds_grid_height(_grid)-1);	
}

function ds_grid_add_text(){
	///@arg texto
	///@arg retrato
	///@arg lado
	///@arg nome	
	var _grid = texto_grid;
	var _y = ds_grid_add_row(_grid);
	
	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];
}
	
function add_op(_texto, _resposta){
	op[op_num] = _texto;
	op_resposta[op_num]	= _resposta;
	
	op_num++;
}

