


<!-- ```{r, include=FALSE} -->
<!-- tutorial::go_interactive() -->
<!-- ``` -->


# Lectura de Archivos de Programas Estadísticos en R

Como ya sabemos, R es un lenguaje de programación y un entorno de computación para computación estadística. Su naturaleza de código fuente abierto ha hecho que en los últimos años prolifere ante alternativas a programas estadísticos de tipo comercial, como SPSS, SAS, etc.

En esta sección, veremos como podemos importar datos desde programas estadísticos avanzados. Así mismo, examinaremos los paquetes que necesitamos instalar para leer nuestros datos en R, de igual manera que hemos hechos con los datos almacenados en archivos Excel o JSON.

## Lectura de Archivos SPSS en R

Si somos usuarios del programa SPSS y deseamos importar nuestros archivos SPSS a R, en primer lugar necesitaremos instalar el paquete [haven](http://haven.tidyverse.org/) que forma parte del ecosistema [tidyverse](http://tidyverse.org/). 

### Instalación

La forma mas fácil de instalar `haven` es instalar el ecosistema
`tidyverse`:


```r
install.packages("tidyverse")
```

Alternativamente, para instalar únicamente `haven`:


```r
install.packages("haven")
```

Por último, podemos instalar la última versión en desarrollo desde su repositorio en GitHub:


```r
# install.packages("devtools")
devtools::install_github("tidyverse/haven")
```

__Nota__ que la última opción requiere de la instalación del paquete `devtools`.

### Uso


Para leer archivos SPSS desde R haremos uso de la función `read_sav()`:


```r
# Lectura de los datos SPSS
read_sav("data/Child_Data.sav")
```

```
# A tibble: 20 � 4
     AGE MEM_SPAN    IQ READ_AB
   <dbl>    <dbl> <dbl>   <dbl>
1   6.70      4.4    95     7.2
2   5.90      4.0    90     6.0
3   5.50      4.1   105     6.0
4   6.20      4.8    98     6.6
5   6.40      5.0   106     7.0
6   7.30      5.5   100     7.2
7   5.70      3.6    88     5.3
8   6.15      5.0    95     6.4
9   7.50      5.4    96     6.6
10  6.90      5.0   104     7.3
11  4.10      3.9   108     5.0
12  5.50      4.2    90     5.8
13  6.90      4.5    91     6.6
14  7.20      5.0    92     6.8
15  4.00      4.2   101     5.6
16  7.30      5.5   100     7.2
17  5.90      4.0    90     6.0
18  5.50      4.2    90     5.8
19  4.00      4.2   101     5.6
20  5.90      4.0    90     6.0
```

Por supuesto `haven` nos permite gravar nuestros datos en un archivo SPSS con la ayuda de la función `write_sas`:


```r
# Escritura del dataframe `mtcars` a un archivo SPSS
write_sav(mtcars, "data/mtcars.sav")
```



## Lectura de Archivos Stata en R

Como en el caso anterior utilizaremos el paquete `haven` y pero en este caso utilizaremos la función `read_stata()`:



```r
# Lectura de los datos STATA
read_dta("data/Milk_Production.dta")
```

```
# A tibble: 199 � 7
   currentm previous   fat protein  days lactatio   i79
      <dbl>    <dbl> <dbl>   <dbl> <dbl>    <dbl> <dbl>
1        45       45   5.5     8.9    21        5     0
2        86       86   4.4     4.1    25        4     0
3        50       50   6.5     4.0    25        7     0
4        42       42   7.4     4.1    25        2     0
5        61       61   3.8     3.8    33        2     0
6        93       93   4.2     3.0    45        3     0
7        91       91   2.9     2.6    46        2     0
8        90       90   4.7     2.9    46        5     0
9        53       53   2.5     3.5    46        2     0
10       84       84   4.3     3.3    50        7     0
# ... with 189 more rows
```

De igual manera que en el caso anterior podemos exportar nuestros datos a STATA sin embargo, para archivos Stata utilizaremos la función  `write_dta()`:


```r
# Escritura del dataframe `mtcars` a un archivo STATA
write_dta(mtcars, "data/mtcars.dta")
```



## Lectura de Archivos SAS en R

De la misma forma que en los dos casos anteriores utilizaremos el paquete `haven`, pero en este caso utilizaremos la función `read_sas()` para leer nuestros datos SAS dentro de R:


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

De manera semejante podemos exportar nuestros datos a STATA, aunque en esta ocasión utilizaremos la función `write_sas()`:


```r
# Escritura del dataframe `mtcars` a un archivo SAS
write_sas(mtcars, "data/mtcars.sas7bdat")
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



















