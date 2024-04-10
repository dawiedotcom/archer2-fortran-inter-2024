program example2

  implicit none

  abstract interface
    function abstract_array_size(a) result(isize)
      integer, intent(in) :: a(:)
      integer             :: isize
    end function abstract_array_size
  end interface

  procedure (abstract_array_size) :: array_size
  integer :: a(13)

  print *, "size of a is: ", array_size(a)

end program example2
