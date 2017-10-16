


# Matrices {#matrices}

Una _matriz_ es una extensión de un vector a dos dimensiones, lo que implica que dispone del atributo _dimension_. El atributo dimensión es en si mismo un vector de longitud 2 (numero de filas, numero de columnas). Una matriz se utiliza para representar datos de un único tipo en dos dimensiones.




## Creación de Matrices {#creacion-de-matrices}


Para crear matrices utilizaremos la función `matrix()`, la sintaxis es la siguiente


```r
> str(matrix)
```

```
function (data = NA, nrow = 1, ncol = 1, byrow = FALSE, dimnames = NULL)  
```


A continuación mostramos la descripción de los argumentos:

- __data__ es el vector que contiene los elementos que formaran parte de la matriz.
- __nrow__ es el número de filas.
- __ncol__ es el número de columnas.
- __byrow__ es un valor lógico. Si es `TRUE` el vector que pasamos será ordenado por filas.
- __dimnames__ nombres asignado a filas y columnas.


Seguidamente se muestra un ejemplo de creación de una matriz:



```r
> matriz <- matrix(1:12, nrow = 4)
> matriz
```

```
     [,1] [,2] [,3]
[1,]    1    5    9
[2,]    2    6   10
[3,]    3    7   11
[4,]    4    8   12
```


A partir de un vector, si le añadimos el atributo dimensión podemos obtener una matriz:



```r
> m <- 1:12
> m
```

```
 [1]  1  2  3  4  5  6  7  8  9 10 11 12
```




```r
> dim(m) <- c(4, 3)
> m
```

```
     [,1] [,2] [,3]
[1,]    1    5    9
[2,]    2    6   10
[3,]    3    7   11
[4,]    4    8   12
```


Cuando creamos una matriz, los valores que pasamos son ordenados por columnas. Pero también es posible llenar la matriz por filas especificando el argumento `byrow = TRUE`:



```r
> matriz <- matrix(1:12, nrow = 4, byrow = TRUE)
> matriz
```

```
     [,1] [,2] [,3]
[1,]    1    2    3
[2,]    4    5    6
[3,]    7    8    9
[4,]   10   11   12
```


En el siguiente ejemplo hacemos uso del argumento `dimnames` para dar nombre a las filas y columnas:




```r
> automoviles <- matrix(
+                 1:12,
+                 nrow = 4,
+                 byrow = TRUE,
+                 dimnames = list(
+                   c("Blanco", "Rojo", "Negro", "Gris"),
+                   c("Toyota", "Audi", "Nissan")
+                 )
+ )
> automoviles
```

```
       Toyota Audi Nissan
Blanco      1    2      3
Rojo        4    5      6
Negro       7    8      9
Gris       10   11     12
```


Mediante las funciones `cbind()` y `rbind()` es posible crear matrices por columnas o por filas a partir de dos vectores de la misma longitud:




```r
> v1 <- c(1, 2, 3)
> v2 <- c(4, 5, 6)
> m1 <- cbind(v1, v2)
> m1
```

```
     v1 v2
[1,]  1  4
[2,]  2  5
[3,]  3  6
```


```r
> v1 <- c(1, 2, 3)
> v2 <- c(4, 5, 6)
> m1 <- rbind(v1, v2)
> m1
```

```
   [,1] [,2] [,3]
v1    1    2    3
v2    4    5    6
```




## Filas, Columnas y Dimensión {#filas-columnas-y-dimension}


La función `dim()` devuelve un vector de integers con la dimensión del objeto:


```r
> dim(automoviles)
```

```
[1] 4 3
```


Además con las funciones `nrow()` y `ncol()` podemos conocer el número de filas y columnas, respectivamente:



```r
> nrow(automoviles)
```

```
[1] 4
```


```r
> ncol(automoviles)
```

```
[1] 3
```


La función `length()` que hemos visto con anterioridad en los vectores, también funciona en matrices. Cuando trabajamos con matrices; no obstante, devuelve el producto de cada una de las dimensiones:





```r
> length(automoviles)
```

```
[1] 12
```


## Nombres de las Filas, Columnas y Dimensiones {#nombres-de-las-filas-columnas-y-dimensiones}


Del mismo modo que los vectores poseen el atributo `names` para sus elementos, las matrices disponen de `rownames` y `colnames` para las filas y columnas.



