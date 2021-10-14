/*
Nome: Caio Henrique Pardal
RA: 195216
Tarefa 9 - MC346
*/

def theLengthOfMatchingSubstrings(string1, string2):
  for i in range(0, len(string1)):
    fim = string1[i:]
    if (len(fim)+1 < len(string2)):
      comeco = string2[:len(fim)]
      if (fim == comeco):
        print(len(fim))
        return
  return 0
