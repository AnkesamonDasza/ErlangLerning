-module(euler_0021).
-author("HEX").

%% API
-export([run/0]).

run() ->
  Val = 10000,
  Sum = getSumOfAmicableNumbers(Val),
  io:fwrite("~w\n", [Sum]).

getSumOfAmicableNumbers(Num) ->
  getAmbSum(Num, 0).
getAmbSum(1, Sum) -> Sum;
getAmbSum(Num, Sum) ->
  A = getSumOfDivisors(Num),
  B = getSumOfDivisors(A),
  if
    ((B == Num) and (A =/= B)) -> getAmbSum(Num-1, Sum+Num);
    true -> getAmbSum(Num-1, Sum)
  end.

getSumOfDivisors(Num)->
  getSumOfDivisors(Num, Num div 2,  0).
getSumOfDivisors(_, 0, Sum) -> Sum;
getSumOfDivisors(Num, Div, Sum) ->
  IsDivided = (Num rem Div) == 0,
  if
    IsDivided -> getSumOfDivisors(Num, Div-1, Sum+Div);
    true -> getSumOfDivisors(Num, Div-1, Sum)
  end.