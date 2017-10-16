


# Data frames

Los _data frames_ se utilizan en R para almacenar datos en forma de hoja de datos. 
Cada fila de la hoja de datos corresponde a una observación o valor de una instancia,
mientras que cada columna corresponde a un vector que contiene los datos de una variable. 


Como podemos observar en el ejemplo, cada observación, indicado en la primera columna con un 
número, tiene ciertas características que son representadas en las tres columnas restantes.
Cada columna consiste de valores del mismo tipo, puesto que se corresponden a vectores: 
es por eso, que la columna `breaks` contiene valores de tipo `double`, mientras que las 
columnas `wool`y `tension` contienen caracteres que son almacenados como `factor`.



```r
> head(warpbreaks)
```

```
  breaks wool tension
1     26    A       L
2     30    A       L
3     54    A       L
4     25    A       L
5     70    A       L
6     52    A       L
```

La estructura de un `data.frame` es muy similar a la de una matriz. La diferencia es que
las filas de un `data.frame` pueden contener valores de diferentes tipos de datos. 
 
Los `data.frame` también tienen similitud con las listas, puesto que son básicamente colecciones
de elementos. Sin embargo, el `data.frame` es una lista que únicamente contiene vectores de
la misma longitud. Por lo tanto, podemos considerarlo un tipo especial de lista y en el 
podemos acceder a sus elementos del mismo modo que lo hacemos en las matrices o las listas.


## Creación de un Data Frame {#creacion-de-un-data-frame}

Podemos crear data frames con la función `data.frame()`:


```r
> # Creamos vectores con los valores
> nombre <- c("Juan", "Margarita", "Ruben", "Daniel")
> apellido <- c("Sanchez", "Garcia", "Sancho", "Alfara")
> fecha_nacimiento <- c("1976-06-14", "1974-05-07", "1958-12-25", "1983-09-19")
> sexo <- c("HOMBRE", "MUJER", "HOMBRE", "HOMBRE")
> nro_hijos <- c(1, 2, 3, 4)
```


```r
> # Creamos un dataframe con la ayuda de data.frame()
> censo <- data.frame(nombre, apellido, fecha_nacimiento, sexo, nro_hijos)
> censo
```

```
     nombre apellido fecha_nacimiento   sexo nro_hijos
1      Juan  Sanchez       1976-06-14 HOMBRE         1
2 Margarita   Garcia       1974-05-07  MUJER         2
3     Ruben   Sancho       1958-12-25 HOMBRE         3
4    Daniel   Alfara       1983-09-19 HOMBRE         4
```


__Recordemos__ que los data frames requieren que las variables sean de la 
misma longitud. Por este motivo, tenemos que asegurarnos que el número de
argumentos pasados a la función `c()` sea el mismo. Además, debemos 
asegurarnos que las cadenas de caracteres están entre `""`.

Además, observemos que cuando hacemos uso de la función `data.frame()`, las variables
de tipo `character` son importadas como variables categóricas, que en R son representadas
como `factor`.

Si estamos interesados en inspeccionar las primeras o últimas líneas, 
podemos hacer uso de las funciones `head()` y `tail()`, respectivamente:


```r
> head(censo)
```

```
     nombre apellido fecha_nacimiento   sexo nro_hijos
1      Juan  Sanchez       1976-06-14 HOMBRE         1
2 Margarita   Garcia       1974-05-07  MUJER         2
3     Ruben   Sancho       1958-12-25 HOMBRE         3
4    Daniel   Alfara       1983-09-19 HOMBRE         4
```


Por otro lado, podemos usar la función `str()` para conocer la estructura del data frame:


```r
> str(censo)
```

```
'data.frame':	4 obs. of  5 variables:
 $ nombre          : Factor w/ 4 levels "Daniel","Juan",..: 2 3 4 1
 $ apellido        : Factor w/ 4 levels "Alfara","Garcia",..: 3 2 4 1
 $ fecha_nacimiento: Factor w/ 4 levels "1958-12-25","1974-05-07",..: 3 2 1 4
 $ sexo            : Factor w/ 2 levels "HOMBRE","MUJER": 1 2 1 1
 $ nro_hijos       : num  1 2 3 4
```


