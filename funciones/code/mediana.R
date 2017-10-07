x <- 1:10

# Función que calcula la mediana
mediana <- function(x) {
  modulo <- length(x) %% 2
  if (modulo == 0) {
     sort(x)[ceiling(length(x)/2)] + sort(x)[ceiling(1 + length(x)/2)]/2
  } else {
   sort(x)[ceiling(length(x)/2)]
  }
}

