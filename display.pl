% -----------------------------------------------------------------------
% Predicat qui permet d'afficher la liste representant le plateau de
% jeu sous la forme d'une matrice 3x3
% printList(+L).
% L = liste plateau de jeu
% ----------------------------------------------------------------------
printList(L):- write('-------------------------------'),nl,afficheLigne1(L),nl,write('------------'),nl,afficheLigne2(L),nl,write('------------'),nl,afficheLigne3(L),nl, write('-------------------------------'),nl.
afficheLigne1(L):- getListCase(1,L,[_,X]),write(X),write(' | '),
  getListCase(2,L,[_,Y]),write(Y),write(' | '),
  getListCase(3,L,[_,Z]),write(Z).

afficheLigne2(L):- getListCase(4,L,[_,X]),write(X),write(' | '),
  getListCase(5,L,[_,Y]),write(Y),write(' | '),
  getListCase(6,L,[_,Z]),write(Z).

afficheLigne3(L):- getListCase(7,L,[_,X]),write(X),write(' | '),
  getListCase(8,L,[_,Y]),write(Y),write(' | '),
  getListCase(9,L,[_,Z]),write(Z).

%------------------------------------------------------------------------
% Predicat qui permet de dire a l'utilisateur combien de mouvements il
% peut effectuer
% -----------------------------------------------------------------------
print_nbMoves(Z2) :- Z2 > 1, write("Vous pouvez effectuer de 1 a "),write(Z2),write(" deplacements.").
print_nbMoves(_) :- write("Vous pouvez effectuer 1 deplacement.").