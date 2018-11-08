function f3(x) result(res)

    implicit none
    real(4), intent(in) :: x
    real(4) :: res

    res = 0.73169 - x + 0.09341*sin(x)

end function f3
