	//Iniciando máquina de estados
function estado() constructor
{
	//Iniciando o estado
	static inicia = function () {};

	//Rodando o estado
	static roda = function () {};

	//Finalizando o estado
	static finaliza = function () {};

}

	//Funções pra controlar
	//Iniciando o estado
function inicia_estado(_estado)
{
	//Salvando o estado
	estado_atual = _estado;
	//Iniciando o estado
	estado_atual.inicia();
}

	//Rodando o estado atual
function roda_estado()
{
	estado_atual.roda();
}

	//Trocando de estado
function troca_estado(_estado)
{
	//Finaliza o estado atual
	estado_atual.finaliza();
	
	//Rodando o próximo estado
	estado_atual = _estado;
	
	//Iniciando o próximo estado
	estado_atual.inicia();
	
}
