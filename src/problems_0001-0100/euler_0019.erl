
-module(euler_0019).
-author("HEX").

%% API
-export([run/0]).

run() ->
  Val = getMondays(1, 1901, 12, 2000, 0),
  io:fwrite("~w\n", [Val]).

getMondays(SM, SY, EM, EY, N) when ((SM == EM) and (SY==EY)) -> N;
getMondays(12, SY, EM, EY, N) ->
  Day = (7==calendar:day_of_the_week(SY, 12, 1)),
  if
    Day -> getMondays(1, SY+1, EM, EY, N+1);
    true -> getMondays(1, SY+1, EM, EY, N)
  end;
getMondays(SM, SY, EM, EY, N) ->
  Day = (7 == calendar:day_of_the_week(SY, SM, 1)),
  if
    Day -> getMondays(SM+1, SY, EM, EY, N+1);
    true -> getMondays(SM+1, SY, EM, EY, N)
  end.