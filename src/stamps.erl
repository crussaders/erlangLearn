%%%-------------------------------------------------------------------
%%% @author manishkumarpandey
%%% @copyright (C) 2026, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 27. Jun 2026 12:57 pm
%%%-------------------------------------------------------------------
-module(stamps).
-author("manishkumarpandey").

%% API
-export([stamp/1]).

%%stamp(N) when N =:= 10 ->
%%  io:format("~p~n",[N]),
%%  stamp(N+1);
%%stamp(0) ->
%%  ok.

%%stamp(N) when N >= 0 ->
%%  print_up_to(1, N).
%%
%%print_up_to(Current, Limit) when Current =< Limit ->
%%  io:format("~p~n",[Current]),
%%  print_up_to(Current + 1, Limit);
%%
%%print_up_to(Current, Limit) when Current > Limit ->
%%  ok.
%%stamp(Min, Max) ->
%%  MinVal =  erlang:min(Min,Max),
%%  MaxVal =  erlang:max(Min,Max),
%%  io:format("~p~n",[MaxVal]).

stamp(N) when N >= 0 ->
  {P,Q} = compute_stamps(N,0,0),
  {P,Q}.

compute_stamps(0,P,Q) ->
  {P,Q};

compute_stamps(N,P,Q) when N >= 4, N rem 7 /= 0 ->
  compute_stamps(N-4,P,Q+1);

compute_stamps(N,_, Q) when N > 0 ->
  P1 = N div 7,
  {P1, Q}.
