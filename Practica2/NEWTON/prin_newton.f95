program prin_newton

implicit none
real(8),external :: fEx
real(8),external :: fexprima
real(8) ::eps,x0,delta,m
integer :: nitmax,elec

call lecnewton( x0,eps,delta,nitmax)

write(*,*)"Elije  una opción"
write(*,*)"1) Newton-Rapson"
write(*,*)"2) Variante de Schröder"
read(*,*)elec

if(elec==2) then
write(*,*)"Introduce el valor de m"
read(*,*)m
call schroder (fEx,fexprima,m,x0,eps,delta,nitmax)
else
call newton(fEx,fexprima,x0,eps,delta,nitmax)
endif

end program prin_newton
