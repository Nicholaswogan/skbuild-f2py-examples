module hola_mod
  implicit none
contains
  subroutine hola()
    use goodbye_mod, only: goodbye
    print*,"hola from hola_mod"
    call goodbye()
  end subroutine
end module