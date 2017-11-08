---
title: "Paquetes"
author: "Rubén Sánchez Sancho"
date: "06 de Noviembre de 2017"
output: 
  ioslides_presentation:
        df_print : tibble
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
  width : 60%;
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

<!-- <style> -->
<!-- table.rmdtable th {  -->
<!--    color: #515151;  -->
<!--    background: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(40%, #CED815), color-stop(80%, #989e1d)) no-repeat;  -->
<!--    background: -webkit-linear-gradient(top, #CED815 40%, #989e1d 80%) no-repeat;  -->
<!--    background: -moz-linear-gradient(top, #CED815 40%, #989e1d 80%) no-repeat;  -->
<!--    background: -o-linear-gradient(top, #CED815 40%, #989e1d 80%) no-repeat;  -->
<!--    background: linear-gradient(top, #CED815 40%, #989e1d 80%) no-repeat;  -->
<!--  }  -->
<!-- </style> -->

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






## ¿Qué són los paquetes? | Acceder a `DESCRIPTION` con `packageDescription("package")` {.build}



```r
packageDescription("stats")
```

```
## Package: stats
## Version: 3.4.2
## Priority: base
## Title: The R Stats Package
## Author: R Core Team and contributors worldwide
## Maintainer: R Core Team <R-core@r-project.org>
## Description: R statistical functions.
## License: Part of R 3.4.2
## Imports: utils, grDevices, graphics
## Suggests: MASS, Matrix, SuppDists, methods, stats4
## NeedsCompilation: yes
## Built: R 3.4.2; x86_64-w64-mingw32; 2017-09-28 09:43:01 UTC;
##        windows
## 
## -- File: D:/Ruben/Documents/R-3.4.2/library/stats/Meta/package.rds
```

## ¿Qué són los paquetes? | Acceder a la documentación con `help(package = "package")`



```r
help(package = "stats")
```


## ¿Cómo Instalar un Paquete R? | Instalación de Paquetes desde CRAN {.build}


```r
install.packages("tidyverse")
```


```
## Installing package into 'C:/Users/Ruben/Documents/R/win-library/3.4'
## (as 'lib' is unspecified)
```

```
## Warning in readRDS(dest): lzma decoding result 10
```

```
## also installing the dependencies 'callr', 'clipr', 'cli', 'crayon', 'reprex'
```

```
## 
##   There is a binary version available but the source version is
##   later:
##           binary source needs_compilation
## tidyverse  1.1.1  1.2.0             FALSE
## 
## package 'callr' successfully unpacked and MD5 sums checked
## package 'clipr' successfully unpacked and MD5 sums checked
## package 'cli' successfully unpacked and MD5 sums checked
## package 'crayon' successfully unpacked and MD5 sums checked
## package 'reprex' successfully unpacked and MD5 sums checked
## 
## The downloaded binary packages are in
## 	C:\Users\Ruben\AppData\Local\Temp\RtmpEztpcI\downloaded_packages
```

```
## installing the source package 'tidyverse'
```


## ¿Cómo Instalar un Paquete R? | Instalación de Varios Paquetes a la vez



```r
install.packages(c("tidyverse", "nycflights13", "gapminder", "Lahman"))
```


## Instalación de Paquetes con 


```r
# Instalación del paquete `devtools`
install.packages("devtools")
```


## Instalación de Paquetes con | Funciones de Instalación

- `install_bioc()` desde [Bioconductor](https://www.bioconductor.org/),
- `install_bitbucket()` desde [Bitbucket](https://bitbucket.org/),
- `install_cran()` desde [CRAN](https://cran.r-project.org/index.html),
- `install_git()`desde un repositorio [git](https://git-scm.com/),
- `install_github()` desde [GitHub](https://github.com/),
- `install_local()` desde un archivo alojado en nuestro equipo,
- `install_svn()` desde un repositorio [SVN](https://subversion.apache.org/),
- `install_url()` desde una URL, y
- `install_version()` para una versión específica de un paquete de CRAN.


## Instalación de Paquetes con | Funciones de Instalación

__Ejemplo:__


```r
# Cargamos libreria `devtools`
library(devtools)
# Instalamos la version en desarrollo de`tidyverse` desde GitHub
install_github("hadley/tidyverse")
```







