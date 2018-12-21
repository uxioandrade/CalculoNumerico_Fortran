subroutine difcoc(nmax,n,x,y)

  integer :: nmax,n, k, i, j
  real(8),dimension(0:nmax) x,y

  do k=0:n
    j=k-1
    write(*,*)  ’As diferenzas cocientes de orde’, k, ’son’
    do i=0:n-k
      y(i)=(y(i+1)-y(i))/(x(i+1+j)-x(i))
      write(*,*)  '(',y(i), i),')'
    end do
  end do
  
end subroutine
