---
title: "Estructuras condicionales"
author: "Rubén Sánchez Sancho"
date: "25 de Septiembre de 2017"
output: 
  ioslides_presentation:
    fig_width: 8
    fig_height: 3
logo: ./logo.png
highlight: TRUE
incremental: TRUE
widescreen : TRUE
---
<style>
h2 { 
   font-size: 36px; 
   line-height: 65px; 
   letter-spacing: -2px; 
   color: #FFFFFF;
} 
</style>

<style>
h3 {
  font-size: 30px;
  letter-spacing: -1px;
  line-height: 2;
  font-weight: inherit;
  color: #797979;
  padding: 0px;
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
slides > slide {
  font-size: 22px;
  padding: 40px 60px 50px 100px;
}
</style>

<style>
pre {
  width : 90%;
  padding: 10px 15px 10px 15px;
  left: 0px;
  background-color: #2A3137;
}
</style>

<!-- <style> -->
<!-- pre { -->
<!--   width : 100%; -->
<!--   padding: 10px 15px 10px 15px; -->
<!--   left: 0px; -->
<!--   background-color: #7E7E7E; -->
<!--   color:white; -->
<!-- } -->
</style>

<style>
code {
  font-size: 95%;
  font-family: 'Source Code Pro', 'Courier New', monospace;
  color: white;

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

<style>
table.rmdtable {
  width: 15%;
  border-collapse: -moz-initial;
  border-collapse: initial;
  border-spacing: 2px;
  border-bottom: 1px solid #797979;
}
</style>

<style>
table.rmdtable tr > td:first-child, table th {
  font-weight: 600;
  color: #515151;
}
</style>

<style>
table.rmdtable td, table th {
  font-size: 14px;
  padding: 1em 0.5em;
}
</style>





## if y else

La instrucción __`if`__ toma un valor lógico (en realidad, un vector lógico de longitud uno)
y ejecuta la siguiente instrucción sólo si el valor es __`TRUE`__:


```r
n <- 2
if (n %% 2 == 0) {
  message("Es verdadero, se ejecutara la instruccion",
          " porque el numero ", n, " es par")
}
```


## if y else

La instrucción __`if`__ toma un valor lógico (en realidad, un vector lógico de longitud uno)
y ejecuta la siguiente instrucción sólo si el valor es __`TRUE`__:



```r
n <- 3
if (n %% 2 == 0) {
  message("Es falso, no se ejecutara la instruccion.")
}  
```


## Valores NA en la condición lógica en if

En el caso que pasemos valores desconocidos (__`NA`__) a __`if`__, R lanzará un error:


```r
if (NA) {
  message("Los valores desconocidos lanzan un error")
}
```


## Valores NA en la condición lógica en if


Si nos encontramos ante esta situación, deberíamos comprobarlo mediante la función __`is.na()`__:


```r
if (is.na(NA)) {
  message("El valor es desconocido.")
}  
```



## La cláusula else

El código de `if` se ejecuta sólo si la condición es `TRUE`:


```r
n <- 2

if (n %% 2 == 0) {
  message(n, " es par")
} else {
  message(n, " es impar")
}
```

## La cláusula else

El código después de un `else` se ejecuta sólo si la condición en `if` es `FALSE`:


```r
n <- 3

if (n %% 2 == 0) {
  message(n, " es par")
} else {
  message(n, " es impar")
}
```




## Múltiples Condiciones | `if-else` anidados

__Ejemplo:__


```r
# Creamos una muestra de 20 observaciones del 1 al 100 en
# el que se pueden repetir hasta 2 observaciones
(muestra <- sample(1:100, 20, 2))
```


```r
## Creamos una variable indicando la medida de tendencia central
## que queremos calcular
centralizacion <- "moda"
```


## Múltiples Condiciones | `if-else` anidados {.smaller}





__Ejemplo:__


```r
## Algoritmo para calcular la tendencia central que deseamos
if (centralizacion == "media") {
   media = mean(muestra)
   message("La media es ", as.character(media))
} else if (centralizacion == "mediana") {
   mediana = median(muestra)
   message("La mediana es ", as.character(mediana))
} else if (centralizacion == "moda") {
   moda = mlv(muestra, type="mfv")
   print(moda)
   plot.mlv(moda)
} else {
  message("Este algoritmo sola calcula la media,
          mediana, moda")
}
```


## Múltiples Condiciones | `if-else` anidados {.smaller}



```
## Error in eval(expr, envir, enclos): object 'centralizacion' not found
```

## If Vectorizado | Con la función __`ifelse`__







```r
if (condicion) {
  "hacer algo"
} else {
  "hacer algo diferente"
}
```

```{}
RECUERDA: La instrucción estándar acepta en la condición lógica un 
único valor lógico. 
```




## If Vectorizado | Con la función __`ifelse`__



```r
if (c(TRUE, FALSE)) {
  message("dos condiciones")
}
```






## If Vectorizado | Con la función __`ifelse`__ {.build}

__Uso__


```r
str(ifelse)
```


__Argumentos__

```{}
test: un objeto que pueda ser coercionado a un tipo lógico
yes:  devuelve los valores `TRUE` en los elementos de `test`
no:   devuelve los valores `FALSE` de `test` 
```


## If Vectorizado | Con la función __`ifelse`__

Ejemplo:


```r
ifelse(rbinom(n = 10, size = 1, prob = 0.5), "cara", "cruz")
```


## Selección Múltiple con `swith()` {.build}

__Uso__


```r
str(switch)
```



__Argumentos__

```{}
EXPR:  una expresión que evalua un string
... :  una lista con alternativas. Estas alternativas se les dará nombre, 
excepto a aquella que sea usada como valor por defecto.
```


## Selección Múltiple con `swith()` {.smaller}






```r
# Creamos una muestra de 20 observaciones del 1 al 100 en
# el que se pueden repetir hasta 5
muestra <- sample(1:100, 20, 5)

#Calculamos la media de la muestra
(switch(
  "moda",
  media = mean(muestra),
  mediana = median(muestra),
  moda = mlv(muestra, method = "mfv")
  ))
```

## Selección Múltiple con `swith()`

Si ningún nombre coincide, entonces `switch` devuelve `NULL`:


```r
# Intentamos calcular la desviación típica
(switch(
  "desviacion_tipica",
  media = mean(x),
  mediana = median(x),
  moda = mlv(x, method = "mfv")
  ))
```

## Selección Múltiple con `swith()`

Podemos proporcionar un valor por defecto:


```r
# Intentamos calcular la desviación típica
(switch(
  "desviacion_tipica",
  media = mean(x),
  mediana = median(x),
  moda = mlv(x, method = "mfv"),
  "Solo se puede calcular la media, mediana y moda"
  ))
```





