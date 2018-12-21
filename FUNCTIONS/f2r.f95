function f2r(x) result(res)

    implicit none
    real(8), intent(in) :: x
    real(8) :: res

    res = exp(-x) - x

end function f2r
