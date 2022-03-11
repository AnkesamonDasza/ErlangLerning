
-module(euler_0002).
-author("HEX").

%% API
-export([run/0]).

run() ->
  fibo(1, 2, 0).

fibo(X, Y, Sum) when Y < 4000000 ->
  if
    Y rem 2 == 0 -> fibo(Y, X+Y, Sum+Y);
    true ->  fibo(Y, X+Y, Sum)
  end;

fibo(_,_, Sum) ->
  io:fwrite("~w\n", [Sum]).


