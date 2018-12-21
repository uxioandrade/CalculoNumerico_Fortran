subroutine entipl(nmax,n,x,y,xval)

    implicit none
    integer :: nmax, n, i

    open(unit = 1, file = 'dicoto.dat', status = 'old',action = 'read')

    write(*,*) "Introduza un n máximo"
    read(1,*) nmax
    write(*,*) nmax

    real(8), dimension(0:nmax) :: x, y
    real(8) :: xval

    do i=0:n
      read(1,*) x(i),y(i)
      write(*,*) x(i),y(i)
    end do

    write(*,*) "Introduza o punto a avaliar"
    read(1,*) xval
    write(*,*) xval

    close(1, status = 'keep')

end subroutine entipl
