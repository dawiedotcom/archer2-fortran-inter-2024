program example1

  implicit none

  integer :: i
  integer, target :: a(10)
  integer, pointer :: b(:), c(:);

  a = [ (i, i=1,10) ]
  
  b => a(1:10:2)
  c => a(1::3)

  ! print pointer lower bound lbound()
  ! print pointer upper bound ubound()
  ! check size and elements
  print *, "a: ", lbound(a), ubound(a), size(a)
  print *, "b: ", lbound(b), ubound(b), size(b)
  print *, "b =", b
  print *, "c: ", lbound(c), ubound(c), size(c)

end program example1