Como podemos observar, las variables `nombre`, `apellido`, `fecha_nacimiento` y `sexo` de `censo`
son tratadas como factors. Para evitar este comportamiento podemos hacer lo siguiente:

- Para las variables `nombre` y `apellido` podemos hacer uso de la función `I()` en la definición
de los vectores para que las variables no sean tratadas como `factor`. Esta función inhibe la 
interpretación de sus argumentos.

- La variable `sexo` podemos dejarla como `factor`, puesto que se trata de una cantidad limitada de posibles
valores.

- Para que la variable `fecha_nacimiento` sea registrada como fecha, podemos hacer uso de la función
`as.Date()`:


```r
> # Creamos vectores con los valores y el tipo de dato deseado
> nombre <- I(c("Juan", "Margarita", "Ruben", "Daniel"))
> apellido <- I(c("Sanchez", "Garcia", "Sancho", "Alfara"))
> fecha_nacimiento <- as.Date(c("1976-06-14", "1974-05-07", "1958-12-25", "1983-09-19"))
> sexo <- c("HOMBRE", "MUJER", "HOMBRE", "HOMBRE")
> nro_hijos <- c(1, 2, 3, 4)
```


```r
> # Creamos un dataframe con la ayuda de data.frame()
> censo <- data.frame(nombre, apellido, fecha_nacimiento, sexo, nro_hijos)
> str(censo)
```

```
'data.frame':	4 obs. of  5 variables:
 $ nombre          :Class 'AsIs'  chr [1:4] "Juan" "Margarita" "Ruben" "Daniel"
 $ apellido        :Class 'AsIs'  chr [1:4] "Sanchez" "Garcia" "Sancho" "Alfara"
 $ fecha_nacimiento: Date, format: "1976-06-14" "1974-05-07" ...
 $ sexo            : Factor w/ 2 levels "HOMBRE","MUJER": 1 2 1 1
 $ nro_hijos       : num  1 2 3 4
```

## Filas, Columnas y Dimensión {#filas-columnas-y-dimension}

Como las matrices, el `data.frame` dispone del atributo dimensión determinado por el
número de filas y columnas. Para comprobar el número de filas y columnas de `censo`,
podemos hacer uso de la función `dim()`:


```r
> # Devuelve el número de filas y columnas
> dim(censo)
```

```
[1] 4 5
```

```r
> # Recupera el número de filas
> dim(censo)[1]
```

```
[1] 4
```

```r
> # Recupera el número de columnas
> dim(censo)[2]
```

```
[1] 5
```

También podemos recuperar el número de filas y columnas en `censo` con la ayuda 
de las funciones `nrow()` y `ncol()`:


```r
> # Usamos `nrow()`para recuperar el número de filas
> nrow(censo)
```

```
[1] 4
```

```r
> # Usamos `ncol()` para recuperar el número de columnas
> ncol(censo)
```

```
[1] 5
```

```r
> # Usamos `length()`para recuperar el número de columnas
> length(censo)
```

```
[1] 5
```

Observemos que, puesto que la estructura de un `data.frame` es similar a una lista, podemos
hacer uso de la función `length()` para recuperar el número de columnas. No obstante, para
que nuestro código sea comprensible, recomendamos evitar el uso de esta función  y en su
lugar utilizar la función `ncol()`.




## Nombre de las Filas y Columnas {#nombres-de-las-filas-y-columnas}

Los data frames también cuentan con el atributo `names`, que nos indica los nombres de 
las variables que hemos definido. En otras palabras, podemos ver y establecer una 
cabecera.


```r
> # Listamos los nombres de las variables (cabecera)
> names(censo)
```

```
[1] "nombre"           "apellido"         "fecha_nacimiento"
[4] "sexo"             "nro_hijos"       
```

Para cambiar los nombres, podemos hacer uso de la función `names()`:


```r
> # Asignamos diferentes nombres a las columas de `censo`
> names(censo) <- c("Nombre", "Apellido", "Fecha_Nacimiento", "Sexo", "Numero_Hijos")
> names(censo)
```

