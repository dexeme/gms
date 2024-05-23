var _x_pos = 100;
var _y_pos = 100;
var _text_offset = 120;
var _line_height = 20;

// Desenhar retrato do NPC
if (npc_portrait != -1) {
    draw_sprite(npc_portrait, 0, _x_pos, _y_pos);
}

// Desenhar nome do NPC
draw_text(_x_pos, _y_pos + sprite_get_height(npc_portrait), npc_name);

// Desenhar mensagem do NPC
draw_text(_x_pos + _text_offset, _y_pos, npc_message);

// Desenhar opções de resposta
if (array_length(npc_options) > 0) {
    for (var i = 0; i < array_length(npc_options); i++) {
        if (i == selected_option) {
            draw_set_color(c_yellow);
        } else {
            draw_set_color(c_white);
        }
        draw_text(_x_pos + _text_offset, _y_pos + (i + 1) * _line_height, npc_options[i]);
    }
    draw_set_color(c_white); // Resetar cor
}
