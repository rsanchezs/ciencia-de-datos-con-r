

<!-- ```{r, include=FALSE} -->
<!-- tutorial::go_interactive() -->
<!-- ``` -->


# Coerción


La _coerción_ es una característica de los lenguajes de programación que permite, implícita o explícitamente, convertir un elemento de un tipo de datos en otro, sin tener en cuenta la comprobación de tipos.


## Coerción Implícita {#implicita}

Cuando llamamos a una función con un argumento de un tipo erróneo, R intentará convertir los elementos de un tipo de datos en otro, sin tener en cuenta la comprobación de tipos. Por ejemplo, supongamos que definimos un vector `v` como en el ejemplo:




```r
v <- c(1, 2, 3, 4, 5)
v
## [1] 1 2 3 4 5
```




```r
typeof(v)
## [1] "double"
```



```r
class(v)
## [1] "numeric"
```

Si cambiamos el segundo elemento del vector con la palabra "coercion". R cambiará la clase del objeto a `character` y todos los elementos del vector a `char` como podemos ver en el siguiente ejemplo:




```r
v[2] <- "coercion"
```



```r
typeof(v)
## [1] "character"
```



```r
class(v)
## [1] "character"
```


Cuando un vector lógico es convertido a un integer o double, `TRUE` es cambiado a
1 y `FALSE` a 0:


```r
v <- c(FALSE, TRUE, FALSE)
as.numeric(v)
## [1] 0 1 0
```


![Coerción](http://i.imgur.com/QrmSoIc.png)



A continuación se muestra un resumen de las reglas para la coerción:


- Los valores lógicos son transformados a números: `TRUE` será cambiado a __1__ y `FALSE` a __O__.
- Los valores son convertidos al tipo más simple.
- El orden es: logical < integer < numeric < complex < character < list.
- Los objetos de tipo `raw` no son convertidos a otros tipos.
- Los atributos de los objetos son borrados cuando un objeto es cambiado de un tipo a otro.


## Coerción Explícita {#explicita}

Los objetos pueden ser convertidos en otro tipo de foma explícita mediante el uso
de la función `as.()*`

__Ejemplos__



```r
v <- c(1, 2, 3, 4, 5)
class(v)
## [1] "numeric"
```



```r
as.logical(v)
## [1] TRUE TRUE TRUE TRUE TRUE
```



```r
as.character(v)
## [1] "1" "2" "3" "4" "5"
```



En ocasiones, la conversión no puede ser llevada a cabo, en este caso R devuelve [_NA_.](#na)



```r
v <- c("a", "b", "c")
as.numeric(v)
## Warning: NAs introduced by coercion
## [1] NA NA NA
```



```r
as.logical(v)
## [1] NA NA NA
```


En resumen, la mayoría de las funciones producen un error cuando el tipo de datos que esperan no coincide con los que pasamos como argumentos. En esta situación tenemos dos posibilidades:



* Comprobar el tipo de datos utilizando las funciones `is.*()`, que nos responden con un valor lógico.
* Forzar el tipo de datos deseados coercionando, para lo cual podemos utilizar funciones del tipo `as.*()`, que fuerzan el tipo de datos.



A continuación se muestra una lista con los tipos más importantes que se pueden comprobar o forzar:



| Tipo | Comprobación | Coerción |
| :--- | :--- | :--- |
| array | \`is.array\(\)\` | \`as.array\(\)\` |
| character | \`is.character\(\)\` | \`as.character\(\)\` |
| complex | \`is.complex\(\)\` | \`as.complex\(\)\` |
| double | \`is.double\(\)\` | \`as.double\(\)\` |
| factor | \`is.factor\(\)\` | \`as.factor\(\)\` |
| integer | \`is.integer\(\)\` | \`as.integer\(\)\` |
| list | \`is.list\(\)\` | \`as.list\(\)\` |
| logical | \`is.logical\(\)\` | \`as.logical\(\)\` |
| matrix | \`is.matrix\(\)\` | \`as.matrix\(\)\` |
| NA | \`is.na\(\)\` | \`as.na\(\)\` |
| NaN | \`is.nan\(\)\` | \`as.nan\(\)\` |
| NULL | \` is.null\(\)\` | \`as.null\(\)\` |
| numeric | \`is.numeric\(\)\` | \`as.numeric\(\)\` |
| vector | \`is.vector\(\)\` | \`as.vector\(\)\` |

_ Tabla 1: Comprobación y coerción de los tipos más importantes_
 

Podemos ver una lista completa de todas las funciones `is.()` en el paquete `base` mediante:


```r
ls(pattern = "^is", baseenv())
```


Asimismo, para obtener las funciones `as.*()` podemos hacerlo mediante la siguiente instrucción:


```r
ls(pattern = "^as", baseenv())
```

