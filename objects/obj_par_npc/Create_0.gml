// Variáveis básicas do NPC
npc_name = "NPC";
npc_message = "Hello, this is a default message.";
npc_preview_message = "";
show_text = ""
text_speed = 2;
caractere = 0;
alarm[0] = text_speed;
selected_option = 0;
npc_portrait = -1; // Inicializar com -1 para indicar ausência de sprite
npc_options = [];
distance_to_show_preview = -1;

// Função para iniciar diálogo
start_dialog = function() {
    // Verificar se obj_dialog existe antes de usá-lo
    if (object_exists(obj_dialogo)) {
        // Criar o objeto de diálogo
		show_debug_message("Criou objeto dialogo")
		var _dialog = instance_create_layer(x, y, "Instances", obj_dialogo);
		    _dialog.npc = id; // Associa o NPC ao diálogo
		    _dialog.dialogo_atual = "dialogo1"; // Defina o diálogo atual
		    _dialog.show_text = "Olá, como você está?"; // Defina o texto do diálogo
		    _dialog.npc_options = ["Bem", "Mal"]; // Defina as opções de diálogo
		    _dialog.npc_name = "NPC"; // Defina o nome do NPC
		    _dialog.npc_portrait = npc_portrait; // Defina o retrato do NPC se necessário
		    player_can_move = false; // Impede o movimento do jogador enquanto o diálogo está ativo
			dialog_active = true;
    } else {
        show_error("Objeto 'obj_dialog' não encontrado.", true);
    }
};