{-
   Author: nakinor
   Created: 2011-12-16
   Revised: 2016-01-29

月齢を計算して求めるプログラム

実行はスクリプトとして

  ghci getsurei.hs
  main

とするか

  runhaskell getsurei.hs

もしくは実行ファイルを作って

  ghc getsurei.hs
  ./getsurei

GHC を 7.8.3 にアップデートしたところ、utf8-string を import して使用する部分がエラーになってしまうので使わないようにした。標準に組込まれたのかな？

GHC を 7.10.1 にアップデートしたところ、System.Locale を import するとエラーになってしまうので使わないようにした。何でかね？
-}

import Data.Time.Format
import Data.Time.LocalTime

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
  let p_month = show (read a_month :: Int)
  let p_day = show (read a_day :: Int)

  putStrLn ("今日は" ++ a_year ++ "年" ++ p_month ++ "月" ++ p_day ++ "日です。"
            ++ "月齢は約" ++ getsurei ++ "日です。")
