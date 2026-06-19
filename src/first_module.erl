%%%-------------------------------------------------------------------
%%% @author manishkumarpandey
%%% @copyright (C) 2026, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 19. Jun 2026 11:09 pm
%%%-------------------------------------------------------------------
-module(first_module).
-author("manishkumarpandey").

%% API
-export([my_function/1]).
-import(math,[sin/1,cos/1]).


my_function(X) ->
  X * 2 * sin(10).