```
[1] "Nombre"           "Apellido"         "Fecha_Nacimiento"
[4] "Sexo"             "Numero_Hijos"    
```


También podemos cambiar los nombres de las filas y columnas con la ayuda de las 
funciones `rownames()` y `colnames()`, respectivamente:


```r
> # Asignamos diferentes nombres a las columnas de `censo`
> colnames(censo) <- c("Nombre", "Apellido", "Fecha_Nacimiento", "Sexo", "Numero_Hijos")
> rownames(censo) <- c("ID1", "ID2", "ID3", "ID4")
> censo
```

```
       Nombre Apellido Fecha_Nacimiento   Sexo Numero_Hijos
ID1      Juan  Sanchez       1976-06-14 HOMBRE            1
ID2 Margarita   Garcia       1974-05-07  MUJER            2
ID3     Ruben   Sancho       1958-12-25 HOMBRE            3
ID4    Daniel   Alfara       1983-09-19 HOMBRE            4
```


Observemos que, la función `names()` devuelve el mismo valor que `colnames()`. Para 
que nuestro código sea inteligible, recomendamos el uso de la función `colnames()`.


## Selección de Elementos {#seleccion-de-elementos}

El acceso a los elementos que se encuentran en un `data.frame` es muy similar al acceso a los datos de una matriz que ya vimos en la [sección anterior](../matrices/matrices.md). Así por ejemplo, si queremos ver sólo los datos de los sujetos (filas) 2 a 4, escribiríamos:


```r
> censo[2:4,]
```

```
       Nombre Apellido Fecha_Nacimiento   Sexo Numero_Hijos
ID2 Margarita   Garcia       1974-05-07  MUJER            2
ID3     Ruben   Sancho       1958-12-25 HOMBRE            3
ID4    Daniel   Alfara       1983-09-19 HOMBRE            4
```

Si queremos acceder a la variable `nombre`(primera columna), podemos tratar a `censo` igual que si fuese una matriz:


```r
> censo[, 1]
```

```
[1] "Juan"      "Margarita" "Ruben"     "Daniel"   
```

Aunque también podemos referirnos a la columna por su nombre:


```r
> censo$Nombre
```

```
[1] "Juan"      "Margarita" "Ruben"     "Daniel"   
```

Nótese que en este caso hemos de utilizar el nombre del data.frame `censo` seguido del operador `$` y del nombre de la variable que nos interesa (`Nombre`). De manera equivalente, la selección de esa variable puede realizarse mediante:


```r
> censo[, "Nombre"]
```

```
[1] "Juan"      "Margarita" "Ruben"     "Daniel"   
```

o poniendo el nombre de la variable entre dobles corchetes y entre comillas:


```r
> censo[["Nombre"]]
```

```
[1] "Juan"      "Margarita" "Ruben"     "Daniel"   
```

## Attach y Detach {#attach-y-detach}

La notación `$` para el acceso a elementos de un `data.frame` puede hacerse engorroso cuando
hemos de escribir constantemente el nombre del `data.frame`(en particular si éste en muy largo).
Imaginemos, por ejemplo, que para el conjunto de datos `censo` deseamos construir tablas de 
frecuencias de la variable `nro_hijos`, y que además queremos calcular la media del número de hijos.
La sintaxis a utilizar sería la siguiente:


```r
> # Calculamos la tabla de frecuencias
> table(censo$Sexo)
```

```

HOMBRE  MUJER 
     3      1 
```

```r
> # Diagrama de barras variable `sexo`
> barplot(table(censo$Sexo))
```

![Diagrama de barras variable `sexo`](figure/unnamed-chunk-18-1.png)


```r
> # Calculamos la media de `nro_hijos`
> mean(censo$Numero_Hijos)
```

```
[1] 2.5
```



```r
> # Calculamos la mediana de `nro_hijos`
> median(censo$Numero_Hijos)
```

```
[1] 2.5
```



```r
> # Calculamos la varianza de `nro_hijos`
> var(censo$Numero_Hijos)
```

```
[1] 1.666667
```



