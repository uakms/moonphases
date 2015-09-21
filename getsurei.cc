/* Author: nakinor
 * Created: 2015-09-21
 * Revised: 2015-09-21
 */

/* 月齢を計算して表示するプログラム */

#include <array>
#include <ctime>
#include <iostream>

using namespace std;

int main() {
  std::array<int, 12> a_array = {0, 2, 0, 2, 2, 4, 5, 6, 7, 8, 9, 10};
  time_t now = time(NULL);
  struct tm *date = localtime(&now);

  int year = date->tm_year + 1900;
  int month = date->tm_mon + 1;
  int day = date->tm_mday;

  int a = ((year - 11) % 19) * 11;
  int b = a_array[month - 1];
  int c = day;
  int getsurei = (a + b + c) % 30;

  std::cout << "今日の日付は" << year << "年" << month << "月" << day
            << "日です。" << std::endl;
  std::cout << "月齢は約" << getsurei << "日です。" << std::endl;

  return 0;
}
