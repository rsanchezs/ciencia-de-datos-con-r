---
title: "Dataframes"
author: "Rubén Sánchez Sancho"
date: "14 de febrero de 2017"
output:
  ioslides_presentation:
    highlight: monochrome
    widescreen: yes
    df_print: default
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
  width : 90%;
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
   font-size: 16px;
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

## Creación de un Data Frame {.smaller}

Podemos crear data frames con la función __`data.frame()`__:


```r
# Creamos vectores con los valores
nombre <- c("Juan", "Margarita", "Ruben", "Daniel")
apellido <- c("Sanchez", "Garcia", "Sancho", "Alfara")
fecha_nacimiento <- c("1976-06-14", "1974-05-07", "1958-12-25", "1983-09-19")
sexo <- c("HOMBRE", "MUJER", "HOMBRE", "HOMBRE")
nro_hijos <- c(1, 2, 3, 4)
```


```r
# Creamos un dataframe con la ayuda de data.frame()
censo <- data.frame(nombre, apellido, fecha_nacimiento, sexo, nro_hijos)
censo
```

```
##      nombre apellido fecha_nacimiento   sexo nro_hijos
## 1      Juan  Sanchez       1976-06-14 HOMBRE         1
## 2 Margarita   Garcia       1974-05-07  MUJER         2
## 3     Ruben   Sancho       1958-12-25 HOMBRE         3
## 4    Daniel   Alfara       1983-09-19 HOMBRE         4
```

## Inspeccionar las primeras filas con __`head()`__



```r
head(censo, 2)
```

```
##      nombre apellido fecha_nacimiento   sexo nro_hijos
## 1      Juan  Sanchez       1976-06-14 HOMBRE         1
## 2 Margarita   Garcia       1974-05-07  MUJER         2
```


## Inspeccionar las últims filas con __`tail()`__



```r
tail(censo, 2)
```

```
##   nombre apellido fecha_nacimiento   sexo nro_hijos
## 3  Ruben   Sancho       1958-12-25 HOMBRE         3
## 4 Daniel   Alfara       1983-09-19 HOMBRE         4
```



## Conocer la estructura de un dataframe con __`str()`__



```r
str(censo)
```

```
## 'data.frame':	4 obs. of  5 variables:
##  $ nombre          : Factor w/ 4 levels "Daniel","Juan",..: 2 3 4 1
##  $ apellido        : Factor w/ 4 levels "Alfara","Garcia",..: 3 2 4 1
##  $ fecha_nacimiento: Factor w/ 4 levels "1958-12-25","1974-05-07",..: 3 2 1 4
##  $ sexo            : Factor w/ 2 levels "HOMBRE","MUJER": 1 2 1 1
##  $ nro_hijos       : num  1 2 3 4
```

## Creación de Variables con el tipo de dato Deseado {.build}


```r
# Creamos vectores con los valores y el tipo de dato deseado
nombre <- I(c("Juan", "Margarita", "Ruben", "Daniel"))
apellido <- I(c("Sanchez", "Garcia", "Sancho", "Alfara"))
fecha_nacimiento <- as.Date(c("1976-06-14", "1974-05-07", 
                              "1958-12-25", "1983-09-19"))
sexo <- c("HOMBRE", "MUJER", "HOMBRE", "HOMBRE")
nro_hijos <- c(1, 2, 3, 4)
```


> - Para `nombre` y `apellido` podemos hacer uso de la función `I()`.
> - La variable `sexo` podemos dejarla como `factor`.
> - Para `fecha_nacimiento`, usaremos la función `as.Date()`:


## Creación de Variables con el tipo de dato Deseado


```r
# Creamos un dataframe con la ayuda de data.frame()
censo <- data.frame(nombre, apellido, fecha_nacimiento, sexo, nro_hijos)
str(censo)
```

```
## 'data.frame':	4 obs. of  5 variables:
##  $ nombre          :Class 'AsIs'  chr [1:4] "Juan" "Margarita" "Ruben" "Daniel"
##  $ apellido        :Class 'AsIs'  chr [1:4] "Sanchez" "Garcia" "Sancho" "Alfara"
##  $ fecha_nacimiento: Date, format: "1976-06-14" "1974-05-07" ...
##  $ sexo            : Factor w/ 2 levels "HOMBRE","MUJER": 1 2 1 1
##  $ nro_hijos       : num  1 2 3 4
```

