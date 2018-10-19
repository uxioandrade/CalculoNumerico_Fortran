program CalcularRaices

        real(4) :: m,suma,produto,sumabis,produtobis
        real(4) :: raiz1,raiz2,raiz1bis,raiz2bis

        write(*,*) "Introduza m"
        read(*,*) m

        raiz1 = SQRT(1+m**2)
        raiz2 = SQRT(1+m**2)

        write(*,*) raiz1,raiz2

        raiz1 = 1 + raiz1
        raiz1bis = raiz1
        raiz2 = 1- raiz2
        raiz2bis = -m**2/raiz1

        suma = raiz1 + raiz2
        produto = raiz1*raiz2
        sumabis = raiz1bis + raiz2bis
        produtobis = raiz1bis * raiz2bis

        write(*,*) "As raíces son",raiz1," e",raiz2
        write(*,*) "A súa suma é", suma, " e o seu produto é",produto
        write(*,*) "Método alternativo:"
        write(*,*) " 1 ", raiz1bis," 2 ",raiz2bis
        write(*,*) "Suma bis:",sumabis,"Produto bis:",produtobis

end program
