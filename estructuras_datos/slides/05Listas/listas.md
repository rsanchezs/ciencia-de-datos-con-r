---
title: "Listas"
author: "Rubén Sánchez Sancho"
date: "14 de febrero de 2017"
output:
  ioslides_presentation:
    highlight: monochrome
    widescreen: yes
logo: ./logo.png
---


<style>
h2 { 
   font-size: 32px; 
   line-height: 50px; 
   letter-spacing: -2px; 
   color: #FFFFFF;} 
</style>

<style>

h3 {

  font-size: 22px;
  letter-spacing: -1px;
  line-height: 1;
  font-weight: inherit;
  color: #797979;
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
pre {
  width : 75%;
  padding: 10px 15px 10px 15px;
  left: 0px;
  background-color: #2A3137;
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

## Creación de Listas | Función __`list()`__ {.smaller}


```r
lista <- list(1:3, 
              "Ruben",
              pi,
              list(c(-1,-2), -5))
lista
```

```
## [[1]]
## [1] 1 2 3
## 
## [[2]]
## [1] "Ruben"
## 
## [[3]]
## [1] 3.141593
## 
## [[4]]
## [[4]][[1]]
## [1] -1 -2
## 
## [[4]][[2]]
## [1] -5
```

## Función __`str()`__ para mostrar estructura


```r
str(lista)
```

```
## List of 4
##  $ : int [1:3] 1 2 3
##  $ : chr "Ruben"
##  $ : num 3.14
##  $ :List of 2
##   ..$ : num [1:2] -1 -2
##   ..$ : num -5
```


## Nombres de los Elementos | Dar nombre a los elementos en la construcción {.smaller}


```r
la_misma_lista <- list(a = 1:3, 
                       b = "Ruben", 
                       c = pi, 
                       d = list(c(-1,-2), -5))
la_misma_lista
```

```
## $a
## [1] 1 2 3
## 
## $b
## [1] "Ruben"
## 
## $c
## [1] 3.141593
## 
## $d
## $d[[1]]
## [1] -1 -2
## 
## $d[[2]]
## [1] -5
```

## Nombres de los Elementos | Función __`names()`__ {.smaller}


```r
names(lista) <- c("a", "b", "c", "d")
lista
```

```
## $a
## [1] 1 2 3
## 
## $b
## [1] "Ruben"
## 
## $c
## [1] 3.141593
## 
## $d
## $d[[1]]
## [1] -1 -2
## 
## $d[[2]]
## [1] -5
```


## Selección de Elementos 

Disponemos de tres métodos para seleccionar elementos de una lista:

> - Con la notación __[]__
> - Con la notación __[[]]__
> - Con el operador __$__

## Selección de Elementos {.smaller}

que examinaremos a partir de __`lista`__:



```r
lista <- list(a = 1:3, 
              b = "Ruben",
              c = pi, 
              d = list(c(-1,-2), -5))
```

## Selección de Elementos | Notación __`[]`__ 

Como con los vectores, podemos seleccionar elementos con un vector de tipo:

> - `logical`
> - `integer` 
> - `character`


## Selección de Elementos | Notación __`[]`__ {.smaller}

- La notación `[]` extrae una sublista. El resultado será siempre una lista:


```r
str(lista[1:2])
```

```
## List of 2
##  $ a: int [1:3] 1 2 3
##  $ b: chr "Ruben"
```

## Selección de Elementos | Notación __`[]`__ {.smaller}

- La notación `[]` extrae una sublista. El resultado será siempre una lista:


```r
str(lista[4])
```

```
## List of 1
##  $ d:List of 2
##   ..$ : num [1:2] -1 -2
##   ..$ : num -5
```


## Selección de Elementos | Notación __`[[]]`__ {.smaller}

- La notación `[[]]` extrae un único componente de la lista. Esto es, elimina un nivel
en la jerarquía de la lista:


```r
str(lista[[1]])
```

```
##  int [1:3] 1 2 3
```

## Selección de Elementos | Notación __`[[]]`__ {.smaller}

- La notación `[[]]` extrae un único componente de la lista. Esto es, elimina un nivel
en la jerarquía de la lista:


```r
str(lista[[4]])
```

```
## List of 2
##  $ : num [1:2] -1 -2
##  $ : num -5
```

## Selección de Elementos | Distinción entre __`[]`__ y __`[[]]`__ 

La distinción entre `[]` y `[[]]` es importante en las listas, puesto que:

> - `[[]]` navega jerárquicamente por la lista.
> - `[]` devuelve una sublista.


## Selección de Elementos | Distinción entre __`[]`__ y __`[[]]`__ {.smaller}



```r
str(lista[[4]][1])
```

```
## List of 1
##  $ : num [1:2] -1 -2
```

## Selección de Elementos | Distinción entre __`[]`__ y __`[[]]`__ {.smaller}



```r
str(lista[[4]][[1]])
```

```
##  num [1:2] -1 -2
```


## Selección de Elementos | Operador __`$`__ {.smaller}

- El operador `$` extrae elementos de una lista por medio de su nombre. 


```r
str(lista$a)
```

```
##  int [1:3] 1 2 3
```

## Selección de Elementos | Operador __`$`__ {.smaller}

- El funcionamiento es el mismo que con el operador `[[]]` excepto que no tenemos 
que utilizar comillas (`""`):


```r
# Mismo efecto que `lista$a`
str(lista[["a"]])
```

```
##  int [1:3] 1 2 3
```












