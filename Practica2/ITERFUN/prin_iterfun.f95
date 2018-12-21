program Sucesion

      implicit none

      integer :: i,n
      real(8) :: x0,xn

      write(*,*) "Introduza n"
      read(*,*) n

      x0 = 1
      do i=1,n
        xn = 1.75 + (4*x0-7)/(x0-2)
        write(*,*) "X_",i,"=",xn,"x0",x0
        x0 = xn
      end do

end program
