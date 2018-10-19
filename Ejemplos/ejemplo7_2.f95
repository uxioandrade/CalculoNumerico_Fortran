program Sucesion

      implicit none

      integer :: i,n
      real(4) :: potencia, auxn_1,auxn_2,xn

      write(*,*) "Introduza n"
      read(*,*) n

      auxn_2 = 1.
      auxn_1 = 1./3.
      potencia = 1./3.
      do i=2,n
        potencia = potencia/3.
        xn = (13./3)*auxn_1 - (4./3)*auxn_2
        auxn_2 = auxn_1
        auxn_1 = xn
        write(*,*) "X_",i,"=",xn," ","(1/3)**",i,"= ",potencia
      end do

end program

      
