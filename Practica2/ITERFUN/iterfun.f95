subroutine iterfun (f,r,X0,eps,nitmax)
implicit none
integer :: i,nitmax
real(8):: X0,X1,dist,eps
real(8),external::f,r

open(unit = 2, file='prin_iterfun.sal',status='old',action='write')

write(2,*)"	   n" ,"           Xn","	    |F(Xn)|","        |Xn-X(n-1)|", "         eps*(1+|X(n-1)|)"
write(2,*)0 ,x0,abs(f(x0)-x0);

do i=1,nitmax

  x1=f(x0)
  dist=abs(x1-x0)

  write(2,*)i ,x1,abs(r(x1)),abs(x1-x0), eps*(1.0+abs(x0))

  if(abs(x1-x0)<eps*(1.0+abs(x0)))then
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

end subroutine iterfun
