-- Prática 01 de Haskell - Parte 1
-- Nome: Augusto Pagnossim Frigo

sumSquares :: Int -> Int -> Int
sumSquares x y = x^2 + y^2

circleArea :: Float -> Float
circleArea r = pi * r^2

age:: Int -> Int -> Int
age bornYear currentYear = currentYear - bornYear

isElderly :: Int -> Bool
isElderly age = age > 65

htmlItem :: String -> String
htmlItem text = "<li>" ++ text ++ "</li>"

startsWithA :: String -> Bool
startsWithA text = (head text) == 'A'

isVerb :: String -> Bool
isVerb text = (last text) == 'r'

isVowel :: Char -> Bool
isVowel character
  |character == 'a' = True
  |character == 'e' = True
  |character == 'i' = True
  |character == 'o' = True
  |character == 'u' = True
  |otherwise = False

hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads eqHead1 eqHead2 = head(eqHead1) == head(eqHead2)

isVowel2 :: Char -> Bool
isVowel2 character = elem character "aeiouAEIOU" 
