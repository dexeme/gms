// Evento Alarm[0] do NPC
if (obj_personagem.dialog_active && caractere < string_length(npc_message)) {
    show_text = string_copy(npc_message, 1, caractere);
    caractere++;
    alarm[0] = text_speed;
}