
# Esto es una seccion de codigo O
media <- function(x) {
  sum(x)/length(x)
}


# Esto es una seccion de codigo O
mediana <- function(x) {
  numero_par <- length(x) %% 2
  if (numero_par != 0) {
    (sort(x)[length(x) / 2] + 
       sort(x)[1 + length(x) / 2]) / 2
  } else {
    sort(x)[ceiling(length(x)/2)]
  }
}



# Esto es una seccion de codigo O
varianza <- function(x) {
  sum((x - media(x)) ^ 2) / (length(x) - 1)
  
}








