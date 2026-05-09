	//Input
up  	= keyboard_check	(vk_up);
up  	= keyboard_check	(vk_up);
down	= keyboard_check	(vk_down);
down	= keyboard_check	(vk_down);
left	= keyboard_check	(vk_left);
left	= keyboard_check	(vk_left);
right	= keyboard_check	(vk_right);
right	= keyboard_check	(vk_right);

	//Aplicando Velh e Velv
velv = (down-up)	* vel;
velh = (right-left)	*vel;

	//Rodando minha máquina de estados
roda_estado();