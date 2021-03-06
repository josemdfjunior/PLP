% 1. Fatorial

-module(main).
-export([start/0]).
 
start() ->
  calc_fatorial(5).
 
fatorial(N) when N == 0 -> 1;
fatorial(N) when N > 0 -> N * fatorial(N-1).
 
calc_fatorial(X) ->
  Y = fatorial(X),
  io:fwrite("Fatorial de ~p é: ~p\n", [X, Y]).

% 2. Fibonacci

-module(main).
-export([start/0]).

start() ->
  calc_fibonacci(6).

fib(N) when N < 2 -> N;
fib(N) when N > 1 -> fib(N-1) + fib(N-2).

calc_fibonacci(X) ->
  Y = fib(X),
  io:fwrite("Fibonacci de ~p é: ~p\n", [X, Y]).

% 3. Intercala

-module(main).
-import(lists,[append/2]).
-import(lists,[merge/2]).
-import(lists,[reverse/2]).
-export([start/0]).

start() ->
  Lista1 = [1,2,3],
  Lista2 = [8,9],
  Lista3 = merge(Lista2,Lista1),
  Set = sets:from_list(Lista3),
  R = sets:to_list(Set),
  Result = lists:reverse([R],[]),
  io:fwrite("~w~n",[Result]).

% 4. Uniao

-module(main).
-export([start/0,uniao/2]).

start() ->
    io:fwrite("~p", [uniao([1,2,3], [2,3,4])]).

uniao(Lista1, Lista2) ->
  Aux = Lista2 -- Lista1,
  Result = Lista1 ++ Aux,
  Result.

%5. Intersecao.

-module (main).
-export ([start/0,intersecao/2]).
start() ->
    io:fwrite("~p", [intersecao([1,2,3], [2,3,4])]).

intersecao(L1,L2) -> [X || X <- L1, Y <- L2, X == Y].

% 6. Sequencia N M

-module(main).
-export([start/0]).

% quando N = 1, adiciona M no início da lista
sequencia(1, M) -> [M];
sequencia(N, M) when N > 1 ->
     % enquanto N > 1, adiciona M+(N-1) ao início da lista e decrementa N
     sequencia(N-1, M) ++ [M+N-1].

start() ->
    io:fwrite("~p", [sequencia(5, 7)]).

% 7. tupla impares e pares

-module(main).
-export([start/0]).

start() ->
    A = [X || X <- [1,2,3,4,5,6,7,8,9,10],
    X rem 2 =:= 0],
    B = [Y || Y <- [1,2,3,4,5,6,7,8,9,10],
    Y rem 2 =/= 0],
    R = [B] ++ [A],
    io:fwrite("~w~n",[R]).


% 8. Conjuntos

-module (main).
-export ([start/0]).

start() ->
  R = conjuntos([2,3,4]),
  io:fwrite("~w~n",[R]).

  conjuntos([]) -> [[]];
  conjuntos([H|T]) -> A = conjuntos(T), [[H|B] || B <- A ] ++ A.

% 9. Compressao

-module(main).
-import(lists, [filter/2]).
-export([start/0, compactar/1, count/1, nextDiffrent/1]).

start() ->
  R = compactar([2,2,2,3,4,4,2,9,5,2,4,5,5,5]),
  io:fwrite("~w~n",[R]).

count([]) -> 0;
count([_]) -> 0;
count([A, B|Tail]) ->
  case {A == B} of
    {true} -> 1 + count([B|Tail]);
    {false} -> 0
  end.

nextDiffrent([]) -> [];
nextDiffrent([_]) -> [];
nextDiffrent([A, B|Tail]) ->
  case {A == B} of
    {true} -> nextDiffrent([B|Tail]);
    {false} -> [B|Tail]
  end.

compactar([]) -> [];
compactar([_, _]) -> [];
compactar([A, B|Tail]) ->
  case {count([A,B|Tail]) > 0} of
    {true} -> [[1 + count ([A,B|Tail]), A]]
      ++ compactar(nextDiffrent([A, B| Tail]));
    {false} -> [A] ++ compactar(nextDiffrent([A, B| Tail]))
  end.


%10. fatorial recursão em cauda

-module(main).
-export([start/0]).
 
start() ->
  R = fatorial_cauda(5),
  io:fwrite("~p~n",[R]).

fatorial_aux(X,Y) ->
   if
      X == 1 ->
         Y;
      true ->
         fatorial_aux((X-1),(Y * X))
   end.

fatorial_cauda(X) ->
   fatorial_aux(X,1).
