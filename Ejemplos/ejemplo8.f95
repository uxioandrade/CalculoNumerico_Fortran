program CalcularRaices

        real :: a,b,c,s,area

        write(*,*) "Introduza a dimension dos lados do triangulo"
        read(*,*) a,b,c

        s = (a+b+c)/2
        area = SQRT(s*(s-a)*(s-b)*(s-c))
        write(*,*) "Area = ",area
        area = 0
        area = SQRT((a+(b+c))*(c-(a-b))*(c+(a-b))*(a+(b-c)))/4
        write(*,*)"Area formula Kahan =",area

end program
