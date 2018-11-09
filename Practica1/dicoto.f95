subroutine dicoto(f3,x0, c, eps, delta, nitmax, a, b)

  real(4), external :: f3
  real(4) :: x0, c, eps, delta, a, b, aux
  integer :: i, nitmax

  !Si f(a) > 0 y f(b) < 0, entonces cambiamos a y b

  open(unit = 2, file = 'dicoto.sal', status = 'old',action = 'write')

  nitmax = ceiling((log(b-a) - log(eps))/log(2.0)-1)
  write(*,*) nitmax

  !Si f(a) > 0 y f(b) < 0, entonces cambiamos a y b
  if(f3(a) > 0) then
    aux = a
    a = b
    b = aux
  end if

  write(2,*) "          n     ", "   a     " , "         b       ", "       |F(c)|   ", "        |c - delta|  "

  do i= 1,nitmax
    c = (a+b)/2
    write(2,*) i, a, b, ABS(c), ABS(f3(c))
    if(ABS(f3(c)) < delta) then
      write(*,*) "Construíronse",i,"elementos, sendo o último:",f3(c),"Test de parada: distancia ao límite"
        exit
    end if
    if(ABS(c)<eps) then
          write(*,*) "Construíronse",i,"elementos, sendo o último",c,"Test de parada: distancia elementos consecutivos"
          exit
    end if

    if(f3(c) < 0) then
      a = c
    end if
    if(f3(c) > 0) then
      b = c
    end if
    end do

    close(2,status = 'keep')

end subroutine dicoto
