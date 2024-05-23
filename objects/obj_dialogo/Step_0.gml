// Evento Step do obj_dialogo
if (obj_personagem.dialog_active) {
    if (keyboard_check_pressed(vk_up)) {
        selected_option--;
        if (selected_option < 0) {
            selected_option = array_length(npc_options) - 1;
        }
    }
    if (keyboard_check_pressed(vk_down)) {
        selected_option++;
        if (selected_option >= array_length(npc_options)) {
            selected_option = 0;
        }
    }

    if (keyboard_check_pressed(vk_enter)) {
        var selected_text = npc_options[selected_option];
        show_message("Você selecionou: " + selected_text);

        // Marcar o diálogo como completo e permitir movimento
        obj_personagem.dialog_active = false;
        obj_personagem.player_can_move = true;

        instance_destroy(); // Destruir o objeto de diálogo após a seleção
    }
}
