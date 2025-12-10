-module(z6).
-export([sublists/2]).

sublists(_, 0) -> 
    [[]];
sublists([], _) -> 
    [];

sublists([H|T], N) when N > 0 ->
    WithH = [[H|Sub] || Sub <- sublists(T, N-1)],
    WithoutH = sublists(T, N),
    WithH ++ WithoutH.
