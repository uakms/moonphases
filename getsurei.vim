" Author: nakinor
" Created: 2011-12-11
" Revised: 2011-12-11

function! Getsurei()
    let dic = {"Jan": 0, "Feb": 2, "Mar": 0, "Apr": 2, "May": 2, "Jun": 4,
\              "Jul": 5, "Aug": 6, "Sep": 7, "Oct": 8, "Nov": 9, "Dec": 10}
    let a = ((strftime("%Y") - 11) % 19) * 11
    let b = dic[strftime("%b")]
    let c = strftime("%d")
    let getsurei = (a + b + c) % 30
    echo printf("月齢は約 %s 日です。", getsurei)
endfunction
