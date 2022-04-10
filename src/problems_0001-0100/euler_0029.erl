-module(euler_0029).
-author("HEX").

%% API
-export([main/0]).

main() ->
  Nums = [math:pow(X,Y) || X <- lists:seq(2,100), Y <- lists:seq(2,100)],
  io:format("Answer ~p ~n", [length(lists:usort(Nums))]).




