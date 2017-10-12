


<!-- ```{r, include=FALSE} -->
<!-- tutorial::go_interactive() -->
<!-- ``` -->


# Lectura de SAS, SPSS y Otros Programas Estadísticos en R

Como ya sabemos, R es un lenguaje de programación y un entorno de computación para computación estadística. Su naturaleza de código fuente abierto ha hecho que en los últimos años prolifere ante alternativas a programas estadísticos de tipo comercial, como SPSS, SAS, etc.

En esta sección, veremos como podemos importar datos desde programas estadísticos avanzados. Así mismo, examinaremos los paquetes que necesitamos instalar para leer nuestros datos en R, de igual manera que hemos hechos con los datos almacenados en archivos Excel o JSON.

## Lectura de Archivos SPSS en R

Si somos usuarios del programa SPSS y deseamos importar nuestros archivos SPSS a R, en primer lugar necesitaremos instalar el paquete [haven](http://haven.tidyverse.org/) que forma parte del ecosistema [tidyverse](http://tidyverse.org/). 


```r
# Instalamos el paquete
install.packages("haven")
# Cargamos el paquete
library(haven)
```



```r
# Lectura de los datos SPSS
read_sav("data/Child_Data.sav")
```

```
Error in eval(expr, envir, enclos): could not find function "read_sav"
```

## Lectura de Archivos Stata en R

Como en el caso anterior utilizaremos el paquete `haven` y utilizaremos la función `read_stata()`:


```r
# Instalamos el paquete
install.packages("haven")
# Cargamos el paquete
library(haven)
```



```r
# Lectura de los datos STATA
read_stata("data/Milk_Production.dta")
```

```
Error in eval(expr, envir, enclos): could not find function "read_stata"
```


## Lectura de Archivos SAS en R

De igual manera que en los dos casos anteriores utilizaremos el paquete `haven`, pero en este caso utilizaremos la función `read_sas()` para leer nuestros datos SAS dentro de R:


```r
# Instalamos el paquete
install.packages("haven")
```

```
Installing package into 'C:/Users/Ruben/Documents/R/win-library/3.3'
(as 'lib' is unspecified)
```

```
package 'haven' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\Ruben\AppData\Local\Temp\RtmpgNvh01\downloaded_packages
```

```r
# Cargamos el paquete
library(haven)
```


```r
# Lectura de los datos STATA
read_sas("data/iris.sas7bdat")
```

```
# A tibble: 150 � 5
   Sepal_Length Sepal_Width Petal_Length Petal_Width Species
          <dbl>       <dbl>        <dbl>       <dbl>   <chr>
1           5.1         3.5          1.4         0.2  setosa
2           4.9         3.0          1.4         0.2  setosa
3           4.7         3.2          1.3         0.2  setosa
4           4.6         3.1          1.5         0.2  setosa
5           5.0         3.6          1.4         0.2  setosa
6           5.4         3.9          1.7         0.4  setosa
7           4.6         3.4          1.4         0.3  setosa
8           5.0         3.4          1.5         0.2  setosa
9           4.4         2.9          1.4         0.2  setosa
10          4.9         3.1          1.5         0.1  setosa
# ... with 140 more rows
```


## Lectura de Archivos Systat en R

Si deseamos importar archivos Systat en R, en esta caso tenemos que hacer uso del paquete [foreign](https://cran.r-project.org/web/packages/foreign/foreign.pdf), como podemos ver a continuación:



```r
# Instalamos el paquete `foreing`
install.packages("foreign")
# Activamos la libreria `foreign`
library(foreign)
# Leemos los datos Systat
datos <- read.systat("<ruta archivo>")
```

## Lectura de Archivos Minitab en R

De igual manera que en el caso anterior utilizaremos el mismo paquete, pero en este caso utilizaremos la función `read.mtp()`:


```r
# Instalamos el paquete `foreing`
install.packages("foreign")
# Activamos la libreria `foreign`
library(foreign)
# Leemos los datos Systat
datos <- read.mtp("<ruta archivo>")
```



















