/*
Nome: Caio Henrique Pardal
RA: 195216
Tarefa 7 - MC346
*/

trocatodos([],_,_,[]).
trocatodos([X|R],N,V,LN) :- X=V, trocatodos(R,N,V,RR), LN=[N|RR].
trocatodos([X|R],N,V,LN) :- trocatodos(R,N,V,RR),LN = [X|RR].
