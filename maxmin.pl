max([H|T], M) :- max(T,M1), H =< M1, M = M1. 
max([H|T], M) :- M = H.

min([H | T], M) :- min(T,M1), H >= M1, M = M1. 
min([H | T], M) :- M = H.

maxmin([],Max,Min).
maxmin(L,Max,Min) :- max(L,Max), min(L,Min),!.