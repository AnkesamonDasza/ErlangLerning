-module(euler_0010).
-author("HEX").

%% API
-export([run/0]).

run() ->
  X = 2000000,
  checkNumber(X, 0).

checkNumber(1, Sum) ->
  io:fwrite("~w\n", [Sum]);
checkNumber(X, Sum) ->
  Prime = isPrime(X),
  if
    Prime -> io:fwrite("~w\n", [X]),
      checkNumber(X-1, Sum+X);
    true -> checkNumber(X-1, Sum)
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