function forlag(nmax,n,x,y,xval) result(sum)

  integer :: nmax,n, k, i
  real(8) :: xval, sum, polk
  real(8),dimension(0:nmax) x,y

  sum=0
  do k=0:n
    xk=x(k)
    polk=1
  do i=0:n
      if (i/=k) then xi=x(i)
        polk=polk*(xval-xi)/(xk-xi)
      end if
  end do
    sum=sum+y(k)*polk
  end do

end function
