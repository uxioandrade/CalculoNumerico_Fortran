subroutine dicoto(fTest,x0, c, eps, delta, nitmax, a, b, alpha)

  real(8), external :: fTest
  real(8) :: x0, c, eps, delta, a, b, aux, alpha
  integer :: i, nitmax
  character*1 tab
  tab = char(9)
  !Si f(a) > 0 y f(b) < 0, entonces cambiamos a y b

  open(unit = 2, file = 'dicoto.sal', status = 'old',action = 'write')

  nitmax = ceiling((log(b-a) - log(eps))/log(2.d0)-1.d0)

  write(*,*) "A cota eps introducida alcanzarase no iterante",nitmax

  !Si f(a) > 0 y f(b) < 0, entonces cambiamos a y b
  !if(fTest(a) > 0) then
  !  aux = a
  !  a = b
  !  b = aux
  !end if

  write(2,*) tab, "n", tab, "a" ,tab, "b",tab, "c", tab, "F(c)", tab, "|c - alpha|\t"

  do i= 0,nitmax
    c = (a+b)/2
    write(2,*) i, a, b, c,fTest(c), ABS(c-alpha)
    if(ABS(fTest(c)) < delta) then
      write(*,*) "Construíronse",i+1,"elementos, sendo o último:",c,"Test de parada: distancia ao límite"
        exit
    end if
    if(ABS(c - alpha)<eps) then
          write(*,*) "Construíronse",i+1,"elementos, sendo o último",c,"Test de parada: distancia elementos consecutivos"
          exit
    end if

    if(fTest(c)*fTest(a) > 0) then
      a = c
    else
      b = c
    end if
  end do

    close(2,status = 'keep')

end subroutine dicoto
