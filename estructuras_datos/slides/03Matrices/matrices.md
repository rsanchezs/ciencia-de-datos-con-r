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


## Creación de Matrices | A partir de un Vector y mediante `dim()`


```r
m <- 1:12
m
```



```r
dim(m) <- c(4, 3)
m
```


## Creación de Matrices | Ordenar Matriz con `byrow=TRUE`



```r
matriz <- matrix(1:12, nrow = 4, byrow = TRUE)
matriz
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


## Creación de Matrices mediante funciones `cbind()` y `rbind()` | Ejemplo uso de la función `cbind()`


```r
v1 <- c(1, 2, 3)
v2 <- c(4, 5, 6)
m1 <- cbind(v1, v2)
m1
```



## Creación de Matrices mediante funciones `cbind()` y `rbind()` | Ejemplo uso de la función `rbind()`


```r
v1 <- c(1, 2, 3)
v2 <- c(4, 5, 6)
m1 <- rbind(v1, v2)
m1
```


## Filas, Columnas y Dimensión 


La función __`dim()`__ devuelve un vector de integers con la dimensión del objeto:


```r
dim(automoviles)
```


## Filas, Columnas y Dimensión 


Además con las funciones __`nrow()`__ y __`ncol()`__ podemos conocer el número de filas y columnas, respectivamente:



```r
nrow(automoviles)
```


```r
ncol(automoviles)
```


## Filas, Columnas y Dimensión | Uso de la función __`length()`:__



```r
length(automoviles)
```


## Nombres de las Filas, Columnas y Dimensiones | Funciones __`rownames()`__ y __`colnames()`__:


```r
colores <- rownames(automoviles)
colores
```


```r
marcas <- colnames(automoviles)
marcas
```

## Nombres de las Filas, Columnas y Dimensiones | Función __`dimnames()`__


```r
dimnames(automoviles)
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


```r
diag(A)
```

## Operaciones con Matrices | Creación de Matrices Diagonales
Además, __`diag()`__ nos permite crear matrices diagonales:


```r
diag(c(1, 2, 3, 4))
```

## Operaciones con Matrices | Matriz Identidad


```r
Id4 = diag(1, nrow = 4)
Id4
```

## Operaciones con Matrices | Operadores Aritméticos Básicos y una Constante


```r
M = matrix(nrow=2,c(1,2,3, 4),byrow = FALSE)
M
```


```r
M + 2
```

## Operaciones con Matrices | Operadores Aritméticos Básicos y un Vector


```r
M = matrix(nrow=2,c(1,2,3, 4),
           byrow = FALSE)
M
```


```r
v = c(3,4)
M + v
```

## Operaciones con Matrices | Matrices de la misma Dimensión 

<div class="columns-2">



```r
M
```


```r
M + M
```


```r
M - M
```


```r
M%*%M
```

</div>


## Operaciones con Matrices | Traspuesta de una Matriz


```r
M = matrix(nrow=2,c(1,2,3, 4),
           byrow = FALSE)
M
```


```r
t(M)
```

## Operaciones con Matrices | Determinante Matriz Cuadrada



```r
M = matrix(nrow=2,c(1,2,3, 4),
           byrow = FALSE)
M
```


```r
det(M)
```


## Operaciones con Matrices | Inversa de una Matriz



```r
M = matrix(nrow=2,c(1,2,3, 4),
           byrow = FALSE)
M
```



```r
solve(M)
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

## Selección de Elementos | Con un vector de enteros positivos {.build}


```r
automoviles
```



```r
automoviles[1, 2]
```

## Selección de Elementos | Con un vector de enteros negativos {.build}


```r
automoviles
```



```r
automoviles[c(-2, -3, -4), c(-1, -3)]
```

## Selección de Elementos | Con un vector de caracteres {.build}


```r
automoviles
```



```r
automoviles["Blanco", "Audi"]
```

## Selección de Elementos | Con un vector lógico {.build}


```r
automoviles
```



```r
automoviles[c(TRUE, FALSE, FALSE, FALSE), 
            c(FALSE, TRUE, FALSE)]
```



## Selección de Elementos | Extracción de filas {.build}


```r
automoviles
```



```r
automoviles[1, ]
```


## Selección de Elementos | Extracción de filas {.build}


```r
automoviles
```


```r
automoviles["Blanco", ]
```

## Selección de Elementos | Extracción de columnas {.build}


```r
automoviles
```


```r
automoviles[ , 1]
```

## Selección de Elementos | Extracción de columnas {.build}


```r
automoviles
```


```r
automoviles[ , "Toyota"]
```

## Agregar Filas y Columnas | Agregar filas con __`rbind()`__



```r
# Añadimos una nueva fila a la matriz
verde <- c(8, 5, 7)
automoviles <- rbind(automoviles, verde)
automoviles
```

## Agregar Filas y Columnas | Agregar columnas con __`cbind()`__



```r
# Añadimos una nueva columna
ford <- c(2, 7, 3, 5, 9)
automoviles <- cbind(automoviles, ford)
automoviles
```

## Eliminar Filas y Columnas | Eliminar filas con __`[-i, ]`__


```r
#Eliminando la fila verde
automoviles[-5, ]
```


## Eliminar Filas y Columnas | Eliminar columnas con __`[ , -j]`__


```r
# Eliminando columna ford
automoviles[, -4]
```



