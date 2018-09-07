progenitor(jose,joao).
progenitor(maria,joao).
progenitor(jose,ana).
progenitor(maria,ana).

progenitor(ana,helena).
progenitor(ana,joana).

progenitor(joao,mario).

progenitor(mario,carlos).
progenitor(helena,carlos).

masculino(jose).
masculino(joao).
masculino(mario).
masculino(carlos).

feminino(maria).
feminino(ana).
feminino(helena).
feminino(joana).

irma(X, Y) :-
    progenitor(Z,X),progenitor(Z,Y),feminino(X).

irmao(X,Y) :-
    progenitor(Z,X),progenitor(Z,Y),masculino(X).

descendente(X,Y) :-
    progenitor(Y,Z),progenitor(Z,X).

descendente(X,Y) :-
    progenitor(Y,X).

mae(X, Y) :-
    progenitor(X,Y),feminino(X).

pai(X, Y) :-
    progenitor(X,Y),masculino(X).

avo(X,Y) :-
    descendente(X,Y),masculino(X).

tio(X,Y) :-
    pai(Z,Y),irmao(Z,X).

primo(X,Y) :-
    pai(Z,X),tio(Z,Y).
