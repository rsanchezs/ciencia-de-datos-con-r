---
title: "Vectores"
author: "RubÃ©n SÃ¡nchez Sancho"
date: "14 de febrero de 2017"
output:
  ioslides_presentation:
    highlight: monochrome
    widescreen: yes
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
  width : 80%;
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

## Vectores

<div class="note">

El tipo más básico de estructura de datos en R es el _vector_. El vector es una estructura 
de una dimensión y homogénea, es decir todos los elementos tienen que ser del mismo tipo.
Además, posee una longitud que nos indica el número de elementos que contiene el vector.
</div>

>- existe un último elemento
>- todos los elementos son del mismo tipo
>- tamaño fijo
  


## Creación de Vectores: __`c()`__

<div class="note">
Los vectores atómicos pueden ser creados con la función `c()`, que corresponde
a la sigla de _combinar_:  
</div>


```r
# Vector numérico
vector_double <- c(1, 2.5, 4.5)
```


```r
# Con el sufijo L, conseguimos un integer en lugar de un double
vector_integer <- c(1L, 6L, 10L)
```


```r
# Usamos TRUE y FALSE (o T y F) para crear vectores lógicos
vector_logical <- c(TRUE, FALSE, T, F)
```


```r
# Vector de caracteres
vector_character <- c("Hola", "Mundo!")
```



## Creación de Vectores: __`vector()`__

<div class="note">
También podemos utilizar la función `vector()` que crea un vector de un tipo y longitud que debemos especificar en el momento de su declaración:
</div>



```r
# Vector numérico
vector_double <- vector(mode = "double", length = 3)
```


```r
# Vector enteros
vector_integer <- vector(mode = "integer", length = 3)
```


```r
# Vector lógico
vector_logical <- vector(mode = "logical", length = 4)
```


```r
# Vector caracteres
vector_character <- vector(mode = "character", length = 2)
```



## Creación de Vectores: funciones _wrapper_

<div class="note">
Otra posibilidad es hacer uso de las funciones _wrapper_ (del inglés, envoltorio) que
existen para cada tipo de datos. Las siguientes instrucciones son equivalentes a
las anteriores:
</div>


```r
# Vector numérico
vector_double <- double(3)
```


```r
# Vector enteros
vector_integer <- integer(3)
```


```r
# Vector lógico
vector_logical <- logical(4)
```


```r
# Vector caracteres
vector_character <- character(2)
```



## Sucesiones de Números: operador  __`:`__ {.smaller}

<div class="note">
Además, mediante el operador `:` podemos generar sucesiones de números:  
</div>



```r
# Sucesión del 1 al 10
1:10
```



```r
# Sucesión decreciente del 15 al 11
15:11
```



```r
# Sucesión del 1 al 10 restandole 1
1:10 - 1
```



```r
# Sucesión del 1 al 9
1:(10 - 1)
```


## Creación de Vectores: __`seq()`__ y __`rep()`__

<div class="note">
También podemos usar las funciones `seq()` y `rep()`:  
</div>



```r
# mismo efecto que 1:10
seq(10) 
```




```r
# mismo efecto que 3:10
seq(3, 10) 
```



```r
#saltando de 3 en 3
seq(1, 10, by=3) 
```


## Creación de Vectores: __`seq()`__ y __`rep()`__



```r
#repetimos 1:4 dos veces
rep(1:4, 2)
```



```r
#repetimos 1:4 dos veces, intercalando resultado
rep(1:4, each=2) 
```


## Longitud {.smaller}

<div class="note">
Todos los vectores tienen dos propiedades:
- Un _tipo_, que se puede determinar con la función `typeof()`:
- Una _longitud_, que nos dice cuantos elementos contiene el vector. Podemos
conocer este valor mediante la función `length()`:
</div>

Todos los vectores tienen dos propiedades:

- Un _tipo_, que se puede determinar con la función `typeof()`:


```r
typeof(letters)
typeof(1:10)
```

- Una _longitud_, que nos dice cuantos elementos contiene el vector. Podemos
conocer este valor mediante la función `length()`:


```r
v <- c(1, 2, 3)
length(v)
length(c(TRUE, FALSE, NA))

```


## Tipos Fundamentales de Vectores Atómicos 

<div class="note">
Los cuatro tipos más importantes de vectores atómicos son:
</div>

Los cuatro tipos más importantes de vectores atómicos son:

