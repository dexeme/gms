// Função de movimento do personagem
function scr_personagem_andando() {
    // Verifica se o jogador pode se mover
    if (player_can_move) {
        // Movimentação
        direita = keyboard_check(ord("D"));
        cima = keyboard_check(ord("W"));
        esquerda = keyboard_check(ord("A"));
        baixo = keyboard_check(ord("S"));

        hveloc = (direita - esquerda);
        vveloc = (baixo - cima);
    } else {
        hveloc = 0;
        vveloc = 0;
    }

    veloc_dir = point_direction(x, y, x + hveloc, y + vveloc);

    if (hveloc != 0 || vveloc != 0) {
        veloc = 2;
    } else { 
        veloc = 0;
    }

    hveloc = lengthdir_x(veloc, veloc_dir);
    vveloc = lengthdir_y(veloc, veloc_dir);

    if (place_meeting(x + hveloc, y, obj_parede)) {
        while (!place_meeting(x + sign(hveloc), y, obj_parede)) {
            x += sign(hveloc);
        }
        hveloc = 0;
    }

    x += hveloc;

    if (place_meeting(x, y + vveloc, obj_parede)) {
        while (!place_meeting(x, y + sign(vveloc), obj_parede)) {
            y += sign(vveloc);
        }
        vveloc = 0;
    }

    y += vveloc;

    // Mudar as sprites
    if (player_can_move) {
        if (keyboard_check_pressed(ord("D"))) {
            dir = 0;
        } else if (keyboard_check_pressed(ord("W"))) {
            dir = 1;
        } else if (keyboard_check_pressed(ord("A"))) {
            dir = 2;
        } else if (keyboard_check_pressed(ord("S"))) {
            dir = 3;
        }
    }

    if (hveloc == 0 && vveloc == 0) {
        switch (dir) {
            default:
                sprite_index = spr_personagem_parado_direita;
                break;
            case 1:
                sprite_index = spr_personagem_parado_cima;
                break;
            case 2:
                sprite_index = spr_personagem_parado_esquerda;
                break;
            case 3:
                sprite_index = spr_personagem_parado_baixo;
                break;
        }
    } else {
        switch (dir) {
            default:
                sprite_index = spr_personagem_correndo_direita;
                break;
            case 1:
                sprite_index = spr_personagem_correndo_cima;
                break;
            case 2:
                sprite_index = spr_personagem_correndo_esquerda;
                break;
            case 3:
                sprite_index = spr_personagem_correndo_baixo;
                break;
        }
    }

    #region Dash
    if (player_can_move && estamina >= 10) {
        if (keyboard_check_pressed(vk_space)) {
            estamina -= 10;
            alarm[1] = 180;
            alarm[0] = 8;
            dash_dir = point_direction(0, 0, hveloc, vveloc);
            estado = scr_personagem_dash;
        }
    }
    #endregion

    #region Atacando Espada
    if (player_can_move && mouse_check_button_pressed(mb_left)) {
        if (arma == ARMAS.ESPADA) {
            image_index = 0;
            switch (dir) {
                // Direita
                default:
                    sprite_index = spr_personagem_atacando_direita;
                    break;
                // Cima
                case 1:
                    sprite_index = spr_personagem_atacando_cima;
                    break;
                // Esquerda
                case 2:
                    sprite_index = spr_personagem_atacando_esquerda;
                    break;
                // Baixo
                case 3:
                    sprite_index = spr_personagem_atacando_baixo;
                    break;
            }
            estado = scr_personagem_atacando;
        } else if (arma == ARMAS.ARCO) {
            image_index = 0;
            estado = scr_personagem_arco;
        }
    }
    #endregion
}

function scr_personagem_dash() {
    if (player_can_move) {
        tomardano = false;
        hveloc = lengthdir_x(dash_veloc, dash_dir);
        vveloc = lengthdir_y(dash_veloc, dash_dir);
        
        x += hveloc;
        y += vveloc;
        
        var _inst = instance_create_layer(x, y, "Instances", obj_dash);
        _inst.sprite_index = sprite_index;
    }
}

function scr_personagem_atacando() {
    if (player_can_move) {
        if (image_index >= 1) {
            if (!atacar) {
                switch (dir) {
                    // Direita
                    default:
                        instance_create_layer(x + 10, y, "Instances", obj_personagem_hitbox);
                        break;
                    // Cima
                    case 1:
                        instance_create_layer(x, y - 10, "Instances", obj_personagem_hitbox);
                        break;
                    // Esquerda
                    case 2:
                        instance_create_layer(x - 10, y, "Instances", obj_personagem_hitbox);
                        break;
                    // Baixo
                    case 3:
                        instance_create_layer(x, y + 10, "Instances", obj_personagem_hitbox);
                        break;
                }
                atacar = true;
            }
        }
        if (fim_da_animacao()) {
            estado = scr_personagem_andando;
            atacar = false;
        }
    }
}

function scr_personagem_arco() {
    if (player_can_move) {
        dir = floor((point_direction(x, y, mouse_x, mouse_y) + 45) / 90);
       
        switch (dir) {
            // Direita
            default:
                sprite_index = spr_personagem_arco_direita;
                break;
            // Cima
            case 1:
                sprite_index = spr_personagem_arco_cima;
                break;
            // Esquerda
            case 2:
                sprite_index = spr_personagem_arco_esquerda;
                break;
            // Baixo
            case 3:
                sprite_index = spr_personagem_arco_baixo;
                break;
        }

        if (fim_da_animacao()) {
            image_index = 4;
        }

        if (mouse_check_button_released(mb_left)) {
            if (image_index >= 4) {
                var _dir = point_direction(x, y, mouse_x, mouse_y);
                var _xx = lengthdir_x(5, _dir);
                var _yy = lengthdir_y(5, _dir);
                
                var _inst = instance_create_layer(x + _xx, y + _yy, "Instances", obj_flecha);
                _inst.direction = _dir;
                _inst.image_angle = _dir;
                _inst.speed = 12;
                
                empurrar_dir = point_direction(mouse_x, mouse_y, x, y);
                alarm[2] = 5;
                estado = scr_personagem_hit;
            } else {
                estado = scr_personagem_andando;
            }
        }
    }
}
