/*
 * Author: nakinor
 * Created: 2012-03-13
 * Revised: 2012-03-13
 */

// 月齢表示プログラム
// 日付を扱うにもいろいろとクラスがあるのね。

import java.util.*;

public class Getsurei {
	public static void main (String[] args){
		int[] a_array = {0, 2, 0, 2, 2, 4, 5, 6, 7, 8, 9, 10};
		int a = 0, b = 0, c = 0;
		int getsurei = 0;
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH) + 1;
		int day = cal.get(Calendar.DATE);
		
		a = ((year - 11) % 19) * 11;
		b = a_array[month - 1];
		c = day;
		getsurei = (a + b + c) % 30;
		
		System.out.println("今日は" + year + "年"
							+ month + "月" + day + "日です。");
		System.out.println("月齢は約" + getsurei + "日です。");
	}
}