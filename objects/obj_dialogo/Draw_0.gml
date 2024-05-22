/// @description Insert description here
if inicializar == true{
	var _guil = display_get_gui_width();
	var _guia = display_get_gui_height();

	var _xx = 0;
	var _yy = _guia - 200;
	var _c = c_black;
	var _sprite = texto_grid [# INFOS.RETRATO, pagina];
	draw_set_font(fnt_dano);

	if texto_grid[# INFOS.LADO, pagina] == 0{
	
		//Lado Esquerdo
		draw_rectangle_color(_xx + 200, _yy, _guil - 200, _guia, _c, _c, _c, _c, false);
		draw_text_ext(_xx + 232, _yy + 32, texto_grid[# INFOS.TEXTO, pagina], 32, _guil - 264);
	
		draw_sprite_ext(_sprite, 0, 100, _guia, 3, 3, 0, c_white, 1);
	}
	
	if op_draw == true{
		var _opx = _xx + 32;
		var _opy = _yy - 48;
		var _opsep = 48;
		var _opborda = 6;
		
		op_selecionada += keyboard_check_pressed(ord("W")) - keyboard_check_pressed(ord("S"));
		op_selecionada = clamp(op_selecionada, 0, op_num - 1);
		
		for (var _i = 0; _i < op_num; _i++){
			var _stringw = string_width(op[i]);
			draw_sprite_ext(spr_op_background, 0, _opx, _opy - (_opsep * _i), (_stringw + _opborda * 2)/16, 1, 0, c_white, 1);
			draw_text(_opx + _opborda, _opy - (_opsep * _i), op[i])
			
			if op_selecionada == _i{
				draw_sprite(spr_op_seletor, 0, _xx + 8, _opy - (_opsep * i) + 8);
		}
	}
	
	if global.tecla{
		var _dialogo = instance_create_layer(x, y, "Dialogo", obj_dialogo);
		_dialogo.npc_nome = op_resposta[op_selecionada];
		
		instance_destroy();
		}
	}
}
