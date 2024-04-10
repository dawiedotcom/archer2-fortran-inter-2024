program example1

  use my_semi_opaque_type
  implicit none

  type (my_semi_opaque_t) :: a
  type (my_semi_opaque_t) :: b
  type (my_semi_opaque_t) :: c

  b = my_semi_opaque(2, 3)
  c = my_semi_opaque(2, 4)
  a = b

  call my_semi_opaque_print("a", a)
  call my_semi_opaque_print("b", b)

  call is_equal(a, b)
  call is_equal(a, c)

end program example1
