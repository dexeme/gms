// Variáveis básicas do NPC
npc_name = "NPC";
npc_message = "Hello, this is a default message.";
npc_portrait = -1; // Inicializar com -1 para indicar ausência de sprite
npc_options = [];
mostrando_dialogo = false; // Inicializar a variável mostrando_dialogo

// Função para iniciar diálogo
start_dialog = function() {
    // Verificar se obj_dialog existe antes de usá-lo
    if (object_exists(obj_dialogo)) {
        // Criar o objeto de diálogo
        var dialog = instance_create_layer(x, y, "Instances", obj_dialogo);
        dialog.npc_name = npc_name;
        dialog.npc_message = npc_message;
        dialog.npc_portrait = npc_portrait;
        dialog.npc_options = npc_options;
        mostrando_dialogo = true;
    } else {
        show_error("Objeto 'obj_dialog' não encontrado.", true);
    }
};