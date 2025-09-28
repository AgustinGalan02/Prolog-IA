%Padres
padre(abraham, herb).
padre(abraham, homer).
padre(clancy, marge).
padre(clancy, patty).
padre(clancy, selma).
padre(homer, bart).
padre(homer, lisa).
padre(homer, maggie).

%Madres
madre(mona, homer).
madre(mona, herb).
madre(jackie, marge).
madre(jackie, patty).
madre(jackie, selma).
madre(marge, bart).
madre(marge, lisa).
madre(marge, maggie).
madre(selma, ling).

% Hermanos y hermanas
hermano(X,Y):- padre(Z,X), padre(Z,Y), madre(W,X), madre(W,Y), X \= Y.
hermana(X,Y):- padre(Z,X), padre(Z,Y), madre(W,X), madre(W,Y), X \= Y.

% Tios y tias
tio(X,Y):- hermano(X,Z), padre(Z,Y).
tio(X,Y):- hermano(X,Z), madre(Z,Y).

tia(X,Y):- hermana(X,Z), padre(Z,Y).
tia(X,Y):- hermana(X,Z), madre(Z,Y).

% Abuelos y abuelas
abuelo(X,Y):- padre(X,Z), padre(Z,Y).
abuelo(X,Y):- padre(X,Z), madre(Z,Y).

abuela(X,Y):- madre(X,Z), padre(Z,Y).
abuela(X,Y):- madre(X,Z), madre(Z,Y).


