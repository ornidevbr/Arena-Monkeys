
	//Iniciando o primeiro estado
estado_idle = new estado();

	//Iniciando o estado walk
estado_walk = new estado();

#region Estado Idle
	//Meu estado idle precisa de um inicia
estado_idle.inicia = function()
{
	//Ajustando a sprite
	sprite_index = spr_monkey_idle_down;
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
	//Ajustando a sprite
	sprite_index = spr_monkey_walk_down;
	
	//Começando a animação do começo
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

#endregion

	//Iniciando minha máquina de estados
inicia_estado(estado_idle);