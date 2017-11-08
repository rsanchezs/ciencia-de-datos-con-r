---
title: "Estructuras iterativas"
author: "Rubén Sánchez Sancho"
date: "01 de Octubre de 2017"
output: ioslides_presentation
logo: ./logo.png
highlight: TRUE
incremental: TRUE
widescreen : TRUE
---
<style>
h2 { 
   font-size: 36px; 
   line-height: 65px; 
   letter-spacing: -2px; 
   color: #FFFFFF;
} 
</style>

<style>
h3 {
  font-size: 26px;
  letter-spacing: -1px;
  line-height: 2;
  font-weight: inherit;
  color: #797979;
  padding: 0px;
}
</style>

<style>
.title-slide {
  background-color: #8BBB27;
}
</style>

<style>
slides > slide.backdrop {
  background:#262D35;
}
</style>

<style>
slides > slide {
  font-size: 22px;
  padding: 40px 60px 50px 100px;
}
</style>

<style>
pre {
  width : 100%;
  padding: 10px 15px 10px 15px;
  left: 0px;
  background-color: #2A3137;
}
</style>

<!-- <style> -->
<!-- pre { -->
<!--   width : 100%; -->
<!--   padding: 10px 15px 10px 15px; -->
<!--   left: 0px; -->
<!--   background-color: #7E7E7E; -->
<!--   color:white; -->
<!-- } -->
<!-- </style> -->

<style>
code {
  font-size: 95%;
  font-family: 'Source Code Pro', 'Courier New', monospace;
  color: white;

}
</style>

<style>
.prettyprint {
  background-color: #c4c6c6;
}
</style>

<style> 
slides > slide:not(.nobackground):before {
  margin: 40px 5px;
}
</style>

