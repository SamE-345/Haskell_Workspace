new_Para :: String -> Bool
new_Para [] = True
new_Para (x:xs) = False

-- Check for new para or end para by function that reads next / previous lines to see if empty
check_Para :: Int -> Bool -> String -- Second bool True = start para
check_Para x y
    | x == new_Para(get_File_Line x) && y = "<p>"
    | x == new_Para(get_File_Line x) && y = "<\p>"

readFileLineByLine :: FilePath -> IO ()
readFileLineByLine filePath = do
    content <- readFile filePath           
    let linesOfFile = lines content        
             


get_File_Line :: Int -> String
get_File_Line x = "Contents"



header :: String -> String
header x 
    | x == "#" = "<h1>"
    | x == "##" = "<h2>"
    | x == "###" = "<h3>"
    | x == "####" == "<h4>"


