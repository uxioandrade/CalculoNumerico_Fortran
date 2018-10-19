recursive function sucesion(n) result(xn)
        implicit none
        integer, intent(in) :: n
        real :: xn
  
        if(n==0) then
                xn = 1
        else if (n==1) then
                xn 
        else
                xn = 13*sucesion(n-1)/3 - 4*sucesion(n-2)/3
        end if

end function sucesion

program SucesionEjemplo7

      implicit none
      
      real :: resultado
      integer :: n

        
      write(*,*) "Introduza n"
      read(*,*) n

      resultado = sucesion(n)

      write(*,*) resultado
      
end program