<style>
table.rmdtable th { 
   color: #515151; 
   background: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(40%, #CED815), color-stop(80%, #989e1d)) no-repeat; 
   background: -webkit-linear-gradient(top, #CED815 40%, #989e1d 80%) no-repeat; 
   background: -moz-linear-gradient(top, #CED815 40%, #989e1d 80%) no-repeat; 
   background: -o-linear-gradient(top, #CED815 40%, #989e1d 80%) no-repeat; 
   background: linear-gradient(top, #CED815 40%, #989e1d 80%) no-repeat; 
 } 
</style>

<style>
table.rmdtable {
  width: 15%;
  border-collapse: -moz-initial;
  border-collapse: initial;
  border-spacing: 2px;
  border-bottom: 1px solid #797979;
}
</style>

<style>
table.rmdtable tr > td:first-child, table th {
  font-weight: 600;
  color: #515151;
}
</style>

<style>
table.rmdtable td, table th {
  font-size: 14px;
  padding: 1em 0.5em;
}
</style>





## Bucle __`for`__ {.build .smaller}

__Ejemplo:__



```r
# Creamos un vector aleaotorio de 5 observaciones
observaciones <- sample(1:50, 5, replace = TRUE)
```




```r
# Inicializamos `suma` de todas las observaciones
suma <- 0
```


```r
# Creamos un bucle for que calcula la media
for(i in seq_along(observaciones)) {
  suma <-  observaciones[i] + suma
  media <- suma / length(observaciones)
}
```


```r
# Mostramos por pantalla la media
media
```

```
## [1] 15.2
```


## Bucles __`for`__ Anidados {.build .smaller}



```r
# Creamos dos matrices cuadradas
m1 <- matrix(sample(1:100, 9, replace = TRUE), nrow = 3)
m2 <- matrix(sample(1:100, 9, replace = TRUE), nrow = 3)
```



```r
# Inicializamos la matriz que contendra m1+m2
suma <- matrix(nrow = 3, ncol = 3)
```



```r
# Para cada fila y cada columna, realizamos la suma elemento a elemento 
for(i in 1:nrow(m1)) {
  for(j in 1:ncol(m1)) {
    suma[i, j] <- m1[i, j] + m2[i, j]
  }
}
# Mostramos por pantalla la suma de m1+m2
suma
```

```
##      [,1] [,2] [,3]
## [1,]  153   60   64
## [2,]   71  166   54
## [3,]   67  193  128
```


## Bucle __`while`__

__Ejemplo:__



```r
# Algoritmo que muestra por pantalla los 5 primeros números naturales
n = 1
while(n <= 5) {
  print(n)
  n = n + 1
}
```

```
## [1] 1
## [1] 2
## [1] 3
## [1] 4
## [1] 5
```

## Bucle __`repeat`__ {.smaller}

Como alternativa al ejemplo anterior, podríamos codificar el algoritmo como:


```r
# Algoritmo que muestra por pantalla los 5 primeros números naturales
n = 1
repeat {
  if(n <= 5) {
    print(n)
    n = n +1
  } else {
    break
  }
}
```

```
## [1] 1
## [1] 2
## [1] 3
## [1] 4
## [1] 5
```

## Cláusula __`break`__  | Calcular la Matriz Triangular Superior y la Diagonal Principal de una Matriz. {.build .smaller} 

__Ejemplo:__


```r
# Creamos una matriz cuadrada de 6 x 6
m <-matrix(data = sample(x = 10, size = 36, replace = TRUE),
           nrow = 6,
           ncol = 6
)
```



```r
# Mostramos por pantalla `m`
m
```

```
##      [,1] [,2] [,3] [,4] [,5] [,6]
## [1,]    3    3    9    5    8    1
## [2,]    1    9    7    9    7    1
## [3,]    7    7    2    9   10    9
## [4,]    1    7    9    1    6    7
## [5,]    4    1    1    9    6    5
## [6,]    9    2    5    3   10    9
```

## Cláusula __`break`__  | Calcular la Matriz Triangular Superior y la Diagonal Principal de una Matriz. {.build .smaller} 




```r
# Creamos un vector para la diagonal principal
diagonal_principal <- vector(mode = "integer", length = nrow(m))
```




```r
# Diagonal principal inicializado con todos sus valores a cero
diagonal_principal
```

```
## [1] 0 0 0 0 0 0
```


## Cláusula __`break`__  | Calcular la Matriz Triangular Superior y la Diagonal Principal de una Matriz. {.build .smaller} 



```r
# Algoritmo que calcula la matriz triangular inferior y su diagonal principal
for (i in 1:nrow(m)) {
  for (j in 1:ncol(m)) {
    if (i == j) {
      break
    } else {
      m [i, j] <- 0
    }
    
  }
  diagonal_principal[j] <- m[i, j]
}
```

## Cláusula __`break`__  | Calcular la Matriz Triangular Superior y la Diagonal Principal de una Matriz. {.build .smaller} 



```r
# Mostramos por pantalla diagonal principal
diagonal_principal
```

```
## [1] 3 9 2 1 6 9
```



```r
# Mostramos por pantalla matriz inferior de m
m
```

```
##      [,1] [,2] [,3] [,4] [,5] [,6]
## [1,]    3    3    9    5    8    1
## [2,]    0    9    7    9    7    1
## [3,]    0    0    2    9   10    9
## [4,]    0    0    0    1    6    7
## [5,]    0    0    0    0    6    5
## [6,]    0    0    0    0    0    9
```



## Cláusula __`next`__

__Ejemplo:__



```r
for (i in 1:10) {
  if(i %% 2)
    next
    print(i)
}
```

```
## [1] 2
## [1] 4
## [1] 6
## [1] 8
## [1] 10
```

## Alternativas al Uso de Bucles en R 

## Alternativas al Uso de Bucles en R | Vectorización {.build}


> - Nos permite realizar operaciones elemento a elemento en vectores y matrices.


> - El tipo de dato más basico en R es el vector.


> - Combinando dos vectores de la misma longitud obtenemos una matriz.


> - Podemos vectorizar operaciones repetitivas en vectores y matrices.



## Alternativas al Uso de Bucles en R | Vectorización 

__Ejemplo:__


```r
n <- 4
v1 <- c(1, 2, 3, 4)
v2 <- c(5, 6, 7, 8)
v3 <- vector(mode = "integer", length = length(n))

for (i in 1:n) { 
	v3[i] <- v1[i] + v2[i] 
}
v3
```

```
## [1]  6  8 10 12
```



## Alternativas al Uso de Bucles en R | Vectorización 



Si bien, podemos usar como alternativa la vectorización nativa de R:


```r
v3 = v1 + v2
v3
```

```
## [1]  6  8 10 12
```




## Alternativas al Uso de Bucles en R | El Conjunto de Funciones __`apply`__ {.build}

-Nos permite manipular una selección de elementos en estructuras de datos de forma repetitiva.

-Nos permiten iterar por los elementos sin tener que utilizar una construcción iterativa.

-Toman como entrada una estructura de datos y una función y aplican esta función a cada elemento.

## Alternativas al Uso de Bucles en R | El Conjunto de Funciones __`apply`__ {.build}

* apply
* lapply
* sapply
* vapply
* mapply
* rapply
* tapply

Podemos consultar la documentación en RStudio mediante la instrucción:


```r
?apply
```

## Alternativas al Uso de Bucles en R | El paquete {.build}

-Forma parte del ecosistema 

-Conjuntos de funciones que aplican una función iterativamente a cada elemento de una lista o vector.

-Similares al conjunto de funciones `apply`

-Pero con nombres y argumentos mas consistentes. 

## Alternativas al Uso de Bucles en R | El paquete


## Alternativas al Uso de Bucles en R | Ejemplo:



```r
# Algoritmo que calcula el cuadrado de cada elemento
# en una secuencia de enteros del 1 a `n`
n <- 5
res <- rep(NA_integer_, n) 
for (i in seq_len(n)) {
  res[i] <- i ^ 2
}
res
```

```
## [1]  1  4  9 16 25
```

## Alternativas al Uso de Bucles en R | Ejemplo:

La segunda opción es por medio de la vectorización:


```r
# Algoritmo que calcula el cuadrado de cada elemento
# en una secuencia de enteros del 1 a `n`
n <- 5
seq_len(n) ^ 2
```

```
## [1]  1  4  9 16 25
```


## Alternativas al Uso de Bucles en R | Ejemplo:


En tercer lugar, mediante `sapply`:


```r
# Algoritmo que calcula el cuadrado de cada elemento
# en una secuencia de enteros del 1 a `n`
n <- 5
sapply(1:n, function(x) x^2)
```

```
## [1]  1  4  9 16 25
```



## Alternativas al Uso de Bucles en R | Ejemplo:

Por último, mediante `purrr::map()`:





```r
# Algoritmo que calcula el cuadrado de cada elemento
# en una secuencia de enteros del 1 a `n`
n <- 5
map_dbl(1:n,  function(x) x ^ 2)
```

```
## [1]  1  4  9 16 25
```


## Consejos para el uso de Bucles en R {.build}

-Poner la menor cantidad de instrucciones dentro de una estructura iterativa. 

-En repeat definir la expresión terminación del bucle. 

-Es mejor el uso de una o mas llamadas a funciones dentro del bucle a que este sea demasiado grande. 

-Considerar las diferentes alternativas en este orden:

    bucles < vectorización < purrr

