## Filas, Columnas y Dimensión | Dimensión con __`dim()`__


```r
# Devuelve el número de filas y columnas
dim(censo)
```

```
## [1] 4 5
```

## Filas, Columnas y Dimensión | Número de Filas __`nrow()`__ 


```r
# Usamos `nrow()`para recuperar el número de filas
nrow(censo)
```

```
## [1] 4
```


## Filas, Columnas y Dimensión | Número Columnas con __`ncol()`__



```r
# Usamos `ncol()` para recuperar el número de columnas
ncol(censo)
```

```
## [1] 5
```


##  Nombre de las Filas y Columnas | Nombre de las variables con __`names()`__


```r
# Listamos los nombres de las variables (cabecera)
names(censo)
```

```
## [1] "nombre"           "apellido"         "fecha_nacimiento"
## [4] "sexo"             "nro_hijos"
```

##  Nombre de las Filas y Columnas | Cambiar el Nombre de las variables con __`names()`__


```r
# Asignamos diferentes nombres a las columas de `censo`
names(censo) <- c("Nombre", "Apellido", "Fecha_Nacimiento", 
                  "Sexo", "Numero_Hijos")
names(censo)
```

```
## [1] "Nombre"           "Apellido"         "Fecha_Nacimiento"
## [4] "Sexo"             "Numero_Hijos"
```

##  Nombre de las Filas y Columnas | Uso de la función __`rownames()`__ y __`colnames()`__ {.smaller}



```r
# Asignamos diferentes nombres a las columnas de `censo`
colnames(censo) <- c("Nombre", "Apellido", "Fecha_Nacimiento", 
                     "Sexo", "Numero_Hijos")
```



```r
# Asignamos diferentes nombres a las filas de `censo`
rownames(censo) <- c("ID1", "ID2", "ID3", "ID4")
# Mostramos el`dataframe`en pantalla
censo
```

```
##        Nombre Apellido Fecha_Nacimiento   Sexo Numero_Hijos
## ID1      Juan  Sanchez       1976-06-14 HOMBRE            1
## ID2 Margarita   Garcia       1974-05-07  MUJER            2
## ID3     Ruben   Sancho       1958-12-25 HOMBRE            3
## ID4    Daniel   Alfara       1983-09-19 HOMBRE            4
```

## Attach y Detach


```r
# Calculamos la tabla de frecuencias
table(censo$Sexo)
```

```
## 
## HOMBRE  MUJER 
##      3      1
```

## 


```r
# Diagrama de barras variable `sexo`
barplot(table(sexo))
```

![plot of chunk unnamed-chunk-16](figure/unnamed-chunk-16-1.png)

## {.build}


```r
# Calculamos la media de `nro_hijos`
mean(censo$Numero_Hijos)
```

```
## [1] 2.5
```



```r
# Calculamos la mediana de `nro_hijos`
median(censo$Numero_Hijos)
```

```
## [1] 2.5
```



```r
# Calculamos la varianza de `nro_hijos`
var(censo$Numero_Hijos)
```

```
## [1] 1.666667
```


## Attach y Detach | Acceso a las variables directamente por su nombre {.build}


