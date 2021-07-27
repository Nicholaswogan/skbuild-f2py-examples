module hello_mod
  implicit none
contains
  subroutine hello()
    print*,"hello from fortran"
  end subroutine
end module