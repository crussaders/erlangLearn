%%%-------------------------------------------------------------------
%%% @author manishkumarpandey
%%% @copyright (C) 2026, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Jun 2026 2:09 pm
%%%-------------------------------------------------------------------
-module(conditional).
-author("manishkumarpandey").

%% API
-export([simulation/1]).


simulation(N) ->
  if
  N =:= 2 -> might_succeed;
  N =:= 5 -> might_fail;
  true -> always_succeeds
  end.