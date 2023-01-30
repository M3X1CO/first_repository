# how does r know which value to assign to which symbol when i type
lm <- function(x) {x * x}
#lm

#lexical scoping
f <- function(x, y) {
  x ^ 2 + y / z
}