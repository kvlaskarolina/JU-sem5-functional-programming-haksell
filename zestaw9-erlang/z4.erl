-module(z4).
-export([split/1]).

split(List) ->
    I = [ X || X <- List, is_integer(X)],
    R = [ X || X <- List, is_integer(X) =:= false],
    {I, R}.

