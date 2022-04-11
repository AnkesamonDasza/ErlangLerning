-module(euler_0030).
-author("HEX").

%% API
-export([main/0]).

main() ->
  Pow = 5,
  Digit = lists:seq(0,9),
  Nums = [{lists:concat([A,B,C,D,E,F]), math:pow(A,Pow)+math:pow(B,Pow)+math:pow(C,Pow)+math:pow(D,Pow)+math:pow(E,Pow)+math:pow(F,Pow)} || A <- Digit, B <- Digit, C <- Digit, D <- Digit, E <- Digit, F <- Digit],
  N = [list_to_integer(X) || {X,Y} <- Nums, list_to_integer(X) == Y],
  io:format("Answer ~p ~n", [lists:sum(N)-1]).