```r
# Attach el dataframe `censo
attach(censo)
```


```r
# Calculamos distribución frecuencias absolutas
cbind(table(sexo))
```

```
##        [,1]
## HOMBRE    3
## MUJER     1
```

## 


```r
# Diagrama de barras de `nro_hijos`
barplot(table(sexo))
```

![plot of chunk unnamed-chunk-22](figure/unnamed-chunk-22-1.png)

## {.smaller .build}

```r
# Calculamos la media de `nro_hijos`
mean(nro_hijos)
```

```
## [1] 2.5
```



```r
# Calculamos la mediana de `nro_hijos`
median(nro_hijos)
```

```
## [1] 2.5
```



```r
# Calculamos la varianza de `nro_hijos`
var(nro_hijos)
```

```
## [1] 1.666667
```


```r
# Detach el dataframe `censo`
detach(censo)
```



## Añadir Filas y Columnas | Añadir columnas con __`$`__


```r
# Añadimos la columna `nacionalidad` en `censo`
censo$nacionalidad <- c("ES", "FR", "RU","IT" )
# Mostramos `censo` `por pantalla
censo
```

```
##        Nombre Apellido Fecha_Nacimiento   Sexo Numero_Hijos nacionalidad
## ID1      Juan  Sanchez       1976-06-14 HOMBRE            1           ES
## ID2 Margarita   Garcia       1974-05-07  MUJER            2           FR
## ID3     Ruben   Sancho       1958-12-25 HOMBRE            3           RU
## ID4    Daniel   Alfara       1983-09-19 HOMBRE            4           IT
```

## Añadir Filas y Columnas | Añadir filas con __`rbind()`__



```r
# Definimos una nueva fila
fila_nueva <- c("Oscar", "Gonzalez", "1989-07-15", "HOMBRE", 0, "ES")
# Añadimos la nueva fila a `censo` con `rbind()`
censo <- rbind(censo, fila_nueva)
# Mostramos por pantalla `censo`
censo
```

```
##        Nombre Apellido Fecha_Nacimiento   Sexo Numero_Hijos nacionalidad
## ID1      Juan  Sanchez       1976-06-14 HOMBRE            1           ES
## ID2 Margarita   Garcia       1974-05-07  MUJER            2           FR
## ID3     Ruben   Sancho       1958-12-25 HOMBRE            3           RU
## ID4    Daniel   Alfara       1983-09-19 HOMBRE            4           IT
## 5       Oscar Gonzalez       1989-07-15 HOMBRE            0           ES
```


## Eliminar Columnas y Filas | Eliminar valores con __`NA`__ y columnas con __`NULL`__



```r
# Asignamos el valor `NA` al valor en [1, 5]
censo[1, 5] <- NA
# Eliminamos la columna/variable nacionalidad
censo$nacionalidad <- NULL
# Mostramos por pantalla censo
censo
```

```
##        Nombre Apellido Fecha_Nacimiento   Sexo Numero_Hijos
## ID1      Juan  Sanchez       1976-06-14 HOMBRE         <NA>
## ID2 Margarita   Garcia       1974-05-07  MUJER            2
## ID3     Ruben   Sancho       1958-12-25 HOMBRE            3
## ID4    Daniel   Alfara       1983-09-19 HOMBRE            4
## 5       Oscar Gonzalez       1989-07-15 HOMBRE            0
```



## Eliminar Columnas y Filas | Eliminar filas


```r
# Definimos las filas a conservar
filas_a_conservar <- c(TRUE, TRUE, TRUE, TRUE, FALSE)
# Eliminamos la ultima fila
censo[filas_a_conservar,]
```

```
##        Nombre Apellido Fecha_Nacimiento   Sexo Numero_Hijos
## ID1      Juan  Sanchez       1976-06-14 HOMBRE         <NA>
## ID2 Margarita   Garcia       1974-05-07  MUJER            2
## ID3     Ruben   Sancho       1958-12-25 HOMBRE            3
## ID4    Daniel   Alfara       1983-09-19 HOMBRE            4
```


## Ordenación de DataFrames | Función __`order()`__


```r
# Usamos `order()` para ordenar
censo[order(nombre), ]
```

```
##        Nombre Apellido Fecha_Nacimiento   Sexo Numero_Hijos
## ID4    Daniel   Alfara       1983-09-19 HOMBRE            4
## ID1      Juan  Sanchez       1976-06-14 HOMBRE         <NA>
## ID2 Margarita   Garcia       1974-05-07  MUJER            2
## ID3     Ruben   Sancho       1958-12-25 HOMBRE            3
```

## Ordenación de DataFrames | Ordenar de forma decreciente con __`decreasing`__


```r
censo[order(nro_hijos, decreasing = TRUE), ]
```

```
##        Nombre Apellido Fecha_Nacimiento   Sexo Numero_Hijos
## ID4    Daniel   Alfara       1983-09-19 HOMBRE            4
## ID3     Ruben   Sancho       1958-12-25 HOMBRE            3
## ID2 Margarita   Garcia       1974-05-07  MUJER            2
## ID1      Juan  Sanchez       1976-06-14 HOMBRE         <NA>
```

## Filtrar Resultados



```r
subconjunto_censo <- censo[censo$nro_hijos > 2, ]
subconjunto_censo
```

```
## [1] Nombre           Apellido         Fecha_Nacimiento Sexo            
## [5] Numero_Hijos    
## <0 rows> (or 0-length row.names)
```

## Formato `wide` y `long` 

##


```
##   alumno sexo matematicas ciencias literatura
## 1      1    M          10        8          7
## 2      2    F           7        4          6
```



## 



```
##   alumno sexo  asignatura nota
## 1      1    M Matematicas   10
## 2      2    F    Ciencias    4
## 3      1    M    Ciencias    8
## 4      2    F  Literatura    6
## 5      2    F Matematicas    7
## 6      1    M  Literatura    7
```





## Pasar del formato __`wide`__ al formato __`long`__ con __`stack()`__



## 

```
##   alumno sexo  asignatura nota
## 1      1    M Matematicas   10
## 2      2    F    Ciencias    4
```
##

```
##   alumno sexo  asignatura nota
## 1      1    M Matematicas   10
## 2      2    F    Ciencias    4
## 3      1    M    Ciencias    8
```
##

```
##   alumno sexo  asignatura nota
## 1      1    M Matematicas   10
## 2      2    F    Ciencias    4
## 3      1    M    Ciencias    8
## 4      2    F  Literatura    6
```
##

```
##   alumno sexo  asignatura nota
## 1      1    M Matematicas   10
## 2      2    F    Ciencias    4
## 3      1    M    Ciencias    8
## 4      2    F  Literatura    6
## 5      2    F Matematicas    7
```
##

```
##   alumno sexo  asignatura nota
## 1      1    M Matematicas   10
## 2      2    F    Ciencias    4
## 3      1    M    Ciencias    8
## 4      2    F  Literatura    6
## 5      2    F Matematicas    7
## 6      1    M  Literatura    7
```



## Pasar del formato __`wide`__ al formato __`long`__ con __`stack()`__ 


```r
# Pasamos de `wide` a `long`
formato_long <- stack(observaciones_formato_wide, 
                      select = c(matematicas,
                                 ciencias,
                                 literatura))
