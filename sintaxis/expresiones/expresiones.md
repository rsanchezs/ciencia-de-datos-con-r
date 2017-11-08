


<!-- ```{r include=FALSE} -->
<!-- tutorial::go_interactive() -->
<!-- ``` -->



# Expresiones y Asignación


El código R está compuesto por una serie de _expresiones_. Ejemplo de expresiones en R incluyen, expresiones aritméticas, [instrucciones de control](../../estructuras_control/estructuras_control.md) (condicionales e iterativas) e instrucciones de asignación. A continuación se muestran ejemplos de expresiones: 




```r
# Expresión aritmética
127%%10
## [1] 7
```



```r
# Instrucción condicional
if (1 > 2) "mayor" else "menor"
## [1] "menor"
```



```r
# Instrucción asignación
x <- 1
```

## Instrucciones de Asignación {#asignacion}

Podemos crear nuevos objetos con el operador de asignación __<-__. Todas las instrucciones de asignación dónde creamos objetos, tienen la misma forma:

    nombre_objeto <- valor
 

En lenguaje natural podemos traducirlo como a "este objeto asignale el siguiente valor.

## Construcciones para Agrupar Expresiones {#construcciones}

R proporciona diferentes construcciones para agrupar expresiones:

    - punto y coma
    - paréntesis
    - llaves

### Separando Expresiones con punto y coma

Podemos escribir una serie de expresiones en líneas separadas:



```r
x <- 1
y <- 2
z <- 3
```

Alternativamente, podemos colocarlas en la misma línea, separadas por punto y coma:



```r
x <- 1
y <- 2
z <- 3
```

### Paréntesis

La notación con paréntesis devuelve el resultado de evaluar la expresión dentro del paréntesis:



```r
(x <- 1)
## [1] 1
```



```r
# es equivalente
x <- 1
x
## [1] 1
```

Agrupar expresiones con paréntesis puede ser usado para modificar la prioridad  en los operadores:



```r
# La multiplicación tiene prioridad sobre la suma
2 * 5 + 1
## [1] 11
```



```r
# En este caso, se calculará primero la suma y después se multiplicará
2 * (5 + 1)
## [1] 12
```


### Llaves

Las llaves son usadas para evaluar una serie de expresiones (separadas por nuevas líneas o punto y comas) y, nos devolverán el resultado de la última expresión:





```r
{
    x <- 1
    y <- 2
    x + y
}
## [1] 3
```

Usado para agrupar un conjunto de expresiones en el cuerpo de una función:



```r
f <- function() {
    x <- 1
    y <- 2
    x + y
}
f()
## [1] 3
```

