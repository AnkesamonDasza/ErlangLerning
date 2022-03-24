-module(euler_0015).
-author("HEX").

%% API
-export([run/0]).

run() ->
  X=20,
  Y=20,
%%  Val = pascal(X*2,Y),
  Val = newton(X*2,Y),
  io:fwrite("~w\n", [Val]).

newton(N,K) ->
  silnia(N) / (silnia(K) * silnia(N-K)).

silnia(X) -> silnia(X, 1).
silnia(0, S) -> S;
silnia(X, S) ->
  silnia(X-1, X*S).