Obviamente, escribir tantas veces `censo` resulta tedioso, al margen de que se multiplica el riesgo de cometer errores en la redacción de los comandos. Para evitar este problema podemos hacer uso de la función `attach()`, cuyo objetivo consiste 
básicamente en _"enganchar"_ el contenido del dataframe al entorno donde R busca los nombres
de variable; de esta forma se puede acceder directamente a las variables del dataframe por 
su nombre:


```r
> # Attach el dataframe `censo
> attach(censo)
> # Calculamos distribución frecuencias absolutas
> cbind(table(sexo))
```

```
       [,1]
HOMBRE    3
MUJER     1
```



```r
> # Diagrama de barras de `nro_hijos`
> barplot(table(sexo))
```

![Diagramas de barras variable `sexo`](figure/unnamed-chunk-23-1.png)


```r
> # Calculamos la media de `nro_hijos`
> mean(nro_hijos)
```

```
[1] 2.5
```



```r
> # Calculamos la mediana de `nro_hijos`
> median(nro_hijos)
```

```
[1] 2.5
```



```r
> # Calculamos la varianza de `nro_hijos`
> var(nro_hijos)
```

```
[1] 1.666667
```


```r
> # Detach el dataframe `censo`
> detach(censo)
```



Una vez que hayamos acabado nuestra tarea “desenganchamos” el dataframe con la 
función `detach()`.


## Eliminar Columnas y Filas {#eliminar-columnas-y-filas}


Si deseamos eliminar valores o columnas enteras asignaremos el valor `NULL` a la 
unidad deseada:


```r
> # Creamos una copia de `censo`
> copia_censo <- censo
> 
> # Asignamos el valor `NULL` al valor en [1, 3]
> copia_censo[1, 3] <- NULL
> 
> # Asignamos `NULL`a la variable `nro_hijos`
> copia_censo$nro_hijos <- NULL
> 
> # Mostramos por pantalla valor en [1, 3]
> 
> valor_eliminado <- copia_censo$Numero_Hijos
> valor_eliminado
```

```
[1] 1 2 3 4
```

```r
> # Mostramos por pantalla variables `copia_censo`
> names(copia_censo)
```

```
[1] "Nombre"           "Apellido"         "Fecha_Nacimiento"
[4] "Sexo"             "Numero_Hijos"    
```








Para eliminar filas definiremos un vector de tipo lógico en el que indicaremos para
cada fila si será eliminada o no:


```r
> # Definimos las filas a conservar
> filas_a_conservar <- c(TRUE, FALSE, TRUE, FALSE)
> 
> # Obtenenos un subconjunto de `censo` con las filas a conservar
> subconjunto_censo <- censo[filas_a_conservar,]
> 
> # Mostramos por pantalla `subconjunto_censo`
> subconjunto_censo
```

```
  nombre apellido fecha_nacimiento   sexo nro_hijos
1   Juan  Sanchez       1976-06-14 HOMBRE         1
3  Ruben   Sancho       1958-12-25 HOMBRE         3
```

Otro modo de eliminar las filas es haciendo lo contrario añadiendo el operador
lógico de negación (`!`), a modo de ejemplo utilizaremos el código anterior:


```r
> # Definimos las filas a conservar
> filas_a_conservar <- c(TRUE, FALSE, TRUE, FALSE)
> 
> # Obtenenos un subconjunto de `censo` con las filas eliminadas
> subconjunto_censo <- censo[!filas_a_conservar,]
> 
> # Mostramos por pantalla `subconjunto_censo`
> subconjunto_censo
```

```
     nombre apellido fecha_nacimiento   sexo nro_hijos
2 Margarita   Garcia       1974-05-07  MUJER         2
4    Daniel   Alfara       1983-09-19 HOMBRE         4
```


Por último, destacar que podemos definir condiciones lógicas para filtrar nuestros
resultados. Por ejemplo, si deseamos mostrar los sujetos de `censo` que tienen mas de dos hijos 
lo haríamos del siguiente modo:


```r
> subconjunto_censo <- censo[censo$nro_hijos > 2, ]
> subconjunto_censo
```

```
  nombre apellido fecha_nacimiento   sexo nro_hijos