```r
> colores <- rownames(automoviles)
> colores
```

```
[1] "Blanco" "Rojo"   "Negro"  "Gris"  
```


```r
> marcas <- colnames(automoviles)
> marcas
```

```
[1] "Toyota" "Audi"   "Nissan"
```

Por medio de la función `dimnames()` obtendremos una [lista](../listas/listas.md) que
contiene dos vectores con los atributos `rownames` y `colnames`:


```r
> dimnames(automoviles)
```

```
[[1]]
[1] "Blanco" "Rojo"   "Negro"  "Gris"  

[[2]]
[1] "Toyota" "Audi"   "Nissan"
```

## Operaciones con Matrices {#operaciones-con-matrices}




La función `diag()` extrae la diagonal principal de una matriz:


```r
> A <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3, byrow = TRUE)
> A
```

```
     [,1] [,2] [,3]
[1,]    1    2    3
[2,]    4    5    6
[3,]    7    8    9
```


```r
> diag(A)
```

```
[1] 1 5 9
```

Además, `diag()` nos permite crear matrices diagonales:


```r
> diag(c(1, 2, 3, 4))
```

```
     [,1] [,2] [,3] [,4]
[1,]    1    0    0    0
[2,]    0    2    0    0
[3,]    0    0    3    0
[4,]    0    0    0    4
```

La matriz identidad es muy fácil de crear en R. Por ejemplo, la matriz identidad de dimensión 4 es:




```r
> Id4 = diag(1, nrow = 4)
> Id4
```

```
     [,1] [,2] [,3] [,4]
[1,]    1    0    0    0
[2,]    0    1    0    0
[3,]    0    0    1    0
[4,]    0    0    0    1
```



Hay que tener cierto cuidado con los operadores aritméticos básicos (`+`, `-`, `*`). Si se suman una matriz y una constante, el efecto es que dicha constante se suma a todos los elementos de la matriz. Lo mismo ocurre con la diferencia, la multiplicación y la división:




```r
> M = matrix(nrow=2,c(1,2,3, 4),byrow = FALSE)
> M
```

```
     [,1] [,2]
[1,]    1    3
[2,]    2    4
```



```r
> M + 2
```

```
     [,1] [,2]
[1,]    3    5
[2,]    4    6
```


Asimismo, si a una matriz se le suma un vector cuya longitud sea igual al número de filas de la matriz, se obtiene como resultado una nueva matriz cuyas columnas son la suma de las columnas de la matriz original más dicho vector.



```r
> v = c(3,4)
> M + v
```

```
     [,1] [,2]
[1,]    4    6
[2,]    6    8
```

La suma o resta de matrices de la misma dimensión se realiza con los operadores `+` y `-`; el producto de matrices (siempre que sean compatibles) se realiza con el operador `%*%`:




```r
> M + M
```

```
     [,1] [,2]
[1,]    2    6
[2,]    4    8
```


```r
> M - M
```

```
     [,1] [,2]
[1,]    0    0
[2,]    0    0
```



```r
> M%*%M
```

```
     [,1] [,2]
[1,]    7   15
[2,]   10   22
```



Una fuente de posibles errores en el cálculo matricial, cuando se utilizan matrices de la misma dimensión, es utilizar los operadores `*` y `/` ya que multiplican (o dividen) las matrices término a término:




```r
> M * M
```

```
     [,1] [,2]
[1,]    1    9
[2,]    4   16
```



```r
> M / M
```

```
     [,1] [,2]
[1,]    1    1
[2,]    1    1
```

La traspuesta de una matriz se calcula simplemente con la función `t()`:


```r
> M
```

```
     [,1] [,2]
[1,]    1    3
[2,]    2    4
```

```r
> t(M)
```

```
     [,1] [,2]
[1,]    1    2
[2,]    3    4
```


El determinante de una matriz cuadrada se calcula mediante la función `det()`:


```r
> det(M)
```

```
[1] -2
```



La función `solve()` permite obtener la inversa de una matriz cuando sólo se le pasa un argumento:





```r
> solve(M)
```

```
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5
```



Además, con la función `solve()`podemos resolver sistemas de ecuaciones lineales. Por ejemplo, si disponemos del siguiente
sistema de ecuaciones: 


