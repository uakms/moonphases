" Author: nakinor
" Created: 2011-12-11
" Revised: 2015-03-03

" 月齢を計算して求めるプログラム

if v:lang =~ 'ja'
    let s:dic = {"1": 0, "2": 2, "3": 0, "4": 2, "5": 2, "6": 4,
\                "7": 5, "8": 6, "9": 7, "10": 8, "11": 9, "12": 10,
\                "Jan": 0, "Feb": 2, "Mar": 0, "Apr": 2, "May": 2, "Jun": 4,
\                "Jul": 5, "Aug": 6, "Sep": 7, "Oct": 8, "Nov": 9, "Dec": 10,
\                " 1": 0, " 2": 2, " 3": 0, " 4": 2, " 5": 2, " 6": 4,
\                " 7": 5, " 8": 6, " 9": 7,
\                "01": 0, "02": 2, "03": 0, "04": 2, "05": 2, "06": 4,
\                "07": 5, "08": 6, "09": 7}
endif

function! Getsurei()
    let s:a_year = ((strftime("%Y") - 11) % 19) * 11
    let s:b_month = s:dic[strftime("%b")]
    let s:c_day = strftime("%d")
    let s:getsurei = (s:a_year + s:b_month + s:c_day) % 30
    echo printf("今日は%s年%s月%s日です。月齢は約%s日です。",
\               strftime("%Y"), strftime("%m"), strftime("%d"), s:getsurei)
endfunction
