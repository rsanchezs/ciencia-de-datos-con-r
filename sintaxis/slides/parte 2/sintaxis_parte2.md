---
title: "Sintaxis R - parte 2"
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

## Coerción 


__Definición:__ 


<p style="text-align:justify;">
Característica de los lenguajes de programación que permite, implícita o 
explícitamente, convertir un elemento de un tipo de datos en otro, sin tener
en cuenta la comprobación de tipos.
</p>



## Coerción Implícita

<div class="note">
  Cuando llamamos a una función con un argumento de un tipo erróneo, R intentará convertir los elementos de un tipo de datos en otro, sin tener en cuenta la comprobación de tipos. Por ejemplo, supongamos que definimos un vector __v__ como en el ejemplo:
</div>


__Ejemplo:__



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



## Coerción Implícita 

<div class="note">
  Si cambiamos el segundo elemento del vector con la palabra "coercion". R cambiará la clase del objeto y todos los elementos del vector a __character__ como podemos ver a continuación.
  
__Ejemplo:__
 
</div>


```r
v <- c(1, 2, 3, 4, 5)
v
## [1] 1 2 3 4 5
```


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


## Coerción Implícita

<div class="note">
   Cuando un vector lógico es convertido a un integer o double, `TRUE` es cambiado a
1 y `FALSE` a 0.
</div>



```r
v <- c(FALSE, TRUE, FALSE)
```


```r
typeof(v)
## [1] "logical"
```


```r
class(v)
## [1] "logical"
```


```r
as.numeric(v)
## [1] 0 1 0
```

## Resumen Reglas Coerción Implícita


- Los valores lógicos son transformados a números: __TRUE__ será cambiado a __1__ y __FALSE__ a __O__.
- Los valores son convertidos al tipo más simple.
- El orden es: __logical__ < __integer__ < __numeric__ < __complex__ < __character__ < __list__.
- Los objetos de tipo __raw__ no son convertidos a otros tipos.
- Los atributos de los objetos son borrados cuando un objeto es cambiado de un tipo a otro.

## Coerción Explícita 

<div class="note">
  Los objetos pueden ser convertidos en otro tipo de foma explícita mediante el uso de la función `as.*`
  En el ejemplo, primero creamos un vector de tipo numérico y comprobamos su tipo
  mediante la función `class`. A continuación mediante la función `as.logical()`
  lo convertimos a tipo __logical__. Por último, con `as.character()` cambiamos     el vector al tipo  __character__.
</div>

Los objetos pueden ser convertidos en otro tipo de foma explícita mediante el uso
de la función __as.*__

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

## Coerción Explícita

<div class="note">
En ocasiones, la conversión no puede ser llevada a cabo, en este caso R devuelve _NA_.
En el primer ejemplo, creamos un vector de tipo __character__ e intentamos cambiar el tipo a __numeric__, 
pero como no es posible Rnos lo indica mediante un mensaje de error y cambia los elementos del vector 
a tipo __NA__. En el segundo ejemplo sucede lo mismo, puesto que no es coherente cambiar del tipo __character__ al tipo __logical__.
  
</div>

En ocasiones, la conversión no puede ser llevada a cabo, en este caso R devuelve _NA_.


```r
v <- c("a", "b", "c")
as.numeric(v)
```

```
## Warning: NAs introduced by coercion
```

```
## [1] NA NA NA
```


```r
as.logical(v)
```

```
## [1] NA NA NA
```


## Resumen


<div class="note">
  En resumen, la mayoría de las funciones producen un error cuando el tipo de datos que esperan no coincide con los que pasamos como argumentos. En esta situación tenemos dos posibilidades:
</div>


> - Comprobar el tipo de datos utilizando las funciones __`is.*()`__, que nos responden con un valor lógico.
> - Forzar el tipo de datos deseados coercionando, para lo cual podemos utilizar funciones del tipo __`as.*()`__, que fuerzan el tipo de datos.


## Resumen

Podemos ver una lista completa de todas las funciones __`is.()`__ en el paquete __`base`__ mediante:


```r
ls(pattern = "^is", baseenv())
```


Asimismo, para obtener las funciones __`as.*()`__ podemos hacerlo mediante la siguiente instrucción:


```r
ls(pattern = "^as", baseenv())
```


