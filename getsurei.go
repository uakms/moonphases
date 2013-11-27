/* Author: nakinor
 * Created: 2013-11-27
 * Revised: 2013-11-27
 */

/* 月齢を計算して表示するプログラム */

package main

import (
       "fmt"
       "time"
)

func main() {
     a_array := []int{ 0, 2, 0, 2, 2, 4, 5, 6, 7, 8, 9, 10 }
     var a, b, c, getsurei int = 0, 0, 0, 0
     year, month, day := time.Now().Date()

     a = (((year + 1900) - 11) % 19) * 11
     b = a_array[month - 1]
     c = day

     getsurei = (a + b + c) % 30

     fmt.Printf("今日は%d年%d月%d日です。\n", year, month, day)
     fmt.Printf("月齢は約%d日です。\n", getsurei)
}
