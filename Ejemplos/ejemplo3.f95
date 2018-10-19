program CompararPrecision

        real(8) :: resultadoDoble,difDoble
        real(16) :: resultadoQuad,difQuad
        
        resultadoDoble = 0
        resultadoQuad = 0
        difDoble = 0
        difQuad = 0

        resultadoDoble = (1._8 + 1.E-10_8)*(1._8+1.E-10_8)
        difDoble = resultadoDoble - 1+2.E-10 + 1.E-20

        resultadoQuad = (1_16 + 1.E-10_16)*(1_16+1.E-10_16)
        difQuad = resultadoQuad - 1 + 2.E-10 + 1.E-10

        write(*,*) "O Resultado en Doble é",resultadoDoble," e a diferenza é",difDoble
        write(*,*) "O resultado en cuádruple é",resultadoQuad," e a diferenza é",difQuad

end program