> - Logical
> - Integer
> - Double (conocidos por numeric)
> - Character

## Logical

<div class="note">
Los vectores lógicos son  el tipo más simple de vector atómico puesto que sólo pueden
tomar tres posibles valores `TRUE`, `FALSE` y `NA`. Los vectores lógicos usualmente
son el resultado de expresiones con los operadores lógicos y de comparación. 
</div>

<p style="text-align:justify;">
Los vectores lógicos son  el tipo más simple de vector atómico puesto que sólo pueden
tomar tres posibles valores `TRUE`, `FALSE` y `NA`. Los vectores lógicos usualmente
son el resultado de expresiones con los operadores lógicos y de comparación. 
</p>


```r
1 : 10 %% 3 == 0
```

## Numeric

<div class="note">
Los vectores de tipo integer y double son en R vectores de tipo numeric.
En R, los números son double por defecto. Si queremos un integer, añadiremos la letra
`L` después del número:
</div>

<p style="text-align:justify;">
Los vectores de tipo integer y double son en R vectores de tipo numeric.
En R, los números son double por defecto. Si queremos un integer, añadiremos la letra
`L` después del número:
</p>


```r
typeof(1)
typeof(1L)
1.5L
```

## Character 

<div class="note">
Los vectores de tipo character son aquellos en los que cada elemento del vector es un 
_string_ (cadena de caracteres):
</div>

<p style="text-align:justify;">
Los vectores de tipo character son aquellos en los que cada elemento del vector es un 
_string_ (cadena de caracteres):
</p>


```r
titulo <- "Ciencia de datos en R"
```


## Funciones para Comprobar el tipo

<div class="note">
En ocasiones queremos realizar diferentes cosas basadas en el tipo de vector. Una 
opción es usar la función `typeof()`. Otra es usar las funciones que realizan la
comprobación de tipo y devuelven `TRUE` o `FALSE` o, de forma más general mediante `is.atomic()`:
</div>


```r
# Definimos un vector de enteros
vector_integer <- c(1L, 2L, 3L)
```


```r
# Comprobamos su tipo mediante `typeof()`
typeof(vector_integer)
```



```r
# Las funciones *.is() realizan la comprobación 
# y develven TRUE o FALSE
is.integer(vector_integer)
```


```r
# De forma más general mediante `is.atomic()`
is.atomic(vector_integer)
```

## Funciones para Comprobar el tipo | Funciones comprobación de tipos

|  | logical | integer | double | character | list |
| :--- | :---: | :---: | :---: | :---: | :---: |
| **is.logical\(\)** | X |  |  |  |  |
| **is.integer\(\)** |  | X |  |  |  |
| **is.double\(\)** |  |  | X |  |  |
| **is.numeric\(\)** |  | X | X |  |  |
| **is.character\(\)** |  |  |  | X |  |
| **is.atomic\(\)** | X | X | X | X |  |
| **is.list\(\)** |  |  |  |  | X |
| **is.vector\(\)** | X | X | X | X | X |




## Coerción

<div class="note">
(1)Todos los elementos de un vector deben ser del mismo tipo, así pues cuando intentemos
combinar diferentes tipos estos serán convertidos al tipo más flexible. El orden es el
siguiente:
(2)Por ejemplo, mezclar un character y un integer producirá un character:
</div>

- Convertidos al tipo más flexible

    > logical < integer < double < character
    



```r
v <- c("a", 1)
v
typeof(v)
class(v)

```

## Coerción

<div class="note">
Cuando un vector lógico es convertido a un integer o double, `TRUE` es cambiado a
1 y `FALSE` a 0:  
</div>

Cuando un vector lógico es convertido a un integer o double, `TRUE` es cambiado a
1 y `FALSE` a 0:


```r
v <- c(FALSE, FALSE, FALSE, TRUE, TRUE)
as.numeric(v)
```

## Nombres de los Elementos

<div class="note">
Una gran característica de los vectores en R es que podemos asignar a cada elemento un
nombre. Etiquetar los elementos hace nuestro código mas legible. Podemos especificar
los nombres cuando creamos un vector con la forma `nombre = valor`: 
</div>

Podemos especificar los nombres cuando creamos un vector con la forma `nombre = valor`: 


```r
c(manzana = 1, platano = 2, kiwi = 3)
```

## Nombres de los Elementos

