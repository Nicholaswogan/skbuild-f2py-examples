module hello_mod
  implicit none
contains
  subroutine hello(ptr)
    use iso_c_binding, only: c_associated, c_f_procpointer, c_funptr
    use interfaces, only: callback_interface
    
    !f2py integer(8), intent(in) :: ptr
    type(c_funptr), intent(in) :: ptr
    
    procedure(callback_interface), pointer :: callback_fcn
    real(8), parameter :: a = 10.0
    real(8) :: b
    
    call c_f_procpointer(ptr, callback_fcn)
    
    b = callback_fcn(a)
    
    print*,'Hello. When "10" is inputed into the callback function, it returns',b
    
  end subroutine
end module