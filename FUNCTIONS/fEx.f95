function fEx(x) result(res)

    implicit none
    real(8), intent(in) :: x
    real(8) :: res

    res = 2.5*x-exp(x)+exp(-x)

end function fEx
