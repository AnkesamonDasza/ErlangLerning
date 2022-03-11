
-module(euler_0003).
-author("HEX").

%% API
-export([run/0]).

run() ->
  primefactor(600851475143, 2, 0).


primefactor(1, _PF, LargPF)->
  io:fwrite("~w\n", [LargPF]);

primefactor(Number, PF, LargPF) when Number rem PF == 0 ->
  if
    PF > LargPF -> primefactor(Number div PF, 2, PF) ;
    true -> primefactor(Number div PF, 2, LargPF)
  end;

primefactor(Number, PF, LargPF) ->
  primefactor(Number, PF+1, LargPF).




