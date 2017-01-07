!programa que suma de manera recursiva hasta n

program suma_recursiva

  implicit none


  print *, sum_to(10)

contains
  recursive function sum_to(n) result(r)
    implicit none
    integer :: r
    integer, intent(in) :: n

    r = 0

    if (n == 0) then
      return
    end if

    r = n + sum_to(n-1)

  end function sum_to

end program suma_recursiva
