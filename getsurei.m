/* Author: nakinor
 * Created: 2015-09-20
 * Revised: 2016-01-29
 */

/* 月齢を計算して表示するプログラム */

#include <Foundation/Foundation.h>

int main() {

  NSArray *a_array = [NSArray arrayWithObjects:
                                @"0", @"2", @"0", @"2", @"2", @"4",
                              @"5", @"6", @"7", @"8", @"9", @"10", nil];
  NSDate *date = [NSDate date];

  NSDateFormatter *format_year = [[[NSDateFormatter alloc] init] autorelease];
  [format_year setDateFormat:@"YYYY"];
  NSInteger year = [[format_year stringFromDate:date] intValue];

  NSDateFormatter *format_month = [[[NSDateFormatter alloc] init] autorelease];
  [format_month setDateFormat:@"MM"];
  NSInteger month = [[format_month stringFromDate:date] intValue];

  NSDateFormatter *format_day = [[[NSDateFormatter alloc] init] autorelease];
  [format_day setDateFormat:@"dd"];
  NSInteger day = [[format_day stringFromDate:date] intValue];

  NSInteger a = ((year - 11) % 19 ) * 11;
  NSInteger b = [[a_array objectAtIndex:(month -1)] intValue]; 
  NSInteger c = day;
  NSInteger getsurei = (a + b + c) % 30;

  printf("今日は%ld年%ld月%ld日です。", year, month, day);
  printf("月齢は約%ld日です。\n", getsurei);

  return 0;
}
