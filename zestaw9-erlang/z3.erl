-module(z3).
-export([posNeg/1]).

posNeg(List) ->
    A = lists:sum ([ 1 || X <- List, X > 0]),
    B = lists:sum ([ 1 || X <- List, X < 0]),
    {A, B}.