-module(euler_0026).
-author("HEX").

%% API
-export([run/0]).

run() ->
  Nums = [X || X <- lists:seq(2,1000)],
  Cycles = [{getCycleLength(X), X} || X <- Nums],
  io:fwrite("{Recurring cycle, d-number}~n~p~n",[lists:max(Cycles)]).

getCycleLength(Num) ->
  X = 1 rem Num,
  getCycleLength(Num, X, []).
getCycleLength(Num, Rem, Tab) ->
  X = (Rem * 10) rem Num,
  Y = lists:member(integer_to_list(X), Tab),
  if
    Y -> length(Tab);
    true ->
      if
        X =/= 0 -> getCycleLength(Num, X, [integer_to_list(X)|Tab]);
        true -> 0
      end
  end.