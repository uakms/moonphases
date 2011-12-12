" Author: nakinor
" Created: 2011-12-11
" Revised: 2011-12-12

" Vim はシステムによって得られる日付の書式が異なるんだって
" 自分の場合は下記のようになっているので lc_time で判定させた
" 他言語のことは知らん
" echo |   v:lang   |   v:ctype   |    v:lc_time       |
" Mac  |     -      | en_US.UTF-8 |         -          |
" Win  | ja_JP.SJIS |      C      | Japanese_Japan.932 |
"
" 変数をスクリプトローカルとなるようにした

if v:lc_time =~ 'Japanese'
    let s:dic = {1: 0, 2: 2, 3: 0, 4: 2, 5: 2, 6: 4,
\                7: 5, 8: 6, 9: 7, 10: 8, 11: 9, 12: 10}
else
    let s:dic = {"Jan": 0, "Feb": 2, "Mar": 0, "Apr": 2, "May": 2, "Jun": 4,
\                "Jul": 5, "Aug": 6, "Sep": 7, "Oct": 8, "Nov": 9, "Dec": 10}
endif

function! Getsurei()
    let s:a_year = ((strftime("%Y") - 11) % 19) * 11
    let s:b_month = s:dic[strftime("%b")]
    let s:c_day = strftime("%d")
    let s:getsurei = (s:a_year + s:b_month + s:c_day) % 30
    echo printf("月齢は約 %s 日です。", s:getsurei)
endfunction
