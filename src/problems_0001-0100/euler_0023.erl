-module(euler_0023).
-author("HEX").

%% API
-export([run/0]).

run() ->
  AllPerms = perms([0,1,2,3,4,5,6,7,8,9]),
  Millionth = lists:nth(1000000, AllPerms),
  io:fwrite("~w\n", [Millionth]).

perms([]) -> [[]];
perms(L)  ->
  [[H|T] || H <- L, T <- perms(L--[H])].