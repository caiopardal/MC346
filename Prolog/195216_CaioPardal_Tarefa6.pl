/*
Nome: Caio Henrique Pardal
RA: 195216
Tarefa 6 - MC346
*/

v(v1).
v(v2).
v(v3).
v(v4).
v(v5).
v(v6).

a(v1, v2).
a(v1, v3).
a(v2, v4).
a(v3, v4).
a(v3, v6).
a(v4, v5).
a(v4, v6).

conectado(V1, V2) :- a(V1, V2).
conectado(V1, V2) :- a(V1, X), conectado(X, V2).
