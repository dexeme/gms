// Controle para seleção de opções
if (keyboard_check_pressed(vk_up)) {
    selected_option = max(selected_option - 1, 0);
}

if (keyboard_check_pressed(vk_down)) {
    selected_option = min(selected_option + 1, array_length(npc_options) - 1);
}

if (keyboard_check_pressed(vk_enter)) {
    // Ação ao selecionar uma opção
    var selected_text = npc_options[selected_option];
    show_message("You selected: " + selected_text);
    instance_destroy(); // Fecha o diálogo após seleção
}
