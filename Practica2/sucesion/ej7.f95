program Sucesion

      implicit none

      integer :: i,n
      real(8) :: x0,x1

      write(*,*) "Introduza n"
      read(*,*) n

      x0 = 1
      do i=1,n
        xn = 1.75 + (4*x0-7)/(x0-2)
        write(*,*) "X_",i,"=",xn," ","(1/3)**",i,"= ",potencia
      end do

end program
