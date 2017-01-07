!Una subrutina (llamada SUBROUTINE en Fortran90) es un subprograma
!en el que se toman los valores de sus argumentos formales, y retorna
!algún valor computado por medio de sus argumentos formales
!A diferencia de las funciones, no retorna ningún valor por medio de su identificador

! subroutine subroutine-name (arg1, arg2, ..., argn)
!   implicit none
!   [specification part]
!   [execution part]
!   [subprogram part]
! end subroutine subroutine-name

!Las subrutinas pueden también no contener argumentos formales

!El atributo INTENT():
!Habíamos observado que para especificar que el paso de argumentos sea
!por VALOR, debemos utilizar el atributo INTENT(IN)

!Debido a que las subrutinas devuelven valores por medio de sus argumentos
!formales, se utiliza el atributo INTENT(OUT) para especificar que
!la salida de la subrutina será ese argumento formale

!También se puede utilizar el atributo INTENT(INOUT) para especificar
!que recibe un valor por medio de ese argumento formal y devuelve
!el resultado de la subrutina por esa misma variable.

!Para llamar una subrutina, es necesario utilizar la palabra reservada CALL.

program subrutinas
  character(25) salida
  integer :: e = 10, f = 5

  call intercambiar(e,f,salida)

  print*, salida

contains
  subroutine intercambiar(a, b, salida)
    integer a, b, aux
    character(25), intent(out):: salida
    salida = "Números intercambiados."

    aux = a; a = b; b = aux;

  end subroutine intercambiar

end program subrutinas

!Sugerencia para el instructor: Demostrar el uso y utilidad de GDB
!para mostrar que los valores han sido intercambiados