## Valores especiales {.build}


<div class = "note">
Para ayudarnos con los cálculos aritméticos R, soporta cuatro valores numéricos especiales. (1)Los dos primeros, son la forma positiva y negativa para valores infinitos. (2)El segundo (abreviación del inglés, "not-a-number") significa que nuestro cálculo o no tiene sentido matemático o que podría no haberse realizado correctamente. (3)El último,(abreviación del inglés, "not available" aveilebol) representa un valor desconocido.

</div>

> - Inf ($\infty$) y -Inf ($-\infty$)
> - NaN
> - Na

## Inf y -Inf 

<div class="note">
  Si una computación resulta en un número que es demasiado grande, R devolverá __Inf__ para un numero positivo y __-Inf__ para un número negativo (es decir un valor infinito positivo y infinito negativo, respectivamente). Otro ejemplo es, cuando hacemos la división entre 0:
</div>

- Inf representa $\infty$ 
- -Inf representa $-\infty$ 


```r
2 ^ 1024
```

```
## [1] Inf
```


```r
- 2 ^ 1024
```

```
## [1] -Inf
```


```r
1 / 0
```

```
## [1] Inf
```


## NaN 

<div class="note">
  En ocasiones, una computación producirá un resultado que no tiene sentido. En estos casos, R devolverá __NaN__ (del inglés, "not a number"):
</div>

- R devolverá __NaN__ en resultados sin sentido


```r
Inf - Inf
```

```
## [1] NaN
```


```r
0 / 0
```

```
## [1] NaN
```


## NA 

<div class="note">
  En R, los valores __NA__ son usados para representar valores desconocidos. (NA es la abreviación "not available").
 (1)A modo de ejemplo, si el vector `peso` recoge los pesos de 5 personas, habiéndose perdido el cuarto valor
 (2)y pretendemos calcular el peso medio, obtendremos como resultado un valor perdido:
 (3)Si, en cualquier caso, deseamos calcular la media de los pesos efectivamente disponibles,
utilizaríamos la opción de _eliminar valores perdidos_ .
</div>

- Usado para representar valores desconocidos


```r
peso <- c(77, 68, 85, NA, 73)
```


```r
mean(peso)
```

```
## [1] NA
```



```r
mean(peso, na.rm = TRUE)
```

```
## [1] 75.75
```

## Guía de estilo R

