-module(euler_0035).
-author("HEX").

%% API
-export([main/0]).

main() ->
  Num = [integer_to_list(X) || X <- sieve(lists:seq(2,1000000))],
  put("tab", Num),
  Wynuk = [X || X <- Num, test35(X,length(X))],
  io:format("Answer ~p ~n", [Wynuk]),
  io:format("Answer ~p ~n", [length(Wynuk)]).

test35(_, 0) -> true;
test35([H|T], Len) ->
  Num = T++[H],
  IsMember = lists:member(Num, get("tab")),
  if
    IsMember -> test35(Num, Len-1);
    true -> false
  end.

sieve([]) ->
  [];
sieve([H|T]) ->
  List = lists:filter(fun(N) -> N rem H /= 0 end, T),
  [H|sieve(List)];
sieve(N) ->
  sieve(lists:seq(2,N)).


