---
title: "Importar Datos Estadísticos"
author: "Rubén Sánchez Sancho"
date: "01 de Noviembre de 2017"
output: ioslides_presentation
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
   padding: 15px 0px 0px 0px;
} 
</style>

<style>
h3 {
  font-size: 30px;
  letter-spacing: -1px;
  line-height: 2;
  font-weight: inherit;
  color: #797979;
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
  width : 75%;
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
<!-- </style> -->

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


## Lectura de Archivos  {.build}


Lo primero que haremos será cargar el ecosistema 


```r
library(tidyverse)
```

También tenemos la opción de cargar únicamente el paquete 


```r
library(haven)
```


## Lectura de Archivos  | Función `read_sav()` {.smaller .build}



```r
# Lectura de los datos SPSS
(spss <- read_sav("data/mtcars.sav"))
```

```
## # A tibble: 32 x 11
##      mpg   cyl  disp    hp  drat    wt  qsec    vs    am  gear  carb
##    <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
##  1  21.0     6 160.0   110  3.90 2.620 16.46     0     1     4     4
##  2  21.0     6 160.0   110  3.90 2.875 17.02     0     1     4     4
##  3  22.8     4 108.0    93  3.85 2.320 18.61     1     1     4     1
##  4  21.4     6 258.0   110  3.08 3.215 19.44     1     0     3     1
##  5  18.7     8 360.0   175  3.15 3.440 17.02     0     0     3     2
##  6  18.1     6 225.0   105  2.76 3.460 20.22     1     0     3     1
##  7  14.3     8 360.0   245  3.21 3.570 15.84     0     0     3     4
##  8  24.4     4 146.7    62  3.69 3.190 20.00     1     0     4     2
##  9  22.8     4 140.8    95  3.92 3.150 22.90     1     0     4     2
## 10  19.2     6 167.6   123  3.92 3.440 18.30     1     0     4     4
## # ... with 22 more rows
```


## Escritura de Archivos  | Función `write_sas()`

 


```r
# Escritura del dataframe `mtcars` a un archivo SPSS
write_sav(mtcars, "data/mtcars.sav")
```


## Lectura de Archivos  | Función `read_stata()` {.smaller .build}




```r
# Lectura de los datos STATA
(stata <- read_dta("data/mtcars.dta"))
```

```
## # A tibble: 32 x 11
##      mpg   cyl  disp    hp  drat    wt  qsec    vs    am  gear  carb
##    <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
##  1  21.0     6 160.0   110  3.90 2.620 16.46     0     1     4     4
##  2  21.0     6 160.0   110  3.90 2.875 17.02     0     1     4     4
##  3  22.8     4 108.0    93  3.85 2.320 18.61     1     1     4     1
##  4  21.4     6 258.0   110  3.08 3.215 19.44     1     0     3     1
##  5  18.7     8 360.0   175  3.15 3.440 17.02     0     0     3     2
##  6  18.1     6 225.0   105  2.76 3.460 20.22     1     0     3     1
##  7  14.3     8 360.0   245  3.21 3.570 15.84     0     0     3     4
##  8  24.4     4 146.7    62  3.69 3.190 20.00     1     0     4     2
##  9  22.8     4 140.8    95  3.92 3.150 22.90     1     0     4     2
## 10  19.2     6 167.6   123  3.92 3.440 18.30     1     0     4     4
## # ... with 22 more rows
```



## Escritura de Archivos  | Función `write_dta()`


```r
# Escritura del dataframe `mtcars` a un archivo STATA
write_dta(mtcars, "data/mtcars.dta")
```


## Lectura de Archivos  | Función `read_sas()` {.smaller .build}


```r
# Lectura de los datos STATA
(sas <- read_sas("data/mtcars.sas7bdat"))
```

```
## # A tibble: 32 x 11
##      mpg   cyl  disp    hp  drat    wt  qsec    vs    am  gear  carb
##    <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
##  1  21.0     6 160.0   110  3.90 2.620 16.46     0     1     4     4
##  2  21.0     6 160.0   110  3.90 2.875 17.02     0     1     4     4
##  3  22.8     4 108.0    93  3.85 2.320 18.61     1     1     4     1
##  4  21.4     6 258.0   110  3.08 3.215 19.44     1     0     3     1
##  5  18.7     8 360.0   175  3.15 3.440 17.02     0     0     3     2
##  6  18.1     6 225.0   105  2.76 3.460 20.22     1     0     3     1
##  7  14.3     8 360.0   245  3.21 3.570 15.84     0     0     3     4
##  8  24.4     4 146.7    62  3.69 3.190 20.00     1     0     4     2
##  9  22.8     4 140.8    95  3.92 3.150 22.90     1     0     4     2
## 10  19.2     6 167.6   123  3.92 3.440 18.30     1     0     4     4
## # ... with 22 more rows
```



## Escritura de Archivos  | Función `write_sas()`


```r
# Escritura del dataframe `mtcars` a un archivo SAS
write_sas(mtcars, "data/mtcars.sas7bdat")
```




