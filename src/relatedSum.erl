%%%-------------------------------------------------------------------
%%% @author manishkumarpandey
%%% @copyright (C) 2026, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 27. Jun 2026 3:36 pm
%%%-------------------------------------------------------------------
-module(relatedSum).
-author("manishkumarpandey").

%% API
-export([related_sum/1]).


related_sum(N) when is_integer(N), N >= 0 ->
  {FirstHalf, SecondHalf} = split_Number(N),
  SumFirstHalf = sum_digits(FirstHalf),
  SumSecondHalf = sum_digits(SecondHalf),
  Relationship = compare_sums(SumFirstHalf,SumSecondHalf),
  io:format("~w ~s ~w~n",[SumFirstHalf, Relationship,SumSecondHalf]).

split_Number(N) ->
  Digits = integer_to_list(N),
  Length = length(Digits),
  HalfSize = Length div 2,
  {list_to_integer(lists:sublist(Digits,HalfSize)),
  list_to_integer(lists:sublist(Digits,(Length-HalfSize)+1, HalfSize))}.

sum_digits(Number) ->
  sum_digits(Number,0).

sum_digits(0, Sum) ->
  Sum;
sum_digits(Number, Sum) when Number > 0 ->
  Digit = Number rem 10,
  sum_digits(Number div 10, Digit + Sum).

compare_sums(Sum1,Sum2) when Sum1 < Sum2 -> "<";
compare_sums(Sum1,Sum2) when Sum1 > Sum2 -> ">";
compare_sums(_,_) -> "=".