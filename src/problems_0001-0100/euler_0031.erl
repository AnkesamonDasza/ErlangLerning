-module(euler_0031).
-author("HEX").

%% API
-export([main/0]).

main() ->
  Coins  = [200, 100, 50, 20, 10, 5, 2, 1],
  Result = 200,
  io:format("Answer ~p ~n", [test31(Coins, Result)]).

test31(_, 0) -> 1;
test31([], _) -> 0;
test31(_, Result) when Result < 0 -> 0;
test31([Coin|Coins], Result) -> test31(Coins, Result) + test31([Coin|Coins], Result-Coin).


