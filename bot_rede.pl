% Linguagem: Prolog.


:-include(base_dados1_rede).
:-include(base_dados2_rede).
		
 
bot_rede:-  write('Eu sou o Bot de Rede.'), nl,  write('Voce deseja saber sobre: '), nl,  repeat,  nl, write('- '),  read(Entrada),  consulta_base_dados(Entrada, Resposta),  write(Resposta), nl,  encerra_sessao(Entrada). 

consulta_base_dados(Entrada, RespostaCorreta) :-  definida_por(Entrada, RespostaCorreta), !.  

encerra_sessao(Entrada):-  Entrada = ('fim'). 

