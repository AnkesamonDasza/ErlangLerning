
-module(euler_0020).
-author("HEX").

%% API
-export([run/0]).

run() ->
  Val = fact(100),
  Sum = sumOfDigit(integer_to_list(Val), 0),
  io:fwrite("~w\n", [Sum]).

sumOfDigit([], Sum) ->Sum;
sumOfDigit([H|T], Sum) ->
  sumOfDigit(T, Sum+list_to_integer([H])).

fact(N) when N>0 ->
  N * fact(N-1);
fact(0) ->
  1.