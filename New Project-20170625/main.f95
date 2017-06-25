program hello
    IMPLICIT NONE
    type TestData
        integer :: int
        real(KIND = 4) ::a,b,c
    end type TestData
    
    type(TestData),target, dimension(:),allocatable :: list
    type(TestData), pointer :: pt
    
    Print *, "Hello World!"
    
    allocate(list(2))
    
    list(1)%int = 1    
    list(1)%a = 10.03
    list(1)%b = 20.54
    list(1)%c = 21.98
    
    pt => list(1)
   
end program Hello

