function f(x) result(res)

      implicit none
      real(4),intent(in) :: x
      real(4) :: res

      res = 0.5*x + 1.0/x !f = x/2 + beta/(x*2)

end function f
