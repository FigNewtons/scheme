module Main where

import System.Environment (getArgs)

int :: String -> Int
int n = read n :: Int

computeSum :: [String] -> Int
computeSum nums = sum $ map int nums

printResult :: String -> IO ()
printResult result = putStrLn ("Result: " ++ result)

printSum :: [String] -> IO ()
printSum = printResult . show . computeSum

prompt :: String -> IO String
prompt msg = do
    putStrLn msg
    getLine

main :: IO ()
main = do
    args <- getArgs
    printSum args
    name <- prompt "What is your name?"
    putStrLn $ "Hello, " ++ name
