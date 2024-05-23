// Evento Draw do obj_dialogo
if (npc != noone && obj_personagem.dialog_active) {
    var _x_pos = npc.x;
    var _y_pos = npc.y - (npc_portrait != -1 ? sprite_get_height(npc_portrait) : sprite_get_height(npc.sprite_index)) - 10;

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(fnt_dano);

    if (npc_portrait != -1) {
        draw_sprite(npc_portrait, 0, _x_pos, _y_pos - sprite_get_height(npc_portrait));
    }

    draw_text(_x_pos, _y_pos - sprite_get_height(npc_portrait), npc_name);
    draw_text(_x_pos, _y_pos, show_text);

    if (array_length(npc_options) > 0) {
        var _option_y_pos = _y_pos + 20;
        for (var _i = 0; _i < array_length(npc_options); _i++) {
            if (_i == selected_option) {
                draw_set_color(c_yellow);
            } else {
                draw_set_color(c_white);
            }
            draw_text(_x_pos, _option_y_pos + (_i * 20), npc_options[_i]);
        }
        draw_set_color(c_white);
    }

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_font(fnt_dano);
}
