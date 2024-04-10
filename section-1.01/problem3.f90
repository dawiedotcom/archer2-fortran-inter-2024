program problem1

  implicit none

  ! Use an array constructor to assign elements to values 1.0, 2.0, 3.0

  real, allocatable :: a(:)

  allocate(a(1:3))
  a = [ 1.0, 2.0, 3.0 ]

  print *, "Status ", allocated(a)
  print *, "Values ", a(:)

end program problem1
