program fibonacci
  implicit none

  integer(kind=16) get_fibo
  integer(kind=16) fibo_sum

  integer n

  print*, "Qué termino de la serie de fibonacci quieres?(4 bytes max)"
  read*, n

  print*, "El ",n,"-ésimo termino de la serie es: ",get_fibo(n)

  print*, "La suma de todos es:", fibo_sum(n)

end program

recursive function get_fibo(limit) result(res)
  implicit none

  integer(kind=16) res
  integer, intent(in) :: limit

  if (limit <= 2) then
    res = 1
  else
    res = get_fibo(limit-1) + get_fibo(limit-2)
  end if

end function get_fibo

integer(kind=16) function fibo_sum(limit)
  implicit none

  integer(kind=16) get_fibo

  integer(kind=16) :: ans = 0
  integer, intent(in) :: limit
  integer :: i

  do i=0, limit
    ans = get_fibo(i) + ans
  end do

  fibo_sum = ans-1

end function fibo_sum
