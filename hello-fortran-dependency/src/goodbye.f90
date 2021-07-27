module goodbye_mod
  implicit none
contains
  subroutine goodbye()
    print*,"goodbye from goodbye_mod"
  end subroutine
end module