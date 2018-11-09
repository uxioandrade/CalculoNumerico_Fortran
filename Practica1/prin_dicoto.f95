program prin_dicoto

  implicit none
  real(4),external :: f3
  real(4) :: x0,c,eps,delta,a,b,alpha
  integer :: nitmax

  call lecdic(x0, eps, delta, a,b, alpha)
  call dicoto(f3,x0, c, eps, delta, nitmax,a,b, alpha)

end program prin_dicoto
