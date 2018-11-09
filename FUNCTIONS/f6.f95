function f5(x) result(res)

    implicit none
    real(4), intent(in) :: x
    real(4) :: res

    res = log(x) - 5 + x

end function f5
