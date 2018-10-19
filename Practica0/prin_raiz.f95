program prin_raiz
      implicit none

      real(4),external :: f
      real(4) :: x0,xn,dist,eps,alpha,beta
      integer :: nitmax

      call lecdat(x0,nitmax,dist,eps,beta)
      alpha = SQRT(beta)
      call raiz(f,x0,xn,nitmax,dist,eps,alpha)

end program
