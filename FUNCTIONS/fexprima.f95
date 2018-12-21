function fexprima(x) result(res)

    implicit none
    real(8), intent(in) :: x
    real(8) :: res

    res = 2.5-exp(x)-exp(-x)

end function fexprima
