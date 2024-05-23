/// @description Insert description here
var _player = instance_nearest(x, y, obj_personagem); // Encontre o jogador mais próximo
if (_player != noone) {
    var _distance = point_distance(x, y, _player.x, _player.y);

    if (_distance < distance_to_show_preview && !obj_personagem.dialog_active) {
		show_debug_message("perto")
        if (keyboard_check_pressed(ord("E"))) {
            obj_personagem.dialog_active = true;
            caractere = 0;
            show_text = "";
            alarm[0] = text_speed;
        }
    } else if (obj_personagem.dialog_active) {
        if (keyboard_check_pressed(ord("E"))) {
            obj_personagem.dialog_active = false;
			obj_personagem.player_can_move = true;
        }
    }
}