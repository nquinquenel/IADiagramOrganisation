%Ordonnancement

aire([X1,X2|[]], [Y1,Y2|[]], Tmp, RET):-
    RET1 is ((1/2*(X1/Y1)*(X2/Y2))) + Tmp,
    RET is RET1.

aire([X1,X2|L1], [Y1,Y2|L2], Tmp, RET):-
    RET1 is ((1/2*(X1/Y1)*(X2/Y2))) + Tmp,
    aire([X2|L1], [Y2|L2], RET1, RET).

aireInit(L1,L2,RET):-
    aire(L1,L2,0,RET).



























