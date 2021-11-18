{-
Nome: Caio Henrique Pardal
RA: 195216
Tarefa 3 - MC346
-}

import Data.Char (isLetter, toLower)
import Data.List (sort, group)

countLetters :: String -> [(Int,Char)]
countLetters str = 
  let 
    filteredStr = filter isLetter str
    lowerCaseStr = map toLower filteredStr
    sortedStr = sort lowerCaseStr
    groupedStr = group sortedStr
  in 
  [(length groupOfLetters, head groupOfLetters) | groupOfLetters <- groupedStr]

letramaiscomum :: String -> Char
letramaiscomum "" = '\0'
letramaiscomum str = snd(maximum(countLetters(str)))

https://stackoverflow.com/questions/47876071/convert-uppercase-letters-to-lower-case-and-count-strings-in-haskell
