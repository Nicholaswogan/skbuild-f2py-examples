module interfaces
  implicit none
  
  abstract interface
    function callback_interface(a) result(b)
      use iso_c_binding, only: c_double
      real(c_double), value, intent(in) :: a
      real(c_double) :: b
    end function
  end interface
  
end module