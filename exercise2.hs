getMinPastes :: Int -> Int
getMinPastes a = ceiling (logBase 2 (fromIntegral a))

printStringNTimes 0 = return ()
printStringNTimes n =
 do
  putStrLn "Hello World!"
  printStringNTimes (n-1)

main = do
 putStr "Enter your input: "
 input <- getLine
 let x = (read input :: Int)
 if x < 0
  then putStrLn "Error: Invalid input"
  else do
    printStringNTimes x
    let y = getMinPastes x
    putStrLn ("Minimum number of pastes required: " ++show(y)++ ".")