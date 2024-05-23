function scr_textos() {
    show_debug_message("scr_textos chamado com npc_nome: " + string(npc_nome));
    switch (npc_nome) {
        case "Primeiro Texto":
            show_debug_message("Primeiro Texto carregado");
            ds_grid_add_text("Olá, aventureiro!", npc_, 0, "Personagem 1");
            ds_grid_add_text("Bem-vindo à nossa vila.", spr_retrato_1, 0, "Personagem 1");
            ds_grid_add_text("Precisa de ajuda?", spr_retrato_1, 0, "Personagem 1");
            ds_grid_add_text("Estou aqui para responder suas perguntas.", spr_retrato_1, 0, "Personagem 1");
            add_op("Quem é você?", "Resposta 1");
            add_op("O que posso fazer aqui?", "Resposta 2");
            add_op("Preciso de uma missão.", "Resposta 3");
            break;
        case "Resposta 1":
            show_debug_message("Resposta 1 carregada");
            ds_grid_add_text("Eu sou o guardião desta vila.", spr_retrato_1, 0, "Personagem 1");
            ds_grid_add_text("Estou aqui para proteger e orientar os aventureiros.", spr_retrato_1, 0, "Personagem 1");
            break;
        case "Resposta 2":
            show_debug_message("Resposta 2 carregada");
            ds_grid_add_text("Aqui você pode treinar, comprar itens e aceitar missões.", spr_retrato_1, 0, "Personagem 1");
            ds_grid_add_text("Explore a vila e fale com outros NPCs para mais informações.", spr_retrato_1, 0, "Personagem 1");
            break;
        case "Resposta 3":
            show_debug_message("Resposta 3 carregada");
            ds_grid_add_text("Temos várias missões para aventureiros como você.", spr_retrato_1, 0, "Personagem 1");
            ds_grid_add_text("Visite o quadro de missões para ver as disponíveis.", spr_retrato_1, 0, "Personagem 1");
            break;
        default:
            show_debug_message("Nenhum texto encontrado para npc_nome: " + string(npc_nome));
            break;
    }
}

function ds_grid_add_row(_grid) {
    ds_grid_resize(_grid, ds_grid_width(_grid), ds_grid_height(_grid) + 1);
    return ds_grid_height(_grid) - 1;
}

function ds_grid_add_text(_texto, _retrato, _lado, _nome) {
    show_debug_message("Adicionando texto: " + _texto);
    show_debug_message("Adicionando retrato: " + string(_retrato));
    var _grid = texto_grid;
    var _y = ds_grid_add_row(_grid); // Garanta que essa função sempre adicione uma nova linha

    if (_y >= 0 && _y < ds_grid_height(_grid)) {
        _grid[# 0, _y] = _texto;
        _grid[# 1, _y] = _retrato;
        _grid[# 2, _y] = _lado;
        _grid[# 3, _y] = _nome;
    } else {
        show_debug_message("Erro: índice de linha fora dos limites da grid.");
    }
}



function add_op(_texto, _resposta) {
    op[op_num] = _texto;
    op_resposta[op_num] = _resposta;
    op_num++;
}
