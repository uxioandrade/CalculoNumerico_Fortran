subroutine schroder (f,fprima,m,x0,eps,delta,nitmax)
implicit none
integer :: i,nitmax
real(8):: x0,x1,dist,eps,delta,m
real(8),external::f
real(8),external::fprima

open(unit = 2, file='prin_newton.sal',status='old',action='write')

write(2,*)"	   n" ,"           Xn","	    |F(Xn)|","        |Xn-X(n-1)|", "         eps*(1+|X(n-1)|)"
write(2,*)0 ,x0,abs(f(x0));

do i=1,nitmax

if(fprima(x0)<1.e-12) then
x1=x0

else
x1=x0-m*(f(x0)/fprima(x0))
dist=abs(x1-x0)

endif

write(2,*)i ,x1,abs(f(x1)),abs(x1-x0),eps*(1.0+abs(x1))

if(abs(f(x1))<delta)then
write(2,*)"Se cumplio el test de parada: |F(Xn)|<delta)"
write(2,*)"Se realizaron",i,"iteraciones"
exit
end if

if(abs(x1-x0)<eps*(1.0+abs(x1)))then
write(2,*)"Se cumplio el test de parada: |Xn-X(n-1)|<eps*(1+|X(n-1)|)"
write(2,*)"Se realizaron",i,"iteraciones"
exit
end if

x0=x1

end do

if(i>=nitmax)then
write(2,*)"Se llego al final"
write(2,*)"Calcularonse",nitmax,"elementos"
endif

close(2,status = 'keep')

end subroutine schroder