<div class="columns-2">
![](http://i.imgur.com/DeEFsKs.jpg)

__Guía Estilo de Hadley Wickham__

</div>


<div class = "note">
Los estándares para el estilo en el código no son lo mismo que la sintaxis del lenguaje, aunque están estrechamente relacionados. Es importante adoptar un buen estilo para maximizar la legibilidad de nuestro código para que su mantenimiento sea más fácil tanto para nosotros como otros programadores.

En este curso, hemos adoptado la __Guía Estilo de Hadley Wickham__ que incluye en su libro __Advanced R__ y que está basada en la __Guía Estilo R de Google__. A continuación os mostraré un resumen de sus sugerencias:
</div>

## Nombres de los archivos


<div class="note">
  En los nombres de los archivos debemos usar nombres descriptivos, no tienen que incluir caracteres especiales (tildes, eñes) y asegurarse que su extensión es "__.R__"
</div>

- usar nombres descriptivos
- no usar tildes y eñes
- extensión (*.R)


```r
# Bien
regresion_lineal.R
lectura_datos.R
```



```r
# Mal
regresión_lineal.R
versiondellunes.R
```


## Nombres de los objetos

<div class="note">
  Los nombres de los objetos y funciones deben ser en minúscula y hemos de separar con guión bajo (_) aquellos nombres compuestos de varias palabras. Wickham recomienda usar sustantivos para los nombres de los objetos y verbos para las funciones. Para la comunidad hispanohablante recomendamos no utilizar tildes y eñes en los nombres de los objetos.
</div>


- usar __snake_case__
- sustantivos para los objetos
- verbos para las funciones


```r
# Bien
primer_cuartil
cuartil_1
```



```r
# Mal
CuartilUno
C1
está_en_el_primer_cuartil
```


## Espacios {.smaller}

<div class="note">
  Antes y después de todos los operadores infijos (=, +, <-, etc) hay que colocar un espacio. Además, no hay que dejar espacios después de una coma, pero una coma siempre es seguida de un espacio.
</div>

<div class="columns-2">


```r
# Bien
hipotenusa <- sqrt( a ^ 2 + b ^ 2)
```


```r
# Bien
v <- c(1, 2, 3)
```


```r
# Mal
hipotenusa<-sqrt(a^2+b^2)
```


```r
# Mal
v <- c(1,2,3)
```



</div>


## Espacios {.vflexbox .vcenter}

<div class="note">
  La excepción a esta regla es cuando usamos el operador de secuencia
</div>

<div class="columns-2">


```r
# Bien
vector <- 1:10
```



```r
# Mal
vector <- 1 : 10
```

</div>

## Espacios

<div class="note">
  Antes del paréntesis izquierdo va un espacio, a no ser que estemos llamando a una función.
</div>

<div class="columns-2">

```r
# Bien
if (1 > 2) "mayor" else "menor"
```


```r
# Bien
mean(1:10)
```



```r
# Mal
if(1 > 2) "mayor" else "menor"
```



```r
# Mal
mean (1:10)
```
</div>

## Punto y coma 

<div class="note">
  Se recomienda no usar punto y coma en nuestras expresiones. 
</div>

<div class="columns-2">


```r
# Bien
x <- 1
y <- 2
z <- 3
```


```r
# Mal
x <- 1; y <- 2; z <- 3
```


</div>



## Llaves

<div class="note">
  Abrir una llave nunca debería ocurrir en su propia linea y siempre se sigue con una linea nueva. La llave que cierra siempre tiene que ir su propia linea, a menos que se trate de la clausula `else`. 
</div>

<div class="columns-2">

```r
# Bien
if (1 < 2) {
  "mayor"
  } else {
  "menor"
}

if (x == 0) {
  "cero"
}
```


```r
# Mal 
if (1 < 2) 
{
"mayor"
} 
else {
"menor" }


if (x == 0) 
"cero"
```
</div>


## LLaves

<div class="note">
Siempre usaremos llaves aunque el cuerpo de la estructura de control contenga sólo una instrucción.
Dentro de las llaves utilizaremos sangrado para indicar que se trata de un bloque de instrucciones.
</div>


<div class="columns-2">

```r
# Bien
if (x == 0) {
  "cero"
}
```


```r
# Mal 
if (x == 0) 
"cero"
```

## Longitud de lineas

<div class="note">
  Wickham sugiere  limitar nuestro código a una longitud de 80 caracteres por linea. 
</div>

<div class="columns-2">


- Un máximo de 80 caracteres

- En RStudio podemos activarlo en:
__Tools -> Global Options -> Code -> Display__


![](http://i.imgur.com/cPetVB9.png)

</div>

 
## Sangría

<div class="note">
  Respecto a la sangría en nuestro código se sugiere usar dos espacios para añadir sangría a nuestro código y nunca la tecla
`TAB`. En el caso que usemos RStudio podemos configurar la tecla `TAB` para que utilice dos espacios en:
</div>

<div class="columns-2">

En RStudio podemos configurarlo en:

__Tools -> Global Options -> Code -> Editing__

![](http://i.imgur.com/Cr0ppy2.png)


</div>


## Asignación

<div class="note">
  En la instrucción de asignación se aconseja el uso del operador `<-` en lugar de
`=`, reservando este último para declarar argumentos dentro de las funciones.
</div>

- utilizar __<-__ en lugar de __=__

<div class="columns-2">

```r
# Bien
x <- 2
```


```r
# Mal
x = 2
```
</div>


## Comentarios

<div class="note">
Se recomienda documentar el código mediante el uso de comentarios. Cada linea debe comenzar con el signo almohadilla `(#)` seguido de un espacio en blanco. Los comentarios deben explicar el porqué, y no el qué.

Para separa y estructurar el código en bloques es común el uso de más de una almohadilla `#`. RStudio ofrece las características de _Code Folding y Sections_ que nos permite mostrar y ocultar bloques de código permitiendo una navegación más fácil en nuestros archivos.
</div>

<div class="columns-2">

- Utilizaremos la # para comentarios
- RStudio ofrece la característica de __Code Folding y Sections__

![](http://i.imgur.com/ouGkSdI.png)

</div>



















