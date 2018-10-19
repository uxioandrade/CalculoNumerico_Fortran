subroutine lecdat(x0,nitmax,dist,eps,beta)

  implicit none
  real(4) :: x0,dist,eps,beta
  integer :: nitmax

  open(unit = 1,file = 'prin_raiz.dat',status = 'old',action = 'read')

  write(*,*)"Introduza o termo do que desexe aproximar a raíz cadrada"
  read(1,*) beta
  write(*,*) beta
  write(*,*) "Introduza un termo inicial"
  read(1,*) x0
  write(*,*) x0
  write(*,*) "Introduza o número de repeticións"
  read(1,*) nitmax
  write(*,*) nitmax
  write(*,*) "Introduza dist"
  read(1,*) dist
  write(*,*) dist
  write(*,*) "Introduza eps"
  read(1,*) eps
  write(*,*) eps

  close(1,status = 'keep')

end subroutine lecdat
