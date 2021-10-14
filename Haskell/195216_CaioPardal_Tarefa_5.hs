{-
Nome: Caio Henrique Pardal
RA: 195216
Tarefa 5 - MC346
-}

module Main where

main = do
    contents <- getContents
    let strWords = words contents
    let numOfWords = length strWords
    let charCount = sum (map length strWords)
    putStrLn "Palavras: "
    print numOfWords
    putStrLn "Caracteres: "
    print charCount
    putStrLn ""
