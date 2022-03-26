
-module(euler_0023).
-author("HEX").

%% API
-export([run/0]).

run() ->
  AllNums = getAllNaturalNumbers(28123, []),
  AbundantNumbers = getAllAbundantNums(28123, []),
  SumsOfAbundNums = gestAbundandSums(AbundantNumbers),
  Nums = AllNums -- SumsOfAbundNums,
  io:fwrite("~w\n", [sumMembers(Nums, 0)]).

sumMembers([], Sum) -> Sum;
sumMembers([H|T], Sum) ->
  sumMembers(T, Sum+H).

gestAbundandSums(Tab) ->
  [X+Y || X <- Tab, Y <- Tab].

getAllNaturalNumbers(0, Tab) -> Tab;
getAllNaturalNumbers(Num, Tab) ->
  getAllNaturalNumbers(Num-1, [Num|Tab]).

getAllAbundantNums(1, Tab) -> Tab;
getAllAbundantNums(Num, Tab) ->
  Sum = getSumOfDivisors(Num),
  if Sum > Num -> getAllAbundantNums(Num-1, [Num|Tab]);
    true -> getAllAbundantNums(Num-1, Tab)
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