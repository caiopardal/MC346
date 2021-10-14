/*
Nome: Caio Henrique Pardal
RA: 195216
Tarefa 8 - MC346
*/

topo():-
    read(Input),                      % Reads the input
    sort(Input, Uniq),                % sort removing duplicate elements
    findall([Freq, X], (
        member(X, Uniq),              % for each unique element X
        include(=(X), Input, XX),
        length(XX, Freq)              % count how many times it appears in the List
    ), Freqs),
    sort(Freqs, SFreqs),              % sort (by frequency of appearence)
    last(SFreqs, [Freq, MostCommon]), % last pair is the most common
    write_ln(MostCommon).             % print the most common element
