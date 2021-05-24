-- Prática 01 de Haskell - Parte 2
-- Nome: Augusto Pagnossim Frigo

--recolocando as funcoes da parte1 aqui pra poder chamar elas

htmlItem :: String -> String
htmlItem text = "<li>" ++ text ++ "</li>"

isVowel2 :: Char -> Bool
isVowel2 character = elem character "aeiouAEIOU" 

isElderly :: Int -> Bool
isElderly age = age > 65

isLongWord :: String -> Bool 
isLongWord s = length s > 10

itemize :: [String] -> [String]
itemize names = map htmlItem names

onlyVowels :: String -> String
onlyVowels word = filter isVowel2 word

onlyElderly :: [Int] -> [Int]
onlyElderly ages = filter isElderly ages 

onlyLongWords :: [String] -> [String]
onlyLongWords  word = filter isLongWord word

isEven  :: Int -> Bool
isEven n = mod n 2 == 0

onlyEven :: [Int] -> [Int]
onlyEven number = filter isEven number  

between60And80 :: Int -> Bool
between60And80 n = if n >60 && n < 80 then True else False

onlyBetween60And80:: [Int] -> [Int]
onlyBetween60And80 numbers = filter between60And80 numbers

isSpace:: Char -> Bool
isSpace n = n == ' '

countSpaces :: String -> Int
countSpaces word = length (filter isSpace word) 

circleArea :: Float -> Float
circleArea r = pi * r^2

calcAreas:: [Float] -> [Float]
calcAreas r = map circleArea r

charFound :: Char -> String -> Bool
charFound character word
  |word == [ ] = False
  |character == (head word) = True
  |character /= (head word) = charFound character (tail word)
