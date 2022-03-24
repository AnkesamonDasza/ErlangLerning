
-module(euler_0017).
-author("HEX").

%% API
-export([run/0]).

run() ->
  Num = 1000,
  Val = getSum(Num, 0),
  io:fwrite("~w\n", [Val]).

getSum(0, Sum) -> Sum;
getSum(Num, Sum) ->
  Size = length(integer_to_list(Num)),
  if
    Size == 3 -> Word = getThree(integer_to_list(Num));
    Size == 2 -> Word =  getTwo(Num);
    Size == 1 -> Word =  getWord(Num);
    true -> Word =  getWord(1000)
  end,
  io:fwrite("~s~n", [Word]),
  getSum(Num-1, Sum + length(Word)).

getThree([First|Rest]) ->
  A = getWord(list_to_integer([First]))++getWord(zero),
  C = getTwo(list_to_integer(Rest)),
  if
    C == "" -> B="";
    true -> B = "and"
  end,
  A++B++C.

getTwo(Num) when Num<20 ->
  getWord(Num);
getTwo(Num) ->
  [First|Second] = integer_to_list(Num),
  A = getWord(list_to_integer([First])*10),
  B = getWord(list_to_integer(Second)),
  A++B.


getWord(zero) -> "hundred";
getWord(0) -> "";
getWord(1) -> "one";
getWord(2) -> "two";
getWord(3) -> "three";
getWord(4) -> "four";
getWord(5) -> "five";
getWord(6) -> "six";
getWord(7) -> "seven";
getWord(8) -> "eight";
getWord(9) -> "nine";
getWord(10) -> "ten";
getWord(11) -> "eleven";
getWord(12) -> "twelve";
getWord(13) -> "thirteen";
getWord(14) -> "fourteen";
getWord(15) -> "fifteen";
getWord(16) -> "sixteen";
getWord(17) -> "seventeen";
getWord(18) -> "eighteen";
getWord(19) -> "nineteen";
getWord(20) -> "twenty";
getWord(30) -> "thirty";
getWord(40) -> "forty";
getWord(50) -> "fifty";
getWord(60) -> "sixty";
getWord(70) -> "seventy";
getWord(80) -> "eighty";
getWord(90) -> "ninety";
getWord(1000) -> "onethousand".

