



# Listas

Podemos entender una _lista_ como un contenedor de objetos que pueden ser de cualquier clase: números, vectores, matrices, [funciones](../../funciones/funciones.md), [data.frames](../../estructuras_datos/data_frames/data_frames.md), incluso otras listas. Una lista puede contener a la vez varios de estos objetos, que pueden ser además de distintas dimensiones.

## Creación de listas {#creacion}

Podemos crear listas con la función `list()`, que acepta un número arbitrario de 
argumentos. Los elementos de la lista pueden ser cualquier tipo de objeto:


```r
> lista <- list(1:3, 
+               "Ruben",
+               pi,
+               list(c(-1,-2), -5))
> lista
```

```
[[1]]
[1] 1 2 3

[[2]]
[1] "Ruben"

[[3]]
[1] 3.141593

[[4]]
[[4]][[1]]
[1] -1 -2

[[4]][[2]]
[1] -5
```

Como con los vectores, podemos dar nombre a los elementos en su construcción, o 
posteriormente con la ayuda de la función `names()`:


```r
> names(lista) <- c("a", "b", "c", "d")
> lista
```

```
$a
[1] 1 2 3

$b
[1] "Ruben"

$c
[1] 3.141593

$d
$d[[1]]
[1] -1 -2

$d[[2]]
[1] -5
```


```r
> la_misma_lista <- list(a = 1:3, 
+                        b = "Ruben", 
+                        c = pi, 
+                        d = list(c(-1,-2), -5))
> la_misma_lista
```

```
$a
[1] 1 2 3

$b
[1] "Ruben"

$c
[1] 3.141593

$d
$d[[1]]
[1] -1 -2

$d[[2]]
[1] -5
```

Un herramienta muy útil para el trabajo con listas es la función `str()` que nos muestra
su estructura:


```r
> str(lista)
```

```
List of 4
 $ a: int [1:3] 1 2 3
 $ b: chr "Ruben"
 $ c: num 3.14
 $ d:List of 2
  ..$ : num [1:2] -1 -2
  ..$ : num -5
```


## Selección de Elementos {#seleccion}

Disponemos de tres métodos para seleccionar elementos de una lista, que examinaremos
a partir de `lista`:


```r
> lista <- list(a = 1:3, b = "Ruben", c = pi, d = list(c(-1,-2), -5))
```

- La notación `[]` extrae una sublista. El resultado será siempre una lista:


```r
> str(lista[1:2])
```

```
List of 2
 $ a: int [1:3] 1 2 3
 $ b: chr "Ruben"
```


```r
> str(lista[4])
```

```
List of 1
 $ d:List of 2
  ..$ : num [1:2] -1 -2
  ..$ : num -5
```


Como con los vectores, podemos seleccionar elementos con un vector de tipo `logical`,
`integer` o `character`.

- La notación `[[]]` extrae un único componente de la lista. Esto es, elimina un nivel
en la jerarquía de la lista:


```r
> str(lista[[1]])
```

```
 int [1:3] 1 2 3
```



```r
> str(lista[[4]])
```

```
List of 2
 $ : num [1:2] -1 -2
 $ : num -5
```


```r
> str(lista[[4]][1])
```

```
List of 1
 $ : num [1:2] -1 -2
```


```r
> str(lista[[4]][[1]])
```

```
 num [1:2] -1 -2
```

- El operador `$` extrae elementos de una lista por medio de su nombre. El funcionamiento es el mismo que con el
operador `[[]]` excepto que no tenemos que utilizar comillas (`""`):


```r
> str(lista$a)
```

```
 int [1:3] 1 2 3
```


```r
> str(lista[["a"]])
```

```
 int [1:3] 1 2 3
```


La distinción entre `[]` y `[[]]` es importante en las listas, puesto que `[[]]` navega jerárquicamente por la lista,
mientras que `[]` devuelve una sublista. A continuación mostramos una representación visual de las operaciones realizadas
en el código anterior:

![Selección elementos de una lista, visualmente](http://i.imgur.com/OZt8KNs.png)


## Resumen

- Creamos listas con la función `list()`.
- Con la ayuda de la función `names()` podemos consultar o cambiar los nombres
de los elementos.
- Una función útil para el trabajo con listas es `str()` que nos muestra su estructura.
- Hemos analizado los diferentes operadores para seleccionar elementos de una lista.








