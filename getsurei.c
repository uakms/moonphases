/* Author: nakinor
 * Created: 2011-04-15
 * Revised: 2011-12-18
 */

/* 月齢を計算して表示するプログラム */

#include <stdio.h>
#include <time.h>

int main(void) {
  int a_array[12] = {0, 2, 0, 2, 2, 4, 5, 6, 7, 8, 9, 10};
  int a = 0, b = 0, c = 0;
  int getsurei = 0;
  time_t timer;
  struct tm *t_st;

  /* 現在の時刻を取得する */
  time(&timer);

  /* 現在の時刻を tm 構造体に変換する */
  t_st = localtime(&timer);
  /*
    tm_year   1900 年から数えての年数を得る
    tm_mon    0 から 11 までを得る
    tm_mday   その日を得る
  */

  /* 西暦から11を引いてさらに19で割る。で、その余りに11を掛ける */
  a = (((t_st->tm_year + 1900) - 11) % 19) * 11;

  /* 月によって定数を決める(配列の添字は 0 から 11 まで) */
  b = a_array[t_st->tm_mon];

  /* 日にちはそのまま使用する */
  c = t_st->tm_mday;

  /* 全部加算して30で除した余りが求める月齢なのだ */
  getsurei = (a + b + c) % 30;

  /* 結果を出力する */
  printf("今日は%d年%d月%d日です。\n",
         t_st->tm_year + 1900,
         t_st->tm_mon + 1,
         t_st->tm_mday);

  printf("月齢は約%d日です。\n", getsurei);

  return 0;
}
