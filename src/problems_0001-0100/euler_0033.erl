-module(euler_0033).
-author("HEX").

%% API
-export([main/0]).

main() ->
  Num = lists:seq(10,99),
  Wynik = lists:flatten([{X,Y} || X <- Num, Y <- Num, X<Y, length(commonPart(X,Y)) > 0, (X rem 10) =/= 0]),
  io:format("Answer ~p ~n", [getDenomVal(getProduct(Wynik,1))]).

getDenomVal(X) -> getDenomVal(X, 1).
getDenomVal(X, D)when X >= 1 -> D;
getDenomVal(X, D) -> getDenomVal(X*10, D*10).


getProduct([], Prod) -> Prod;
getProduct([{L,M}|T], Prod) ->
  getProduct(T, Prod*(L / M)).


commonPart(A, B) ->
  TabA = integer_to_list(A),
  TabB = integer_to_list(B),
  [list_to_integer(TabB--[X]) || X <- TabA, Y <- TabB, X =:= Y, test33(A,B,list_to_integer(TabA--[X]),list_to_integer(TabB--[X]))].


test33(A,B,X,Y) when B =/= 0, Y =/= 0 ->
  Q = (A / B),
  W = (X / Y),
  Q =:= W;
test33(_,_,_,_) -> false.





