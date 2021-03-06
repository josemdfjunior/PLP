questão__1

module Main where

fatorial n = if n==0 then 1 else n * fatorial (n-1)

main = do n <- readLn
          print(fatorial n)

questão__2
module Main where

fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

main = do n <- readLn
          print(fibonacci n)



questão__3
l1 = [3, 6, 5, 7]
l2 = [9, 7, 5, 1, 3]

intercalar lista1 [] = lista1
intercalar [] lista2 = lista2
intercalar (x:lista1) (y:lista2) = x : y : intercalar lista1 lista2

main = do print(intercalar l1 l2)



questão__4
module Main where

l1 = [1, 2, 3]
l2 = [4, 5, 6]

uniao lista1 lista2 = lista1 ++ [x | x <- lista2, (x `elem` lista1) == False]

main = do print(uniao l1 l2)

questão__5

module Main where

l1 = [3, 6, 5, 7]
l2 = [9, 7, 5, 1, 3]

interseccao lista1 lista2 = [x | x <- lista1, x `elem` lista2]

main = do print(interseccao l1 l2)




questão__6
module Main where

sequencia n m = take n [m..]

main = do print(sequencia 0 3)


questão__7
module Main where

l1 = [1,2,3,4,5,6,7]

impar lista = ([x | x <- lista, odd x], [x | x <- lista, (odd x) == False])

main = do print(impar l1)


questão__8
module Subsets
    (
      subsets
    ) where

subsets :: [a] -> [[a]]
subsets [] = [[]]
subsets (x:lista) = subsets lista ++ map (x:) (subsets lista)


questão__9
module Main where

-- contagem_aux :: [b] -> b -> a -> (a, b)
contagem_aux (x:lista) y cont = if (x==y) then contagem_aux lista x cont+1 else (cont, y)

contagem lista = [contagem_aux lista x 0 | x <- lista]

compactar lista = [x | x <- contagem lista]

l1 = [2,2,2,3,4,4,2,9,5,2,4,5,5,5]

main = do print(compactar l1)


questão__10
module Main where

fatorial_aux num parcial = if num == 1 then parcial else fatorial_aux (num-1) (parcial*num)
fatorial_cauda num = fatorial_aux num 1

main = do n <- readLn
          print(fatorial_cauda n) 
