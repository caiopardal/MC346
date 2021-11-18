{-
Nome: Caio Henrique Pardal
RA: 195216
Tarefa 4 - MC346
-}

comprime :: Eq a => [a] -> [(a, Int)]
comprime [] = []
comprime (x:xs) = (x, 1 + length (takeWhile (==x) xs)) : comprime (dropWhile (==x) xs)

descomprime :: Eq a => [(a,Int)] -> [a]
descomprime [] = []
descomprime a = concat $ map (\(c, n) -> replicate n c) a
