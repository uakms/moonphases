! Author: nakinor
! Created: 2016-03-09
! Revised: 2016-03-09

! 月齢を計算して求めるプログラム

! 一行は 132 バイト以内にしないとエラーになる

program getsurei
  implicit none

  integer arr(12)/ 0, 2, 0, 2, 2, 4, 5, 6, 7, 8, 9, 10 /

  character(len=8) date  ! この辺ムダだけど
  character(len=10) time ! この辺ムダだけど
  character(len=5) zone  ! この辺ムダだけど
  integer val(8)         ! 戻り値が 8 つもあるらしい。3 つしか使わんけど
  integer a, b, c, getsu

  call date_and_time(date, time, zone, val)

  a = mod((val(1) - 11), 19) * 11
  b = arr(val(2))
  c = val(3)
  getsu = mod((a + b + c), 30)

  write (*, '(a, i4, a, i2, a, i2, a, i2, a)') &
       "今日は", val(1), "年", val(2), "月", val(3), "日です。月齢は約", &
       getsu, "日です。"

end program getsurei
