subroutine lecdic(x0, eps, delta, a, b)

    implicit none
    real(4) :: x0,eps,delta, a, b

    open(unit = 1, file = 'dicoto.dat', status = 'old',action = 'read')

    write(*,*) "Introduza un termo inicial"
    read(1,*) x0
    write(*,*) x0

    write(*,*) "Introduza eps"
    read(1,*) eps
    write(*,*) eps

    write(*,*) "Introduza delta"
    read(1,*) delta
    write(*,*) delta

    write(*,*) "Introduza a"
    read(1,*) a
    write(*,*) a

    write(*,*) "Introduza b"
    read(1,*) b
    write(*,*) b

    close(1, status = 'keep')

end subroutine lecdic
