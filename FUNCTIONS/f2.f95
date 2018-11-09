function f2(x) result(res)

    implicit none
    real(4), intent(in) :: x
    real(4) :: res

    res = exp(-x) - x

end function f2
