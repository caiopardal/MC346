{-
Nome: Caio Henrique Pardal
RA: 195216
Tarefa 1 - MC346
-}

-- 1) Função Trocatodos 
trocatodos _ _ [] = []
trocatodos velho novo (x:xs) 
  | x == velho = [novo] ++ trocatodos velho novo xs
  | otherwise = [x] ++ trocatodos velho novo xs

-- 2) Função Cumulative Sum
cumsum ls = sum ls 0
    where sum [] _ = []
          sum (l:ls) acc = (acc+l) : sum ls (acc+l)
