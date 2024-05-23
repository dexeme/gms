/// @description Insert description here
enum ARMAS{
	ESPADA,
	ARCO,
	ALTURA
}

// You can write your code in this 
//Movimentação
direita = -1;
cima = -1;
esquerda = -1;
baixo = -1;

hveloc = 0;
vveloc = 0;

veloc = 2;
veloc_dir = -1;

dir = 0;

//Dash
dash_dir = -1;
dash_veloc = 6;

//Estado
estado = scr_personagem_andando;

//Combate
level = 1;
xp = 0;
max_xp[1] = 100;
max_xp[2] = 120;
max_xp[3] = 150;
max_xp[4] = 200;
max_xp[5] = 285;

max_estamina[1] = 100;
max_estamina[2] = 115;
max_estamina[3] = 135;
max_estamina[4] = 160;
max_estamina[5] = 200;
estamina = max_estamina[level];

max_vida[1] = 20;
max_vida[2] = 30;
max_vida[3] = 42;
max_vida[4] = 60;
max_vida[5] = 80;
vida = max_vida[level];

dano[1] = 1;
dano[2] = 2;
dano[3] = 4;
dano[4] = 7;
dano[5] = 10;

atacar = false;

tomardano = true;
empurrar_dir = 0;

dano_alfa = -1;

arma = 1;

// Diálogos

player_can_move = true;
dialog_active = false;

