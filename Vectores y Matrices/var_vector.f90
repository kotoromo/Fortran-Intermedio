program var_vector
  !Para declarar un vector se hace lo siguiente
  integer :: i=1, j=1, k=1
  integer, dimension(3) :: v, w, b
  integer :: a = 2
  integer, dimension(2:2) :: C, D
  integer :: p =2, q = 2
  C = (/ 1, 1 /), (/1, 1/)
  v = (/i, j, k/)
  w = (/i, j, k/)


  w = a*w !Producto por escalar
  b = v + w !Suma

  !operaciones sencillas con vectores
  !producto escalar en IR3
  print*, "v • w = ", dot_product(v,w)
end program var_vector