<div class="note">
Podemos añadir nombres a los elementos de un vector después de su creación con la 
ayuda de la función `names()`:
</div>

Podemos añadir nombres a los elementos de un vector después de su creación con la 
ayuda de la función `names()`:


```r
frutas <- 1:4
names(frutas) <- c("manzana", "platano", "kiwi")
frutas
```

## Nombres de los Elementos

<div class="note">
Gracias a la función `names()` podemos conocer los nombres de un vector:
</div>

- Mediante __`names()`__ podemos conocer los nombres de un vector:


```r
names(frutas)
```

- Si un vector no tiene nombres, la función `names()` devuelve `NULL`:


```r
names(1:4)
```


## Operaciones Vectorizadas

<div class="note">
La mayoría de las operaciones en R son _vectorizadas_, esto es que un operador o una
función actúa en cada elemento de un vector sin la necesidad de que tengamos
que escribir una construcción iterativa. Esta característica nos permite escribir un código más eficiente, conciso y mas legible que en otros lenguajes de programación.
El ejemplo mas simple es cuando sumamos dos vectores:

</div>


```r
v1 <- 1:4
v2 <- 5:8
v3<- v1 + v2
v3
```



## Operaciones Vectorizadas

<div class="note">
Cuando usamos dos o mas vectores en una operación, R alineará los vectores y llevará
a cabo una secuencia de operaciones individuales. En el ejemplo , cuando 
ejecutamos la instrucción `v1 + v2`, R pondrá cada vector en una fila y sumará el 
primer elemento de `v1`con el primer elemento de `v2`. A continuación, sumará el 
segundo elemento del vector 1 con el segundo elemento del vector 2, y así sucesivamente,
hasta que todos los elementos se han sumado. El resultado será un vector de la misma
longitud que los anteriores.
</div>



```r
v1 <- 1:4
v2 <- 5:8
v3<- v1 + v2
v3
```


## Operaciones Vectorizadas

<div class="note">
Sin la vectorización tendríamos que realizar la suma mediante el uso de una estructura
iterativa, como por ejemplo:
</div>

Sin la vectorización tendríamos que realizar la suma mediante el uso de una estructura
iterativa:


```r
v3 <- numeric(length(v1))
for(i in seq_along(v1)) {
  v3[i] <- v1[i] + v2[i]
}
v3
```

## Operaciones Vectorizadas {.smaller}

Otro tipo de operaciones que podemos realizar de forma vectorizada son las comparaciones
lógicas:

<div class="note">
Otro tipo de operaciones que podemos realizar de forma vectorizada son las comparaciones
lógicas. Supongamos que queremos saber que elementos en un vector son mas grandes que 2.
Podríamos hacer lo siguiente:
</div>



```r
# todos los elementos mayor que 2
v1 <- 1:4
v1 > 2
```


```r
# todos los elementos mayor o igual que 2
v1 >= 2
```


```r
# todos los elementos menores que 3
v2 < 3
```


```r
# todos los elementos igual que 8
v3 == 8
```


## Reciclado de Vectores y Repetición

<div class="note">
En los ejemplos anteriores hemos realizado operaciones aritméticas con vectores
de la misma longitud. No obstante podríamos estar preguntándonos, "¿Qué sucede si
intentamos realizar operaciones en vectores de diferente longitud?". Nos podemos 
encontrar dos situaciones:
</div>

¿Qué sucede si intentamos realizar operaciones en vectores de diferente longitud?

> - Operación de un escalar con un vector
> - Operaciones con vectores de diferente longitud


## Operación de un escalar con un vector

<div class="note">
Si intentamos realizar la suma de un único número (escalar) a un vector, entonces el número
es sumado a cada elemento en el vector:
</div>

Si intentamos realizar la suma de un único número (escalar) a un vector, entonces el número
es sumado a cada elemento en el vector:


```r
1:5 + 1
```


## Operaciones vectores de diferente longitud

<div class="note">
 Cuando sumamos dos vectores de diferente longitud, R reciclará los elementos del vector 
más pequeño para que coincida con el más grande:
</div>

Cuando sumamos dos vectores de diferente longitud, R reciclará los elementos del vector 
más pequeño para que coincida con el más grande:


```r
1:2 + 1:4
```



## Operaciones vectores de diferente longitud

<div class="note">
Si la longitud del vector más grande no es múltiple con la longitud del vector más
pequeño, R nos lo hará saber mediante un mensaje:
</div>

