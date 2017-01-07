!Programa que usa el principio de recursividad para calcular el factorial de n

program recursividad
  implicit none
  integer num

  print *, "Ingrese un número entero menor a 4 bytes."
  read*, num

  print *, num,"! = ", factorial(num)

contains
  recursive function factorial(n) result(res)
    implicit none

    integer, intent(in) :: n
    integer res


    if (n == 0) then
       res = 1
    else
       res = n * factorial(n-1)
    end if

  end function factorial
end program recursividad
