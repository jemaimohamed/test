positive(N):-N>=0,!.
negative(N):-N<0,!.

filter(F,[],[]).

filter(positive,[H|T],[H,S]) :- positive(H), filter(positive,T,[H|S]).

filter(positive,[H|T],S) :-negative(H),filter(negative,T,S).

filter(negative,[H|T],[H|S]) :- negative(H), filter(negative,T,[H|S]).

filter(negative,[H|T],S):-positive(H),filter(positive,T,S).


