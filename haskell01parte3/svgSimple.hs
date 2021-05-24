import Text.Printf

-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

-- Gera SVG com 2 círculos, um verde e um vermelho, com 0.4 de opacidade.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
svgAll :: String
svgAll = 
  svgBegin 1000 1000 ++ 
  (svgCircle 60 60 50 "rgb(10, 145, 32, 0.4)") ++ 
  (svgCircle 940 60 50 "rgb(105, 14, 30, 0.4)") ++ 
  (svgCircle 500 500 300 "rgb(25, 754, 321, 0.4)") ++ 
  (svgCircle 750 250 150 "rgb(150, 754, 21, 0.4)") ++
  (svgCircle 250 250 150 "rgb(150, 754, 21, 0.4)") ++ 
  svgEnd

main :: IO ()
main = do
  writeFile "circles.svg" svgAll
