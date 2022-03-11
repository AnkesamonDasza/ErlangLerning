-module(euler_0005).
-author("HEX").

%% API
-export([run/0]).

run() ->
  smalestNumber(40).

smalestNumber(Num) ->
  Tab = [3, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 19],
  case isDividable(Num, Tab) of
    true -> io:fwrite("~w\n", [Num]);
    false -> smalestNumber(Num+20)
  end.

isDividable(_, []) ->
  true;
isDividable(Num, [H|T]) ->
  if
    Num rem H == 0 -> isDividable(Num, T) ;
    true -> false
  end.