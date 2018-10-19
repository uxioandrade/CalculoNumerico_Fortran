program Factorial

        implicit none

        integer :: n
        real(8) :: fact
        integer :: i

        n = 0
        fact = 1

        write(*,*) "Introduza o numero do que desexe calcular o factorial"
        read(*,*) n
        do i=n,2,-1
                fact = fact * i
        end do

        write(*,*) "O factorial é"
        write(*,*) fact

end program
