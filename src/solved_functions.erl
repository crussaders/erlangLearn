%%%-------------------------------------------------------------------
%%% @author manishkumarpandey
%%% @copyright (C) 2026, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Jun 2026 2:26 pm
%%%-------------------------------------------------------------------
-module(solved_functions).
-author("manishkumarpandey").


%% API
-export([squaresAndRoot/1]).

%%
%%
%%squaresAndRoot(N) ->
%%  io:format("The Square of ~w is ~w and root is ~p~n ", [N, N*N, math:sqrt(N)]).



squaresAndRoot(N) when N >= 0 ->
  Square = N * N,
  Sqrt = math:sqrt(N),
  {Square,Sqrt};

squaresAndRoot(_) ->
  {error, "Invalid input: The number must be non-negative."}.