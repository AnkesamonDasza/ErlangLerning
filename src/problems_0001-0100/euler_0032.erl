-module(euler_0032).
-author("HEX").

%% API
-export([main/0]).

main() ->
  A = lists:seq(1,99),
  B = lists:seq(100,10000),
  Wynik = [X*Y || X <- A, Y <- B, isOk(X,Y, X*Y)],
  io:format("Answer ~p ~n", [lists:sum(lists:usort(Wynik))]).

isOk(X, Y, Z) ->
  Val = integer_to_list(X)++integer_to_list(Y)++integer_to_list(Z),
  isLengthEnough(Val) and isNumberCorrect(Val).

isLengthEnough(Val) ->
  9 == length(Val).
isNumberCorrect(Val) ->
  "123456789" == lists:usort(Val).




