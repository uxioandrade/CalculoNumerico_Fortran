program Sumatorio

      implicit none
      integer :: n,i
      real(4) :: suma,prod

      write(*,*) "Introduza número de veces a sumar"
      read(*,*) n

      suma = 0

      do i=1,n
        suma = suma + 0.1
      end do

      prod = n*0.1

        write(*,*) "Resultado:",suma, "Produto:",prod

end program
