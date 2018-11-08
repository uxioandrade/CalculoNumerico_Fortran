program prin_dicoto

  implicit none
  real(4),external :: ../FUNCTIONS/f3.f95
  real(4) :: x0,c,eps,delta,a,b
  integer :: nitmax

  call lecdic(x0, eps, delta, a,b)
  call dicoto(f3,x0, c, eps, delta, nitmax,a,b)
