
	//Iniciando o primeiro estado
estado_idle = new estado();

	//Iniciando o estado walk
estado_walk = new estado();

#region Estado Idle
	//Meu estado idle precisa de um inicia
estado_idle.inicia = function()
{
	//Sprite atual de acordo com o lado que estou olhando
	var _sprite = spr_monkey_idle_down;
	
	switch(dir)
	{
		case 0: _sprite = spr_monkey_idle_up;		break;
		case 1: _sprite = spr_monkey_idle_right;	break;
		case 2: _sprite = spr_monkey_idle_down;		break;
		case 3: _sprite = spr_monkey_idle_left;		break;
	}
	
	//Ajustando a sprite
	sprite_index = _sprite;
}

estado_idle.roda = function()
{
	//Achando a condição pra sair do estado
	
	//Se em movimento mudar estado pra mover(walk)
	if (velh != 0 or velv !=0)
	{
		troca_estado(estado_walk);
	}
	
}
#endregion

#region Estado Walk


		estado_walk.inicia = function()
{
	if (up)		dir =	0;
	if (left)	dir =	1;
	if (down)	dir =	2;
	if (right)	dir =	3;

	var _sprite;
	
	switch(dir)
	{
		case 0: _sprite = spr_monkey_walk_up;		break;
		case 1: _sprite = spr_monkey_walk_right;	break;
		case 2: _sprite = spr_monkey_walk_down;		break;
		case 3: _sprite = spr_monkey_walk_left;		break;
	}
	
	sprite_index = _sprite;
	image_index = 0;
}

estado_walk.roda = function()
{	
	//Achando a condição pra sair do estado
	
	//Se em não movimento mudar estado pra parado(idle)
	if (velv == 0 && velh == 0){
		troca_estado(estado_idle);
	}
}

#endregion

	//Iniciando vars

#region Iniciando váriaveis

	//Controles
up = noone;
down = noone;
left = noone;
right = noone;

	//Movimento
velh = 0;
velv = 0;
vel =  0.8;	//velocidade do player

	//Sabendo pra qual lado ele está
	dir=0;
	
#endregion

	//Iniciando minha máquina de estados
inicia_estado(estado_idle);