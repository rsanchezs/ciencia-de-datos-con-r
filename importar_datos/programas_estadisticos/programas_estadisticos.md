



# Lectura Archivos de Programas Estadísticos en R

Como ya sabemos, R es un lenguaje de programación y un entorno de computación para computación estadística. Su naturaleza de código fuente abierto ha hecho que en los últimos años prolifere ante alternativas a programas estadísticos de tipo comercial, como SPSS, SAS, etc.

En esta sección, veremos como podemos importar datos desde programas estadísticos avanzados. Así mismo, examinaremos los paquetes que necesitamos instalar para leer nuestros datos en R, de igual manera que hemos hechos con los datos almacenados en archivos de texto o Excel.

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

Lo primero que haremos será cargar el ecosistema `tidyverse`:


```r
library(tidyverse)
```

También tenemos la opción de cargar únicamente el paquete `haven`:


```r
library(haven)
```


Para leer archivos SPSS desde R haremos uso de la función `read_sav()`:


```r
# Lectura de los datos SPSS
spss <- read_sav("data/mtcars.sav")
# El objeto de salida es un tibble
spss
```

```
# A tibble: 32 x 11
     mpg   cyl  disp    hp  drat    wt  qsec    vs    am  gear  carb
   <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
 1  21.0     6 160.0   110  3.90 2.620 16.46     0     1     4     4
 2  21.0     6 160.0   110  3.90 2.875 17.02     0     1     4     4
 3  22.8     4 108.0    93  3.85 2.320 18.61     1     1     4     1
 4  21.4     6 258.0   110  3.08 3.215 19.44     1     0     3     1
 5  18.7     8 360.0   175  3.15 3.440 17.02     0     0     3     2
 6  18.1     6 225.0   105  2.76 3.460 20.22     1     0     3     1
 7  14.3     8 360.0   245  3.21 3.570 15.84     0     0     3     4
 8  24.4     4 146.7    62  3.69 3.190 20.00     1     0     4     2
 9  22.8     4 140.8    95  3.92 3.150 22.90     1     0     4     2
10  19.2     6 167.6   123  3.92 3.440 18.30     1     0     4     4
# ... with 22 more rows
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
stata <- read_dta("data/mtcars.dta")
# Mostramos las 6 primeras filas
stata
```

```
# A tibble: 32 x 11
     mpg   cyl  disp    hp  drat    wt  qsec    vs    am  gear  carb
   <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
 1  21.0     6 160.0   110  3.90 2.620 16.46     0     1     4     4
 2  21.0     6 160.0   110  3.90 2.875 17.02     0     1     4     4
 3  22.8     4 108.0    93  3.85 2.320 18.61     1     1     4     1
 4  21.4     6 258.0   110  3.08 3.215 19.44     1     0     3     1
 5  18.7     8 360.0   175  3.15 3.440 17.02     0     0     3     2
 6  18.1     6 225.0   105  2.76 3.460 20.22     1     0     3     1
 7  14.3     8 360.0   245  3.21 3.570 15.84     0     0     3     4
 8  24.4     4 146.7    62  3.69 3.190 20.00     1     0     4     2
 9  22.8     4 140.8    95  3.92 3.150 22.90     1     0     4     2
10  19.2     6 167.6   123  3.92 3.440 18.30     1     0     4     4
# ... with 22 more rows
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
sas <- read_sas("data/mtcars.sas7bdat")
# Mostramos los datos por pantalla
sas
```

```
# A tibble: 32 x 11
     mpg   cyl  disp    hp  drat    wt  qsec    vs    am  gear  carb
   <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
 1  21.0     6 160.0   110  3.90 2.620 16.46     0     1     4     4
 2  21.0     6 160.0   110  3.90 2.875 17.02     0     1     4     4
 3  22.8     4 108.0    93  3.85 2.320 18.61     1     1     4     1
 4  21.4     6 258.0   110  3.08 3.215 19.44     1     0     3     1
 5  18.7     8 360.0   175  3.15 3.440 17.02     0     0     3     2
 6  18.1     6 225.0   105  2.76 3.460 20.22     1     0     3     1
 7  14.3     8 360.0   245  3.21 3.570 15.84     0     0     3     4
 8  24.4     4 146.7    62  3.69 3.190 20.00     1     0     4     2
 9  22.8     4 140.8    95  3.92 3.150 22.90     1     0     4     2
10  19.2     6 167.6   123  3.92 3.440 18.30     1     0     4     4
# ... with 22 more rows
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



















