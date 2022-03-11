-module(euler_0009).
-author("HEX").

%% API
-export([run/0]).

run() ->
  X = 488,
  checkNumber(X,X,X).

checkNumber(0,B,C) ->
  checkNumber(B-2, B-1, C);
checkNumber(_,0,C) ->
  checkNumber(C-3, C-2 , C-1);
checkNumber(A,B,C) ->
  IsCorrect = isIt(A,B,C),
  if IsCorrect ->
    io:fwrite("~w\n", [A*B*C]);
    true -> checkNumber(A-1, B, C)
  end.

isIt(A,B,C) ->
  isPythagoreanTriplet(A,B,C) and isSum1000(A,B,C).

isPythagoreanTriplet(A,B,C) when ((A < B) and (B < C)) ->
  (A*A) + (B*B) == C*C;
isPythagoreanTriplet(_,_,_) -> false.

isSum1000(A,B,C) ->
  1000 == (A+B+C).

