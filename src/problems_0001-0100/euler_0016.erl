
-module(euler_0016).
-author("HEX").

%% API
-export([run/0]).

run() ->
  A=2,
  N=1000,
  Number = math:pow(A,N),
  io:fwrite("~w\n", [Number]),
  Val = sum(integer_to_list(round(Number)), 0),

  io:fwrite("~w\n", [Val]).

sum([], Sum) -> Sum;
sum([H|T], Sum) ->
  sum(T, list_to_integer([H])+Sum).

