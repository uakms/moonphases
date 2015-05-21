{-
   Author: nakinor
   Created: 2011-12-16
   Revised: 2015-05-21

月齢を計算して求めるプログラム

実行はスクリプトとして
  ghci getsurei.hs
  main
とするか
  runhaskell getsurei.hs
もしくは実行ファイルを作って
  ghc getsurei.hs
  ./getsurei
-}

import Data.Time.Format
import Data.Time.LocalTime
--import System.Locale

main = do
  let a_array = [0,2,0,2,2,4,5,6,7,8,9,10]
  now <- getZonedTime
  let a_year = formatTime defaultTimeLocale "%Y" $ now
  let a_month = formatTime defaultTimeLocale "%m" $ now
  let a_day = formatTime defaultTimeLocale "%d" $ now

  let a = (mod ((read a_year :: Int) - 11) 19) * 11
  let b = a_array !! ((read a_month :: Int) - 1)
  let c = (read a_day :: Int)
  let getsurei = show (mod (a + b + c) 30)

  putStrLn ("今日は" ++ a_year ++ "年" ++ a_month ++ "月"
                           ++ a_day ++ "日です。")
  putStrLn ("月齢は約" ++ getsurei ++ "日です。")
