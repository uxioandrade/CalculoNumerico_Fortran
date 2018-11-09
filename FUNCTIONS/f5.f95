function f5(x) result(res)

    implicit none
    real(4), intent(in) :: x
    real(4) :: res

    res = exp(x) - 3*x*x

end function f5
