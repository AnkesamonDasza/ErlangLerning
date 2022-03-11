-module(euler_0004).
-author("HEX").

%% API
-export([run/0]).

run() ->
  palindrome(999, 999, 0).


palindrome(100, 100, Numb) ->
  io:fwrite("~w\n", [Numb]);
palindrome(A, B, Numb) when A >= 100 ->
  Tmp = A * B,
  case (isPalindrome(Tmp) and (Tmp > Numb)) of
    true -> palindrome(A-1, B, Tmp);
    false -> palindrome(A-1, B, Numb)
  end;
palindrome(_,C , Numb) ->
  B=C-1,
  Tmp = B * B,
  case  (isPalindrome(Tmp) and (Tmp > Numb)) of
    true -> palindrome(B, B, Tmp);
    false -> palindrome(B, B, Numb)
  end.


isPalindrome(Numb) ->
  T = list_to_integer(lists:reverse(integer_to_list(Numb))),
  Numb == T.
