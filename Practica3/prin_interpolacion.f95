program prin_interpolacion
  implicit none
  integer :: nmax
  real(8) :: xval, resultado
  real(8),dimension(0:nmax) x,y
  integer :: n = 3
  real(8),external :: forlag

  resultado = forlag(nmax,n,x,y,xval)
  write(*,*) resultado
  
end program
