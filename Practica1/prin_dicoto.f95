program prin_dicoto

  implicit none
  real(8),external :: fTest
  real(8) :: x0,c,eps,delta,a,b,alpha
  integer :: nitmax

  call lecdic(x0, eps, delta, a,b, alpha)
  call dicoto(fTest,x0, c, eps, delta, nitmax,a,b, alpha)

end program prin_dicoto
