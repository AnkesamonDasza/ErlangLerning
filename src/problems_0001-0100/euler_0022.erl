-module(euler_0022).
-author("HEX").

%% API
-export([run/0]).

run() ->
  {ok, File} = file:read_file("src/resource/p022_names.txt"),
  SortedList = lists:sort(string:tokens(binary_to_list(File), ",")),

  io:fwrite("~w\n", [getScore(SortedList, 0, 1)]).

getScore([], Score, _) -> Score;
getScore([H|L], Score, Position) ->
   WordScore = getWordScore(H) * Position,
  getScore(L, (WordScore+Score), Position+1).

getWordScore(Word) ->
  getWordScore(Word, 0).
getWordScore([], Score) -> Score;
getWordScore([H|L], Score) ->
  getWordScore(L, Score+(H-64)).

