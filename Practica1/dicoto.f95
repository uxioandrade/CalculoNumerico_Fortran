subroutine dicoto(f3,x0, c, eps, delta, nitmax, a, b)

  real(4), external :: ../FUNCTIONS/f3.f95
  real(4) :: x0, xn, c, eps, delta, a, b
  integer :: i, nitmax

  open(unit = 2)

  nitmax = ceil(log((b-a)/eps)/log(2)-1)

  xn = x0

  write(2,*) "           n     ", "   Xn  " , "       |Xn-alpha| ", "       |Xn-X_n-1|  "

  do i= 1,nitmax
    c = f3(xn)
    write(2,*) i, xn, ABS(c), ABS(f3(c))
    if(ABS(f3(c)) < delta) then
      write(*,*) "Construíronse",i,"elementos, sendo o último:",xn,"Test de parada: distancia ao límite"
          exit
    end if
    if(ABS(c)<eps) then
            write(*,*) "Construíronse",i,"elementos, sendo o último",xn,"Test de parada: distancia elementos consecutivos"
            exit
    end if
    xn = c
end do

close(2,status = 'keep')

end subroutine
