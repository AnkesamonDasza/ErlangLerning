-module(euler_0028).
-author("HEX").

%% API
-export([main/0]).

main() ->
  io:format("Answer ~p ~n", [test28(1001)]).

test28(Size) -> test(0, Size, 1, 2, 4).

test(Counter, Size, Value, Rise, _) when Rise > Size -> Counter+Value;
test(Counter, Size, Value, Rise, Tick) when Tick == 1 ->
  test(Counter+Value, Size,  Value+Rise, Rise+2, 4);
test(Counter, Size, Value, Rise, Tick) ->
  test(Counter+Value, Size, Value+Rise, Rise, Tick-1).

