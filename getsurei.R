# Author: nakinor
# Created: 2017-12-20
# Revised: 2017-12-20

# 月齢を計算して表示するプログラム

# 今日
today <- Sys.Date()
year <- format(today, "%Y")
month <- format(today, "%m")
day <- format(today, "%d")

# 配列を用意 (引数は 1 からはじまる)
arr <- c(0, 2, 0, 2, 2, 4, 5, 6, 7, 8, 9, 10)

# 計算用の値
a <- ((as.integer(year) - 11) %% 19) * 11
b <- arr[as.integer(month)]
c <- as.integer(day)

# 計算 (剰余は % が 2 つ)
getsurei <- (a + b + c) %% 30

# 出力 (これなんとかならん？)
cat("今日は")
cat(year)
cat("年")
cat(month)
cat("月")
cat(day)
cat("日です。")
cat("月齢は約")
cat(getsurei)
cat("日です。\n")

#cat("今日は", year, "年", month, "月", day, "日です。")
#cat("月齢は約", getsurei, "日です。\n")