Si la longitud del vector más grande no es múltiple con la longitud del vector más
pequeño, R nos lo hará saber mediante un mensaje:


```r
1:5 + 1:7
```

## Operaciones vectores de diferente longitud

<div class="note">
Aunque R nos permita realizar operaciones con vectores de diferente longitud, esto
no significa que nosotros deberíamos hacerlo. Realizar una suma de un valor escalar
a un vector es coherente, pero realizar operaciones con vectores de diferente 
longitud puede llevarnos a errores. Es por eso, que recomendamos crear explícitamente
vectores de la misma longitud antes de operar con ellos.
</div>

La función __`rep()`__ es muy útil para esta tarea, permitiéndonos crear un vector con 
elementos repetidos:


```r
# Creamos una sucesión del 1 al 5 que se repite tres veces
rep(1:5, 3)
```


```r
# Creamos una sucesion del 1 al 5 en que cada elemento se 
# repite tres veces
rep(1:5, each = 3)
```


```r
# Creamos una sucesion del 1 al 5 en el que los elementos
# se repiten de 1 a 5 veces
rep(1:5, times = 1:5)

```

## Selección de Elementos: __`[]`__

<div class="note">
En ocasiones queremos acceder a una única parte de un vector, o quizá a un único
elemento. Esto es conocido como _indexing_ (del inglés, indexación) y se realiza
mediante el uso de los corchetes `[]`. Existen tres maneras diferentes de acceder a
una parte de un vector:
</div>

> - Mediante un vector numérico de tipo integer
> - Por medio de un vector lógico
> - Con un vector de tipo character

## Mediante un vector númerico de tipo integer

<div class="note">
(1)Seleccionar los elementos con integers positivos extrae los elementos de las posiciones indicadas:
</div>

Los integers deben ser todos positivos, todos negativos, o cero.

Seleccionar los elementos con integers positivos extrae los elementos de las posiciones indicadas:
  

```r
v <- c("uno", "dos", "tres", "cuatro", "cinco")
v[c(3, 2, 5)]
```

## Mediante un vector númerico de tipo integer

<div class="note">
(2)Repitiendo una posición, podemos obtener un vector de una longitud más grande que
</div>


Repitiendo una posición, podemos obtener un vector de una longitud más grande que
el vector original:
  
  

```r
v <- c("uno", "dos", "tres", "cuatro", "cinco")
v[c(1, 1, 5, 5, 5, 2)]
```

## Mediante un vector númerico de tipo integer

<div class="note">
(3)Los valores negativos eliminan los elementos en las posiciones especificadas:
</div>

  
Los valores negativos eliminan los elementos en las posiciones especificadas:
  
    

```r
v <- c("uno", "dos", "tres", "cuatro", "cinco")
v[c(-1, -3, -5)]
```


## Mediante un vector lógico

<div class="note">
Por medio de un vector lógico obtenemos todos los valores correspondientes
al valor `TRUE`. Este tipo es útil en conjunción con la funciones de comparación:
</div>

Por medio de un vector lógico obtenemos todos los valores correspondientes
al valor `TRUE`. Este tipo es útil en conjunción con la funciones de comparación:


```r
v <- c(10, 3, NA, 5, 8, 1, NA)
# Devuelve todos los valores que no son NA en x
v[!is.na(v)]
```


```r
# Todos los valores pares (o desconocidos) en x
v[v %% 2 == 0]
```

## Mediante un vector de tipo character

<div class="note">
Si hemos dado nombres a los elementos de nuestro vector, podemos seleccionar
sus elementos con un vector de tipo character:
</div>

Si hemos dado nombres a los elementos de nuestro vector, podemos seleccionar
sus elementos con un vector de tipo character:


```r
frutas <- c(manzana = 1, platano= 2, kiwi=3, pera=4, naranja=5)
frutas[c("platano", "naranja")]
```

## Resumen

- Los vectores tienen una longitud que podemos conocer o definir mediante la función
__`length()`__.
- La función __`seq()`__ y sus variantes nos permite crear sucesiones de números.
- Podemos dar nombre a los elementos de un vector en el momento de su creación o
una vez creado mediante la función __`names()`__.
- La función __`rep()`__ nos permite crear vectores con elementos repetidos.
- Podemos acceder a los elementos de un vector mediante los __`[]`__ y un índice.


