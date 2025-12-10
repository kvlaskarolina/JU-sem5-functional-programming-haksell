-module(z2).
-export([srednia/1]).

srednia(Lista) ->
    Suma = lists:sum(Lista),
    N = length(Lista),
    Suma / N.