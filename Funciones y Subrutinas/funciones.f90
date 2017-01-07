! Una función en Fortran es un subprograma. Tiene la siguiente sintaxis

! type function_name (arg1, arg2, ..., argn)
!   implicit none
!   [specification part]
!   [execution part]
!   [subprogram part]
! end function function_name

!type es un tipo de dato de F90
!Las funciones retornan un resultado por medio de su identificador.
!Dentro del cuerpo de la función, debe haber una línea como la siguiente:
!         function_name = expression

!Donde, obviamente, expression es lo que la función va a devolver.
!El nombre de la función no puede aparecer como un rvalue de ninguna expresión

!Dentro de la parte de especificación (specification part), los atributos
!formales (arg1, arg2, etc.) deben tener un nuevo atributo INTENT(IN)
!El significado de INTENT(IN) es que el valor del argumento sólo es copiado, no
!modificado

!Las funciones pueden o no tener argumentos formales.

!Las funciones pueden ser internas o externas en su declaración.
!Internas relativas al programa. Esto se hace mediante la palabra reservada
!CONTAINS.

!Las funciones no pueden tener funciones internas

!IMPORTANTE:
!Fortran 90 llama a los argumentos formales de las funciones POR REFERENCIA
!Es por eso que debemos indicar que se desean pasar estos argumentos POR VALOR
!mediante los atributos INTENT(IN)

program funciones
  implicit none
  integer num, checar_numero, res

  print *, saludo()
  print*, "Porfavor escribe un número entero. Puede ser positivo o negativo"

  read *, num

  print *, checar_numero(num)

  print *, "Cambiando numero..."
  res = intercambiar(num)
  print *, "El número que escribiste ahora es: ", num


contains
    !Funcion interna
    function saludo()
      implicit none
      character(25) saludo
      saludo = "Salut mon ami!"

      print *, "¡Hola amigo mio!"
    end function saludo

    function intercambiar(a)
      implicit none
      integer :: a
      integer intercambiar

      a = 6

      intercambiar = 0 !Ejecución normal. Retornamos 0

    end function intercambiar

end program funciones

!Funcion externa
integer function checar_numero(numero)
  implicit none

  integer, intent(in) :: numero

  if (numero < 0) then
    print *, "Tu número es negativo."

  else
    print *, "Tu número es positivo."

  end if

  checar_numero = numero

end function checar_numero
