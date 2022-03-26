-module(euler_0025).
-author("HEX").

%% API
-export([run/0]).

run() ->
  Index = getFibo(1000),
  io:fwrite("~w\n", [Index]).

getFibo(Digits) ->
  getFibo(Digits, 1, 1, 2).
getFibo(Digits, F1, F2, Index) ->
  Sum = F1 + F2,
  IsSmaler = length(integer_to_list(Sum)) < Digits,
  if
    IsSmaler -> getFibo(Digits, F2, Sum, Index+1);
    true -> Index+1
  end.
