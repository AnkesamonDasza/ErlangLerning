-module(euler_0014).
-author("HEX").

%% API
-export([run/0]).

run() ->
  Val = check(1000000, 0, 0),
  io:fwrite("~w\n", [Val]).

check(1, _, Value) -> Value;
check(Num, MaxChain, Value) ->
  Chain = getChain(Num, 0),
  if Chain > MaxChain -> check(Num-1, Chain, Num);
    true -> check(Num-1, MaxChain, Value)
  end.

getChain(1, Size) -> Size;
getChain(Num, Size) ->
  Even = isEven(Num),
  if Even -> getChain(Num div 2, Size+1);
    true ->getChain((Num*3)+1, Size+1)
  end.

isEven(N) -> N rem 2 == 0.