
-module(euler_0001).
-author("HEX").

%% API
-export([test/0]).

test() ->
  check(999, 0).

check(X, Sum) when X == 0 ->
  io:fwrite("~w\n", [Sum]);

check(X, Sum) when X rem 3 == 0 ->
  check(X-1, Sum+X);

check(X, Sum) when X rem 5 == 0 ->
  check(X-1, Sum+X);

check(X, Sum) ->
  check(X-1, Sum).

%%check(X, Sum) when X > 0 ->
%%  if
%%    0 == X rem 3 -> check(X-1, Sum+X);
%%    0 == X rem 5 -> check(X-1, Sum+X);
%%  true -> check(X-1, Sum)
%%  end;
%%
%%check(_, Sum) ->
%%  io:fwrite("~w\n", [Sum]).


