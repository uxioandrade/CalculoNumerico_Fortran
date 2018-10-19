subroutine raiz(f,x0,xn,nitmax,dist,eps,alpha)

  real(4),external :: f
  real(4) :: x0,xn,dist,eps,alpha
  integer :: nitmax

  xn = 1

  open(unit = 2,file = 'prin_raiz.sal',status = 'old',action = 'write')
  write(2,*) "           n     ", "   Xn  " , "       |Xn-alpha| ", "       |Xn-X_n-1|  "
  do i = 1,nitmax
    xn =  f(x0)
    write(2,*) i, xn, ABS(xn-alpha), ABS(xn-x0)
    if(ABS(xn-alpha)<eps) then
            write(*,*) "Construíronse",i,"elementos, sendo o último:",xn,"Test de parada: distancia ao límite"
            exit
    end if
    if(ABS(xn-x0)<dist) then
            write(*,*) "Construíronse",i,"elementos, sendo o último",xn,"Test de parada: distancia elementos consecutivos"
            exit
    end if
    x0 = xn
  end do

  close(2,status='keep')

end subroutine
