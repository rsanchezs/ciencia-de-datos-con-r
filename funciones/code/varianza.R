
x <- 0
y <- 0

# Función que calcula la varianza
varianza <- function(x) {
  sum((x - media(x)) ^ 2) / (length(x) - 1)
  
}

