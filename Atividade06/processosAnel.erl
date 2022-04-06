-module(main).
-export([start/0]).
 
start() ->
  send(100,100). %%Entrada de M mensagens e N processos

%%Envie M mensagens através de um anel de N processos!!
send(M, N) ->
  statistics(runtime),%%com tempo de execução de argumento mede o tempo de CPU gasto na máquina virtual Erlang
  H = lists:foldl(
    fun(Id, Pid) -> spawn_link(fun() -> loop(Id, Pid, M) end) end,%%Retorna o identificador de processo de um novo processo iniciado pela aplicação de Fun para a lista vazia
    self(),%% id e piD inicial .. Pid do elemento corrente
    lists:seq(N, 2, -1)),%%Lista decremetal do numero de PROCESSOS
  {_, Time} = statistics(runtime),
  io:format("~p processos executados ~p ms~n", [N, Time]),
  statistics(runtime),
  H ! M,%%Para enviar uma mensagem para um processo, use o operador `!`,
precedido pelo ID do processo para o qual você deseja enviar a mensagem.
  loop(1, H, M).

loop(Id, Pid, M) ->%%Funçaõ q descreve o comportamento do processo
  receive %% Trabalho sw case caso M=1
    1 ->
      {_, Time} = statistics(runtime),
      io:format("~p mensagens enviadas ~p ms~n", [M, Time]),
      exit(self(), ok);
    Index ->%%pid ! msg... msg vai ser o argumento do processo tratado pela funcao F... a funcao F é aquela utilizada em algum spawn****... esse spawn*** é que retorna o numero do pid correspondente ao processo criado... (F -> messag. process. -> possui a bloco receive))
      Pid ! Index - 1,%%To send a message to a process, use the `!` operator. Para enviar uma mensagem para um processo, use o operador `!`
      loop(Id, Pid, M)
  end.
