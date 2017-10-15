---
title: "Matrices"
author: "Rubén Sánchez Sancho"
date: "14 de febrero de 2017"
output:
  ioslides_presentation:
    highlight: monochrome
    widescreen: true
logo: ./logo.png
---


<style>
h2 { 
   font-size: 36px; 
   line-height: 65px; 
   letter-spacing: -2px; 
   color: #FFFFFF;} 
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
pre {
  width : 60%;
  padding: 10px 15px 10px 15px;
  left: 0px;
  background-color: #2A3137;
}
</style>

<style>
.prettyprint {
  background-color: #C4C6C6;
}
</style>

<style> 
slides > slide:not(.nobackground):before {
  margin: 40px 5px;
}
</style>


## Creación de Matrices {.smaller}


Para crear matrices utilizaremos la función `matrix()`, la sintaxis es la siguiente


```r
str(matrix)
```

```
## function (data = NA, nrow = 1, ncol = 1, byrow = FALSE, dimnames = NULL)
```


A continuación mostramos la descripción de los argumentos:

- __data__ es el vector que contiene los elementos que formaran parte de la matriz.
- __nrow__ es el número de filas.
- __ncol__ es el número de columnas.
- __byrow__ es un valor lógico. Si es `TRUE` el vector que pasamos será ordenado por filas.
- __dimnames__ nombres asignado a filas y columnas.

## Creación de Matrices 



```r
matriz <- matrix(1:12, nrow = 4)
matriz
```

```
##      [,1] [,2] [,3]
## [1,]    1    5    9
## [2,]    2    6   10
## [3,]    3    7   11
## [4,]    4    8   12
```


## Creación de Matrices | A partir de un Vector y mediante `dim()`


```r
m <- 1:12
m
```

```
##  [1]  1  2  3  4  5  6  7  8  9 10 11 12
```



```r
dim(m) <- c(4, 3)
m
```

```
##      [,1] [,2] [,3]
## [1,]    1    5    9
## [2,]    2    6   10
## [3,]    3    7   11
## [4,]    4    8   12
```


## Creación de Matrices | Ordenar Matriz con `byrow=TRUE`



```r
matriz <- matrix(1:12, nrow = 4, byrow = TRUE)
matriz
```

```
##      [,1] [,2] [,3]
## [1,]    1    2    3
## [2,]    4    5    6
## [3,]    7    8    9
## [4,]   10   11   12
```

## Creación de Matrices | Nombre Filas y Columnas con __dimnames__ {.smaller}


```r
automoviles <- matrix(
                1:12,
                nrow = 4,
                byrow = TRUE,
                dimnames = list(
                  c("Blanco", "Rojo", "Negro", "Gris"),
                  c("Toyota", "Audi", "Nissan")
                )
)
automoviles
```

```
##        Toyota Audi Nissan
## Blanco      1    2      3
## Rojo        4    5      6
## Negro       7    8      9
## Gris       10   11     12
```


## Creación de Matrices mediante funciones `cbind()` y `rbind()` | Ejemplo uso de la función `cbind()`


```r
v1 <- c(1, 2, 3)
v2 <- c(4, 5, 6)
m1 <- cbind(v1, v2)
m1
```

```
##      v1 v2
## [1,]  1  4
## [2,]  2  5
## [3,]  3  6
```



## Creación de Matrices mediante funciones `cbind()` y `rbind()` | Ejemplo uso de la función `rbind()`


```r
v1 <- c(1, 2, 3)
v2 <- c(4, 5, 6)
m1 <- rbind(v1, v2)
m1
```

```
##    [,1] [,2] [,3]
## v1    1    2    3
## v2    4    5    6
```


## Filas, Columnas y Dimensión 


La función __`dim()`__ devuelve un vector de integers con la dimensión del objeto:


```r
dim(automoviles)
```

```
## [1] 4 3
```


## Filas, Columnas y Dimensión 


Además con las funciones __`nrow()`__ y __`ncol()`__ podemos conocer el número de filas y columnas, respectivamente:



```r
nrow(automoviles)
```

```
## [1] 4
```


```r
ncol(automoviles)
```

```
## [1] 3
```


## Filas, Columnas y Dimensión | Uso de la función __`length()`:__



```r
length(automoviles)
```

```
## [1] 12
```


## Nombres de las Filas, Columnas y Dimensiones | Funciones __`rownames()`__ y __`colnames()`__:


```r
colores <- rownames(automoviles)
colores
```

```
## [1] "Blanco" "Rojo"   "Negro"  "Gris"
```


```r
marcas <- colnames(automoviles)
marcas
```

```
## [1] "Toyota" "Audi"   "Nissan"
```

## Nombres de las Filas, Columnas y Dimensiones | Función __`dimnames()`__


```r
dimnames(automoviles)
```

```
## [[1]]
## [1] "Blanco" "Rojo"   "Negro"  "Gris"  
## 
## [[2]]
## [1] "Toyota" "Audi"   "Nissan"
```


## Operaciones con Matrices | Diagonal de una Matriz {.smaller}

La función __`diag()`__ extrae la diagonal principal de una matriz:


```r
A <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), 
            nrow = 3, 
            ncol = 3, 
            byrow = TRUE)
A
```

```
##      [,1] [,2] [,3]
## [1,]    1    2    3
## [2,]    4    5    6
## [3,]    7    8    9
```


```r
diag(A)
```

```
## [1] 1 5 9
```

## Operaciones con Matrices | Creación de Matrices Diagonales
Además, __`diag()`__ nos permite crear matrices diagonales:


```r
diag(c(1, 2, 3, 4))
```

```
##      [,1] [,2] [,3] [,4]
## [1,]    1    0    0    0
## [2,]    0    2    0    0
## [3,]    0    0    3    0
## [4,]    0    0    0    4
```

## Operaciones con Matrices | Matriz Identidad


```r
Id4 = diag(1, nrow = 4)
Id4
```

```
##      [,1] [,2] [,3] [,4]
## [1,]    1    0    0    0
## [2,]    0    1    0    0
## [3,]    0    0    1    0
## [4,]    0    0    0    1
```

## Operaciones con Matrices | Operadores Aritméticos Básicos y una Constante


```r
M = matrix(nrow=2,c(1,2,3, 4),byrow = FALSE)
M
```

```
##      [,1] [,2]
## [1,]    1    3
## [2,]    2    4
```


```r
M + 2
```

```
##      [,1] [,2]
## [1,]    3    5
## [2,]    4    6
```

## Operaciones con Matrices | Operadores Aritméticos Básicos y un Vector


```r
M = matrix(nrow=2,c(1,2,3, 4),
           byrow = FALSE)
M
```

```
##      [,1] [,2]
## [1,]    1    3
## [2,]    2    4
```


```r
v = c(3,4)
M + v
```

```
##      [,1] [,2]
## [1,]    4    6
## [2,]    6    8
```

## Operaciones con Matrices | Matrices de la misma Dimensión 

<div class="columns-2">



```r
M
```

```
##      [,1] [,2]
## [1,]    1    3
## [2,]    2    4
```


```r
M + M
```

```
##      [,1] [,2]
## [1,]    2    6
## [2,]    4    8
```


```r
M - M
```

```
##      [,1] [,2]
## [1,]    0    0
## [2,]    0    0
```


```r
M%*%M
```

```
##      [,1] [,2]
## [1,]    7   15
## [2,]   10   22
```

</div>


## Operaciones con Matrices | Traspuesta de una Matriz


```r
M = matrix(nrow=2,c(1,2,3, 4),
           byrow = FALSE)
M
```

```
##      [,1] [,2]
## [1,]    1    3
## [2,]    2    4
```


```r
t(M)
```

```
##      [,1] [,2]
## [1,]    1    2
## [2,]    3    4
```

## Operaciones con Matrices | Determinante Matriz Cuadrada



```r
M = matrix(nrow=2,c(1,2,3, 4),
           byrow = FALSE)
M
```

```
##      [,1] [,2]
## [1,]    1    3
## [2,]    2    4
```


```r
det(M)
```

```
## [1] -2
```


## Operaciones con Matrices | Inversa de una Matriz



```r
M = matrix(nrow=2,c(1,2,3, 4),
           byrow = FALSE)
M
```

```
##      [,1] [,2]
## [1,]    1    3
## [2,]    2    4
```



```r
solve(M)
```

```
##      [,1] [,2]
## [1,]   -2  1.5
## [2,]    1 -0.5
```

## Operaciones con Matrices | Resolución de Sistemas de Ecuaciones Lineales

Además, con la función __`solve()`__ podemos resolver sistemas de ecuaciones lineales. Por ejemplo, si disponemos del siguiente
sistema de ecuaciones: 


$$Ax=b\begin{cases} 3x\quad +\quad 2y\quad =\quad 5 \\ x\quad -\quad y\quad =\quad 0 \end{cases}$$

## {.build}

que en forma matricial puede expresarse como

$$\begin{pmatrix} 3 & 2 \\ 1 & -1 \end{pmatrix}\begin{pmatrix} x \\ y \end{pmatrix}=\begin{pmatrix} 5 \\ 0 \end{pmatrix}$$

Podemos resolver el sistema de ecuaciones en R, del siguiente modo:


```r
A <- matrix(c(3, 2, 1, -1), 
            ncol = 2, 
            byrow = TRUE)
b <- c(5, 0)
solve(A, b)
```

```
## [1] 1 1
```


## Selección de Elementos

<div class="centered">
__`[i, j]`__
</div>

> - Mediante un vector de enteros (todos negativos o positivos)
> - Por medio de un vector de caracteres (si hemos dado nombre a las filas
y columnas)
> - Con la ayuda de un vector lógico
> - Con un espacio en blanco (extrae filas y columnas enteras)



## Selección de Elementos {.smaller}



```r
automoviles <- matrix(
                1:12,
                nrow = 4,
                byrow = TRUE,
                dimnames = list(
                  c("Blanco", "Rojo", "Negro", "Gris"),
                  c("Toyota", "Audi", "Nissan")
                )
)
automoviles
```

```
##        Toyota Audi Nissan
## Blanco      1    2      3
## Rojo        4    5      6
## Negro       7    8      9
## Gris       10   11     12
```

## Selección de Elementos | Con un vector de enteros positivos {.build}


```r
automoviles
```

```
##        Toyota Audi Nissan
## Blanco      1    2      3
## Rojo        4    5      6
## Negro       7    8      9
## Gris       10   11     12
```



```r
automoviles[1, 2]
```

```
## [1] 2
```

## Selección de Elementos | Con un vector de enteros negativos {.build}


```r
automoviles
```

```
##        Toyota Audi Nissan
## Blanco      1    2      3
## Rojo        4    5      6
## Negro       7    8      9
## Gris       10   11     12
```



```r
automoviles[c(-2, -3, -4), c(-1, -3)]
```

```
## [1] 2
```

## Selección de Elementos | Con un vector de caracteres {.build}


```r
automoviles
```

```
##        Toyota Audi Nissan
## Blanco      1    2      3
## Rojo        4    5      6
## Negro       7    8      9
## Gris       10   11     12
```



```r
automoviles["Blanco", "Audi"]
```

```
## [1] 2
```

## Selección de Elementos | Con un vector lógico {.build}


```r
automoviles
```

```
##        Toyota Audi Nissan
## Blanco      1    2      3
## Rojo        4    5      6
## Negro       7    8      9
## Gris       10   11     12
```



```r
automoviles[c(TRUE, FALSE, FALSE, FALSE), 
            c(FALSE, TRUE, FALSE)]
```

```
## [1] 2
```



## Selección de Elementos | Extracción de filas {.build}


```r
automoviles
```

```
##        Toyota Audi Nissan
## Blanco      1    2      3
## Rojo        4    5      6
## Negro       7    8      9
## Gris       10   11     12
```



```r
automoviles[1, ]
```

```
## Toyota   Audi Nissan 
##      1      2      3
```


## Selección de Elementos | Extracción de filas {.build}


```r
automoviles
```

```
##        Toyota Audi Nissan
## Blanco      1    2      3
## Rojo        4    5      6
## Negro       7    8      9
## Gris       10   11     12
```


```r
automoviles["Blanco", ]
```

```
## Toyota   Audi Nissan 
##      1      2      3
```

## Selección de Elementos | Extracción de columnas {.build}


```r
automoviles
```

```
##        Toyota Audi Nissan
## Blanco      1    2      3
## Rojo        4    5      6
## Negro       7    8      9
## Gris       10   11     12
```


```r
automoviles[ , 1]
```

```
## Blanco   Rojo  Negro   Gris 
##      1      4      7     10
```

## Selección de Elementos | Extracción de columnas {.build}


```r
automoviles
```

```
##        Toyota Audi Nissan
## Blanco      1    2      3
## Rojo        4    5      6
## Negro       7    8      9
## Gris       10   11     12
```


```r
automoviles[ , "Toyota"]
```

```
## Blanco   Rojo  Negro   Gris 
##      1      4      7     10
```

## Agregar Filas y Columnas | Agregar filas con __`rbind()`__



```r
# Añadimos una nueva fila a la matriz
verde <- c(8, 5, 7)
automoviles <- rbind(automoviles, verde)
automoviles
```

```
##        Toyota Audi Nissan
## Blanco      1    2      3
## Rojo        4    5      6
## Negro       7    8      9
## Gris       10   11     12
## verde       8    5      7
```

## Agregar Filas y Columnas | Agregar columnas con __`cbind()`__



```r
# Añadimos una nueva columna
ford <- c(2, 7, 3, 5, 9)
automoviles <- cbind(automoviles, ford)
automoviles
```

```
##        Toyota Audi Nissan ford
## Blanco      1    2      3    2
## Rojo        4    5      6    7
## Negro       7    8      9    3
## Gris       10   11     12    5
## verde       8    5      7    9
```

## Eliminar Filas y Columnas | Eliminar filas con __`[-i, ]`__


```r
#Eliminando la fila verde
automoviles[-5, ]
```

```
##        Toyota Audi Nissan ford
## Blanco      1    2      3    2
## Rojo        4    5      6    7
## Negro       7    8      9    3
## Gris       10   11     12    5
```


## Eliminar Filas y Columnas | Eliminar columnas con __`[ , -j]`__


```r
# Eliminando columna ford
automoviles[, -4]
```

```
##        Toyota Audi Nissan
## Blanco      1    2      3
## Rojo        4    5      6
## Negro       7    8      9
## Gris       10   11     12
## verde       8    5      7
```



