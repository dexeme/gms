/// @description Diálogo com NPCs
enum INFOS{
	TEXTO,
	RETRATO,
	LADO,
	NOME

}

npc_nome = "";
texto_grid = ds_grid_create(4, 0);
pagina = 0;

op[0] = "";
op_resposta[0] = "";
op_num = 0;
op_selecionada = 0;
op_draw = false;

inicializar = false;

caractere = 0;
alarm[0] = 1;