# Mostramos `formato_long`
formato_long
```


## Pasar del formato __`long`__ al formato __`wide`__ con __`unstack()`__


## Pasar del formato __`long`__ al formato __`wide`__ con __`unstack()`__ 


```r
# Construimos a formato `wide`
formato_wide <- unstack(observaciones_formato_long,
                        nota ~ asignatura )
# Devuelve `formato_wide`
formato_wide
```

## Transformar Data Frames con Estructuras Complejas {.build}


- La función `reshape()` que forma parte del paquete `stats`.
- Las funciones `spread()` y `gather`del paquete __`tidyr`__.
- La función `melt()` del paquete `reshape2`.

## Selección de Elementos

Disponemos de dos métodos para seleccionar elementos de una lista:

> - Seleccionar elementos como en una __matriz__
> - Seleccionar elementos como en una __lista__

## 
 
que examinaremos a partir de `df`:


```r
df <- data.frame(x = 1:3, y = I(c("a","b", "c")))
df
```

```
##   x y
## 1 1 a
## 2 2 b
## 3 3 c
```


## Selección de elementos | Como en una __matriz__

Podemos seleccionar una __columna__ de un __`dataframe`__ como:


```r
df[, 2]
```

```
## [1] "a" "b" "c"
```



## Selección de elementos | Como en una __matriz__

Podemos seleccionar una __fila__ de un __`dataframe`__ como:


```r
df[2, ]
```

```
##   x y
## 2 2 b
```

## Selección de elementos | Como en una __matriz__

Podemos seleccionar __elementos__ de un __`dataframe`__ como:


```r
df[2, 2]
```

```
## [1] "b"
```

## Selección de elementos | Como en una __lista__

Podemos seleccionar una __columna__ (variable) de un __`dataframe`__ como:


```r
df$x
```

```
## [1] 1 2 3
```

## Selección de elementos | Como en una __lista__

También, podemos seleccionar una __columna__ de un __`dataframe`__ como:


```r
df[["x"]]
```

```
## [1] 1 2 3
```


















