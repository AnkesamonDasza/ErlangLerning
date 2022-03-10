-module(euler_0007).
-author("HEX").

%% API
-export([run/0]).

run() ->
  getPrimeNumber(10001, 1).

getPrimeNumber(0, Number) ->
  io:fwrite("~w\n", [Number-1]);
getPrimeNumber(Count, Number) ->
  case isPrime(Number) of
    true -> getPrimeNumber(Count-1, Number+1);
    false -> getPrimeNumber(Count, Number+1)
  end.

isPrime(Number) ->
  isPrime(Number, Number div 2).

isPrime(_, 1) ->
  true;
isPrime(N, M) ->
  if
    0 == (N rem M) -> false;
    true -> isPrime(N, M-1)
  end.