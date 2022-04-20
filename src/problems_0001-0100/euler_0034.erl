-module(euler_0034).
-author("HEX").

%% API
-export([main/0]).

main() ->
  Num = lists:seq(3,9999999),
  Wynik = lists:sum([X || X <- Num, X =:= digitFac(X)]),
  io:format("Answer ~p ~n", [Wynik]).

digitFac(X)-> digitFac(integer_to_list(X), 0).
digitFac([], Sum) -> Sum;
digitFac([H|T], Sum) ->
  K = list_to_integer([H]),
  digitFac(T, Sum+fac(K)).


fac(0) -> 1;
fac(1) -> 1;
fac(N) ->
  N * fac(N - 1).


