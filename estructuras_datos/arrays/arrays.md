


<!-- ```{r, include=FALSE} -->
<!-- tutorial::go_interactive() -->
<!-- ``` -->


# Arrays


Un _array_ es una extensión de un vector a más de dos dimensiones. Los arrays se
emplean para representar  datos multidimensinales de un único tipo. Los arrays son
raramente utilizados en el análisis de datos, por este motivo no profundizaremos
en su estudio en este texto.


## Creación de Arrays

Para crear un _array_ utilizaremos la función `array()`, a la que pasaremos
un vector atómico con los valores y un vector de dimensiones. Opcionalmente, 
podemos proporcionar nombres para cada dimensión:


```r
array_3_D <- array(
  1:24, 
  dim=c(4, 3, 2),
  dimnames = list(
    c("uno", "dos", "tres", "cuatro"),
    c("five", "six", "seven"),
    c("un", "deux")
  ))
array_3_D
## , , un
## 
##        five six seven
## uno       1   5     9
## dos       2   6    10
## tres      3   7    11
## cuatro    4   8    12
## 
## , , deux
## 
##        five six seven
## uno      13  17    21
## dos      14  18    22
## tres     15  19    23
## cuatro   16  20    24
```


Podemos comprobar si un objeto es un array mediante la función `is.array)`:


```r
is.array(array_3_D)
## [1] TRUE
```

Finalmente, podemos conocer su dimensión con la ayuda de la función `dim()`:


```r
dim(array_3_D)
## [1] 4 3 2
```











































