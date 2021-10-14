{-
Nome: Caio Henrique Pardal
RA: 195216
Tarefa 1 - MC346
-}

merge :: Ord a => [a] -> [a] -> [a]
merge [] [] = []
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
  | x <= y 	= x : merge xs (y:ys)
  | otherwise = y : merge (x:xs) ys

haskellmergesort :: Ord a => [a] -> [a]
haskellmergesort a
	| (length a) <= 1 = a
	| otherwise = merge (haskellmergesort partOne) (haskellmergesort partTwo)
		where
			half = (length a) `div` 2
			partOne = take half a
			partTwo = drop half a
