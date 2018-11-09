function f4(x) result(res)

    implicit none
    real(4), intent(in) :: x
    real(4) :: res

    res = x - tan(x)

end function f4
