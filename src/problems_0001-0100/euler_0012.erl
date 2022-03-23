-module(euler_0012).
-author("HEX").

%% API
-export([run/0]).

run() ->
  Value = getTriangleNumberWithDivisor(1, 1, 1),
  io:fwrite("~w\n", [Value]).


getTriangleNumberWithDivisor(_, Divisor, Sum) when Divisor > 499 -> Sum;
getTriangleNumberWithDivisor(N, _, Sum) ->
  Num = N+1,
  Suma = Sum+Num,
  if
    (Suma rem 2) == 0 -> Div = getDivisors(Suma, Suma div 2, 0);
    true -> Div = 0
  end,
  getTriangleNumberWithDivisor(Num, Div, Suma).

getDivisors(_, 1, Div) -> Div+2;
getDivisors(Sum, Num, Div) ->
  if 0 == (Sum rem Num) -> getDivisors(Sum, Num-1, Div+1);
    true ->  getDivisors(Sum, Num-1, Div)
  end.
