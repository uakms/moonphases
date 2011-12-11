/* Author: nakinor
 * Created: 2011-04-15
 * Revised: 2011-04-15
 */

/* 月齢を計算して表示するプログラム */

#include <stdio.h>
#include <time.h>

int main(void) {
  int a = 0,b = 0,c = 0;
  int getsurei = 0;
  time_t timer;
  struct tm *t_st;

  /* 現在の時刻を取得する */
  time(&timer);

  /* 現在の時刻を tm 構造体に変換する */
  t_st = localtime(&timer);

  printf("現在は %d年 %d月 %d日です。\n",
	 t_st->tm_year + 1900,
	 t_st->tm_mon + 1,
	 t_st->tm_mday);

  /* 西暦から11を引いてさらに19で割る。で、その余りに11を掛ける。 */
  a = (((t_st->tm_year + 1900) - 11) % 19) * 11;

  /* 月によって定数を決める。 */
  switch(t_st->tm_mon + 1) {
  case 1:
    b = 0;
    break;
  case 2:
    b = 2;
    break;
  case 3:
    b = 0;
    break;
  case 4:
    b = 2;
    break;
  case 5:
    b = 2;
    break;
  case 6:
    b = 4;
    break;
  case 7:
    b = 5;
    break;
  case 8:
    b = 6;
    break;
  case 9:
    b = 7;
    break;
  case 10:
    b = 8;
    break;
  case 11:
    b = 9;
    break;
  case 12:
    b = 10;
    break;
  }

  /* 日にちはそのまま使用する。 */
  c = t_st->tm_mday;

  /* 全部加算して30で除した余りが求める月齢なのだ。 */
  getsurei = (a + b + c) % 30;

  //  printf("aの値は: %d\n", a);
  //  printf("bの値は: %d\n", b);
  //  printf("cの値は: %d\n", c);
  printf("月齢は約 %d日になります。\n", getsurei);

  return 0;
}
