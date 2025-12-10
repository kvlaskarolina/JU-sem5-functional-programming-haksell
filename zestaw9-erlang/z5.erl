-module(z5).
-export([rownanieKwadratowe/3]).

rownanieKwadratowe(A, B, C) ->
    if 
        A =:= 0 ->
            if 
                B =:= 0 ->
                    if 
                        C =:= 0 ->
                            nieskonczenieWieleRozwiazan;
                        true ->
                            brakRozwiazan
                    end;
                true ->
                    -C / B
            end;
        
        true ->
            D = B*B - 4*A*C,
            if 
                D < 0 ->
                    brakRozwiazan;
                D =:= 0 ->
                    -B / (2 * A);
                D > 0 ->
                    X1 = (-B + math:sqrt(D)) / (2 * A),
                    X2 = (-B - math:sqrt(D)) / (2 * A),
                    {X1, X2}
            end
    end.
