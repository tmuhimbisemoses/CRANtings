library(vroom)
cols(a = col_integer())
cols_only(a = col_integer())
cols(a = "i")
cols(a = "i", b = "d", c = "_")

t1 <- cols(
  column_one = col_integer (),
  column_two = col_number())

t2 <- cols(
  column_three = col_character())

t3 <- t1
t3$cols <- c(t1$cols, t2$cols)
t3    