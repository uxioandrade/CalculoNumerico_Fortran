subroutine leciterfun( X0,eps,nitmax)

implicit none
integer::  nitmax
real(8) ::eps,delta, a, b,x0

open(unit = 1, file = 'prin_iterfun.dat', status = 'old',action = 'read')

print*,  "X0"
read(1,*) x0
print*,x0

print*,  "Epsilon"
read(1,*) eps
print*,eps

print*, "N Max"
read(1,*) nitmax
print*,nitmax


close(1, status = 'keep')

end subroutine leciterfun