$$ Ax=b\begin{cases} 3x\quad +\quad 2y\quad =\quad 5 \\ x\quad -\quad y\quad =\quad 0 \end{cases} $$

que en forma matricial puede expresarse como

$$ \begin{pmatrix} 3 & 2 \\ 1 & -1 \end{pmatrix}\begin{pmatrix} x \\ y \end{pmatrix}=\begin{pmatrix} 5 \\ 0 \end{pmatrix} $$


Podemos resolver el sistema de ecuaciones en R, del siguiente modo:


```r
> A <- matrix(c(3, 2, 1, -1), ncol = 2, byrow = TRUE)
> b <- c(5, 0)
> solve(A, b)
```

```
[1] 1 1
```


## Selección de Elementos {#seleccion-de-elementos}


Los elementos de una matriz están indexados con dos índices lo cual hace que resulte fácil acceder a los elementos y trabajar con ellos si lo que nos interesa es sólo una parte de la información contenida en una matriz y no la matriz entera, esto se logra con el operador de indexación `[i, j]` donde $$i$$ es el elemento fila y $$j$$ es el elemento columna.


Siguiendo con el ejemplo anterior, si quisiéramos seleccionar el número de automóviles blancos correspondiente a la marca Audi podríamos hacerlo de dos maneras:


- Escribiendo el nombre de la matriz y entre corchetes los nombres de la fila y columnas entre comillas:




```r
> automoviles["Blanco", "Audi"]
```

```
[1] 2
```

- Alternativamente, podemos utilizar la notación de índices:


```r
> automoviles[1, 2]
```

```
[1] 2
```


También podemos seleccionar columnas y filas enteras, de manera que si queremos seleccionar todos los automóviles blancos lo haríamos del siguiente modo:




```r
> automoviles[1,]
```

```
Toyota   Audi Nissan 
     1      2      3 
```



```r
> # otra forma de hacerlo es
> automoviles["Blanco",]
```

```
Toyota   Audi Nissan 
     1      2      3 
```


## Agregar Filas y Columnas

<p style="text-align:justify;">
Podemos emplear las funciones `cbind()` y `rbind()` para agregar filas y columnas a una matriz que hemos creado con anterioridad:
</p>



```r
> # Añadimos una nueva fila a la matriz
> verde <- c(8, 5, 7)
> automoviles <- rbind(automoviles, verde)
> automoviles
```

```
       Toyota Audi Nissan
Blanco      1    2      3
Rojo        4    5      6
Negro       7    8      9
Gris       10   11     12
verde       8    5      7
```



```r
> # Añadimos una nueva columna
> ford <- c(2, 7, 3, 5, 9)
> automoviles <- cbind(automoviles, ford)
> automoviles
```

```
       Toyota Audi Nissan ford
Blanco      1    2      3    2
Rojo        4    5      6    7
Negro       7    8      9    3
Gris       10   11     12    5
verde       8    5      7    9
```

## Eliminar Filas y Columnas {#eliminar-filas-y-columnas}


Para eliminar filas utilizaremos la notación `[-i,]`, de forma similar para eliminar columnas utilizaremos la notación `[, -j]`. A modo de ejemplo, vamos a eliminar la fila 
y columna que hemos añadido en el apartado anterior:





```r
> #Eliminando la fila verde
> automoviles[-5, ]
```

```
       Toyota Audi Nissan ford
Blanco      1    2      3    2
Rojo        4    5      6    7
Negro       7    8      9    3
Gris       10   11     12    5
```



```r
> # Eliminando columna ford
> automoviles[, -4]
```

```
       Toyota Audi Nissan
Blanco      1    2      3
Rojo        4    5      6
Negro       7    8      9
Gris       10   11     12
verde       8    5      7
```

## Resumen {#resumen}



- La función `dim()` devuelve un vector de integers con la dimensión del objeto.
- Además con las funciones `nrow()` y `ncol()` podemos conocer el número de filas y columnas.
- Por medio de la función `dimnames()` obtendremos una lista que contiene dos vectores con los atributos `rownames` y `colnames`.
- Podemos seleccionar elementos de un vector usando la notación `[i,j]`.
- Con la ayuda de las funciones `cbind()` y `rbind()` podemos agregar filas y columnas.
- Para eliminar filas utilizaremos la notación `[-i,]`.
- De forma similar para eliminar columnas utilizaremos la notación `[, -j]`.


