%%%-------------------------------------------------------------------
%%% @author manishkumarpandey
%%% @copyright (C) 2026, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Jun 2026 5:38 pm
%%%-------------------------------------------------------------------
-module(specialPrime).
-author("manishkumarpandey").

%% API
-export([isPrime/1,largest_prime_smaller_than/1]).


isPrime(N) when N > 1 ->
  isPrime(N,2);
isPrime(N) when N <2 ->
  false.

isPrime(N,Div) when Div * Div > N ->
  true;
isPrime(N,Div) when N rem Div =:= 0 ->
  false;
isPrime(N,Div) ->
  isPrime(N, Div+1).

largest_prime_smaller_than(N) when N < 2 ->
  'no prime';
largest_prime_smaller_than(N) ->
  largest_prime_smaller_than(N, N-1).
