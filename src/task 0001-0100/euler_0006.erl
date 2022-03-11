-module(euler_0006).
-author("HEX").

%% API
-export([run/0]).

run() ->
  A = sumOfSquares(100),
  B = squaresOfSum(100),
  io:fwrite("~w\n", [(B*B)-A]).

sumOfSquares(Num) ->
  sumOfSquares(Num, 0).
sumOfSquares(0, Sum) ->
  Sum;
sumOfSquares(Num, Sum) ->
  sumOfSquares(Num-1, Sum + (Num*Num)).

squaresOfSum(Num) ->
  squaresOfSum(Num, 0).
squaresOfSum(0, Sum) ->
  Sum;
squaresOfSum(Num, Sum) ->
  squaresOfSum(Num-1, Sum + Num).