

# Datos Básicos en R

R proporciona cuatro tipos básicos de datos, también conocidos como vectores atómicos.

- logical
- numeric 
- integer
- character

## Logical {#logical}

El tipo _logical_ es la forma que tiene R para los datos binarios. Usados en test lógicos son conocidos como valores boleanos y toman los valores **TRUE** y **FALSE**. TRUE y FALSE pueden ser abreviados con las T y F en mayúsculas respectivamente. Sin embargo, recomendamos utilizar la versión completa de TRUE y FALSE. 



```r
> 3 < 4
```

```
[1] TRUE
```


```r
> class(TRUE)
```

```
[1] "logical"
```



```r
> class(T)
```

```
[1] "logical"
```


Es posible construir condiciones lógicas utilizando los operadores `&`, `|` y `!` (en lenguaje formal, $$y$$, $$o$$ y $$no$$ respectivamente). La comparación de valores se lleva a cabo mediante `==` (es igual a) y `!=` (es distinto de):


```r
> a <- 2
> b <- 4
> a == b # ¿es igual a b?
```

```
[1] FALSE
```




```r
> a != b # ¿es a distindo de b?
```

```
[1] TRUE
```


```r
> (a <3) & (b < 5)  # ¿es a menor que 3 y b menor que 3?
```

```
[1] TRUE
```



```r
> (a < 1) | (b < 3)  # ¿es a menor que 1 o b menor que 3?
```

```
[1] FALSE
```

A continuación se muestran los operadores de comparación y lógicos en R:

|  | ?Comparision |
| :---: | :--- |
| &lt; | Menor que |
| &gt; | Mayor que |
| == | Igual a |
| &lt;= | Menor que o igual a |
| &gt;= | Mayor que o igual a |
| != | Distinto a |
| %in% | Pertenece a |
| is.na\(\) | Es el valor NA? |
| !is.na\(\) | Valores distintos a NA |
_Tabla 1: Operadores de comparación_


|  | ?base::Logic |
| :---: | :--- |
| & | y \(boleano\) |
| &#124; | o \(boleano\) |
| ! | no |
| any | Cualquiera verdadero |
| all | Todos verdaderos |
_Tabla 2: Operadores lógicos_

Para mas información sobre la sintaxis de los operadores y su precedencia consultar la
documentación R: 


```r
> # Sintaxis de comparación
> ?Comparison
> # Operadores lógicos
> ?base::Logic
```



## Numeric {#numeric}

Para representar los números reales R proporciona el tipo _numeric_. Podemos realizar toda clase de operaciones con ellos como por ejemplo sumas, restas, multiplicaciones, divisiones y utilizarlos en el amplio catálogo de funciones matemáticas con las que cuenta R:



```r
> mi_altura_en_cm <- 180
> mi_altura_en_cm
```

```
[1] 180
```



```r
> mi_peso <- 79.5
> mi_peso
```

```
[1] 79.5
```



```r
> IMC <- mi_peso / mi_altura_en_cm ^ 2
> IMC
```

```
[1] 0.002453704
```



```r
> round(mi_peso)
```

```
[1] 80
```

## Integer {#integer}

Un tipo especial de numeric es el _integer_. Este es el modo de representar los números enteros en R. Para especificar que un número es entero, debemos añadir la letra L en mayúscula como sufijo.



```r
> mi_edad <- 40L
> mi_edad
```

```
[1] 40
```

En el ejemplo anterior, no podemos apreciar la diferencia entre el número real y el número entero.Sin embargo, con la función `class()` podemos comprobar esta diferencia:




```r
> class(40)
```

```
[1] "numeric"
```



```r
> class(40L)
```

```
[1] "integer"
```

En lugar de preguntar por la clase de una variable mediante la función `class()`, podemos utilizar las funciones `is.*()` para comprobar si un objeto es realmente de un cierto tipo. Por ejemplo, para comprobar si una variable es numeric, usaremos la función `is.numeric()`:



```r
> is.numeric(40)
```

```
[1] TRUE
```



```r
> is.numeric(40L)
```

```
[1] TRUE
```

Para comprobar si una variable es integer, usaremos la función `is.integer()`:



```r
> is.integer(40)
```

```
[1] FALSE
```



```r
> is.integer(40L)
```

```
[1] TRUE
```

Como podemos ver en el ejemplo anterior los números reales son numeric, pero no todos los numeric son enteros.

## Character {#character}

Cualquier dato alfanumérico (o cadenas, _strings_ en inglés; todo aquello que no sea un número es una cadena) será
interpretado por R como _character_. Por ejemplo:



```r
> "Ciencia de Datos con R"
```

```
[1] "Ciencia de Datos con R"
```



## Otros Tipos de Datos Básicos {#otros_tipos}

Por último, cabe señalar que existen otros tipos de datos básicos en R, como el _double_ que es un tipo numérico de doble precisión. El _complex_ para números complejos y el _raw_ para almacenar bytes.Sin embargo, no los trataremos en este curso puesto que raramente se utilizan en el análisis de datos

- Double (doble precisión)
- Complex (números complejos)
- Raw (almacenar bytes)



