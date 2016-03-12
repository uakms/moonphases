<?php
/* Author: nakinor
 * Created: 2016-03-12
 * Revised: 2016-03-12
 *
 * 月齢を計算して求めるプログラム
*/

$arr = array(0, 2, 0, 2, 2, 4, 5, 6, 7, 8, 9, 10);
date_default_timezone_set('Asia/Tokyo');

$a = ((date("Y") - 11) % 19) * 11;
$b = $arr[date("n") - 1];
$c = date("d");
$getsu = ($a + $b + $c) % 30;

echo "今日は" . date("Y") . "年" . date("n") . "月" . date("d") . "日です。";
echo "月齢は約" . $getsu . "日です。\n";
?>
