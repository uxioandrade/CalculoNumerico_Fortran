function fTest(x) result(res)

    implicit none
    real(8), intent(in) :: x
    real(8) :: res

    res = x**3 + 4*x*x - 10

end function fTest