3  Ruben   Sancho       1958-12-25 HOMBRE         3
4 Daniel   Alfara       1983-09-19 HOMBRE         4
```


## Añadir Filas y Columnas {#añadir-filas-y-columnas}


Del mismo modo que utilizamos los operadores `[,]` y `$` para acceder y cambiar un valor,
podemos añadir columnas en `censo` del siguiente modo:


```r
> # Añadimos la columna `nacionalidad` en `censo`
> censo$nacionalidad <- c("ES", "FR", "RU","IT" )
> 
> # Mostramos `censo` `por pantalla
> censo
```

```
     nombre apellido fecha_nacimiento   sexo nro_hijos nacionalidad
1      Juan  Sanchez       1976-06-14 HOMBRE         1           ES
2 Margarita   Garcia       1974-05-07  MUJER         2           FR
3     Ruben   Sancho       1958-12-25 HOMBRE         3           RU
4    Daniel   Alfara       1983-09-19 HOMBRE         4           IT
```

Para añadir filas a un `dataframe` existente, definiremos un nuevo vector respetando las variables
de las columnas que han sido definidas con anterioridad y pegando esta fila al `dataframe` original
mediante la función `rbind()` (acrónimo de _rowbind_, pegar por filas):







```r
> # Definimos una nueva fila
> fila_nueva <- c("Oscar", "Gonzalez", "1989-07-15", "HOMBRE", 0, "ES")
> 
> # Añadimos la nueva fila a `censo` con `rbind()`
> censo <- rbind(censo, fila_nueva)
> 
> # Mostramos por pantalla `censo`
> censo
```

```
     nombre apellido fecha_nacimiento   sexo nro_hijos
1      Juan  Sanchez       1976-06-14 HOMBRE         1
2 Margarita   Garcia       1974-05-07  MUJER         2
3     Ruben   Sancho       1958-12-25 HOMBRE         3
4    Daniel   Alfara       1983-09-19 HOMBRE         4
5     Oscar Gonzalez       1989-07-15 HOMBRE         0
```

## Ordenación de DataFrames {#ordenacion-de-dataframes}

Para ordenar un `data.frame` hemos de aplicar la función `order()` a la variable por la que queramos
ordenar. Por ejemplo, si queremos ordenar el dataframe `censo` por orden alfabético de `nombre`, haríamos:


```r
> # Usamos `order()` para ordenar
> censo[order(nombre), ]
```

```
     nombre apellido fecha_nacimiento   sexo nro_hijos
4    Daniel   Alfara       1983-09-19 HOMBRE         4
1      Juan  Sanchez       1976-06-14 HOMBRE         1
2 Margarita   Garcia       1974-05-07  MUJER         2
3     Ruben   Sancho       1958-12-25 HOMBRE         3
```

También podemos controlar la forma de ordenación mediante el argumento `decreasing`, el cual
acepta los valores lógicos `TRUE` y `FALSE`. Por ejemplo, si deseamos ordenar los sujetos
por el mayor número de hijos, lo haríamos:


```r
> censo[order(nro_hijos, decreasing = TRUE), ]
```

```
     nombre apellido fecha_nacimiento   sexo nro_hijos
4    Daniel   Alfara       1983-09-19 HOMBRE         4
3     Ruben   Sancho       1958-12-25 HOMBRE         3
2 Margarita   Garcia       1974-05-07  MUJER         2
1      Juan  Sanchez       1976-06-14 HOMBRE         1
```


## Cambiar la Forma de un `data.frame`: formato `wide`y `long` {#wide-long}

Cuando nos encontramos con múltiples valores, dispersos en varias columnas, para
la misma instancia, nuestros datos estan en forma `wide` (ancho).

Por otro lado, nuestros datos están en forma `long` (largo) si existe una observación (fila)
por variable. Es decir, disponemos de múltiples filas por instancia.

Permitidme ilustrar estos conceptos mediante un ejemplo. Nuestros datos están en 
formato `long` cuando los colacamos del siguiente modo:


```r
> # Definimos las filas
> alumno <- c(1, 2, 1, 2, 2, 1)
> sexo <- c("M", "F", "M", "F", "F", "M")
> asignatura <- c("Matematicas", "Ciencias", "Ciencias", "Literatura", "Matematicas", "Literatura")
> nota <- c(10, 4, 8, 6, 7, 7)
> 
> # Creamos el `data.frame` 
> observaciones_formato_long <- data.frame(alumno, sexo, asignatura, nota)
> 
> #Mostramos por pantalla `formato_long
> observaciones_formato_long
```

```
  alumno sexo  asignatura nota
1      1    M Matematicas   10
2      2    F    Ciencias    4
3      1    M    Ciencias    8
4      2    F  Literatura    6
5      2    F Matematicas    7
6      1    M  Literatura    7
```

Como podemos observar, existe una fila para cada variable que hemos definido. Este formato
es muy útil en la gran mayoría de funciones estadísticas.

Por otro lado, nuestros datos se encuentra en formato `wide` cuando los organizamos del 
siguiente modo:


```r
> # Definimos las columnas
> alumno <- c(1, 2)
> sexo <- c("M", "F")
> matematicas <- c(10, 7)
> ciencias <- c(8, 4)
> literatura <- c(7, 6)
> 
> # Creamos el `data.frame`
> observaciones_formato_wide <- data.frame(alumno, sexo, matematicas, ciencias, literatura)
> 
> # Mostramos por pantalla `formato_wide`
> observaciones_formato_wide
```

```
  alumno sexo matematicas ciencias literatura
1      1    M          10        8          7
2      2    F           7        4          6
```

Como podemos observar cada columna (variable) representa un valor para cada instancia.


### Uso de `stack()` Para Data Frames con Estructuras Simples {#stack}


La función `stack()` básicamente combina varios vectores en un único vector. Siguiendo
con el ejemplo, si queremos nuestro `data.frame` en formato `long` combinaremos las
columnas `matematicas`, `ciencias` y `literatura` en una sola:


```r
> # Pasamos de `wide` a `long`
> formato_long <- stack(observaciones_formato_wide, 
+                       select = c(matematicas,
+                                  ciencias,
+                                  literatura))
> 
> # Mostramos `formato_long`
> formato_long
```

```
  values         ind
1     10 matematicas
2      7 matematicas
3      8    ciencias
4      4    ciencias
5      7  literatura
6      6  literatura
```


Para pasar de formato `long` a `wide`, necesitamos desagrupar nuestros datos con 
el objetivo de obtener una fila por instancia, en la que cada valor se corresponde a una
variable diferente. Para ello haremos uso de la función `unstack()` como mostramos
en el siguiente ejemplo:



```r
> # Construimos a formato `wide`
> formato_wide <- unstack(observaciones_formato_long,
+                         nota ~ asignatura )
>                       
> # Devuelve `formato_wide`
> formato_wide
```

```
  Ciencias Literatura Matematicas
1        4          6          10
2        8          7           7
```


### Transformar Data Frames con Estructuras Complejas {#tidyr}


Existen otras funciones que nos permiten transformar data frames con estructuras
más complejas:

- La función `reshape()` que forma parte del paquete `stats`.
- Las funciones `spread()` y `gather`del paquete `tidyr`.
- La función `melt()` del paquete `reshape2`.

En este curso en un [módulo posterior]() profundizaremos en el uso del paquete `tidyr`.


## Resumen {#resumen}

- Creamos data frames con `data.frame()`.
- Mediante la función `str()` lograremos conocer la estrucutra del data frame.
- Para inspeccionar las primeras o últimas líneas, podemos hacer uso de las
funciones `head()` y `tail()`. 
- Por medio de `nrow()`y `ncol()` recuperamos el número de filas y columnas.
- Accederemos a los elementos de una data frame del mismo modo que lo hacemos en 
las matrices o listas.
- Gracias a las funciones `attach` y `detach()` podemos accecer a las variables de
un data frame de forma directa.
- Hemos aprendido a elimiar, añadir y ordenar filas y columnas.
- Por último, hemos discutido cuando nos encontramos en formato `wide` y `long`.

 



