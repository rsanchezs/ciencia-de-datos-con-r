<script src="https://cdn.datacamp.com/datacamp-light-latest.min.js"></script>







# Lectura de SAS, SPSS y Otros Programas Estadísticos en R

Como ya sabemos, R es un lenguaje de programación y un entorno de computación para computación estadística. Su naturaleza de código fuente abierto ha hecho que en los últimos años prolifere ante alternativas a programas estadísticos de tipo comercial, como SPSS, SAS, etc.

En esta sección, veremos como podemos importar datos desde programas estadísticos avanzados. Así mismo, examinaremos los paquetes que necesitamos instalar para leer nuestros datos en R, de igual manera que hemos hechos con los datos almacenados en archivos Excel o JSON.

## Lectura de Archivos SPSS en R

Si somos usuarios del programa SPSS y deseamos importar nuestros archivos SPSS a R, en primer lugar necesitaremos instalar el paquete [haven](http://haven.tidyverse.org/) que forma parte del ecosistema [tidyverse](http://tidyverse.org/). 

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIEluc3RhbGFtb3MgZWwgcGFxdWV0ZVxuaW5zdGFsbC5wYWNrYWdlcyhcImhhdmVuXCIpXG4jIENhcmdhbW9zIGVsIHBhcXVldGVcbmxpYnJhcnkoaGF2ZW4pIn0=</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIExlY3R1cmEgZGUgbG9zIGRhdG9zIFNQU1NcbnJlYWRfc2F2KFwiZGF0YS9DaGlsZF9EYXRhLnNhdlwiKSJ9</div>

## Lectura de Archivos Stata en R

Como en el caso anterior utilizaremos el paquete `haven` y utilizaremos la función `read_stata()`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIEluc3RhbGFtb3MgZWwgcGFxdWV0ZVxuaW5zdGFsbC5wYWNrYWdlcyhcImhhdmVuXCIpXG4jIENhcmdhbW9zIGVsIHBhcXVldGVcbmxpYnJhcnkoaGF2ZW4pIn0=</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIExlY3R1cmEgZGUgbG9zIGRhdG9zIFNUQVRBXG5yZWFkX3N0YXRhKFwiZGF0YS9NaWxrX1Byb2R1Y3Rpb24uZHRhXCIpIn0=</div>


## Lectura de Archivos SAS en R

De igual manera que en los dos casos anteriores utilizaremos el paquete `haven`, pero en este caso utilizaremos la función `read_sas()` para leer nuestros datos SAS dentro de R:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIEluc3RhbGFtb3MgZWwgcGFxdWV0ZVxuaW5zdGFsbC5wYWNrYWdlcyhcImhhdmVuXCIpXG4jIENhcmdhbW9zIGVsIHBhcXVldGVcbmxpYnJhcnkoaGF2ZW4pIn0=</div>

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIExlY3R1cmEgZGUgbG9zIGRhdG9zIFNUQVRBXG5yZWFkX3NhcyhcImRhdGEvaXJpcy5zYXM3YmRhdFwiKSJ9</div>


## Lectura de Archivos Systat en R

Si deseamos importar archivos Systat en R, en esta caso tenemos que hacer uso del paquete [foreign](https://cran.r-project.org/web/packages/foreign/foreign.pdf), como podemos ver a continuación:


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIEluc3RhbGFtb3MgZWwgcGFxdWV0ZSBgZm9yZWluZ2Bcbmluc3RhbGwucGFja2FnZXMoXCJmb3JlaWduXCIpXG4jIEFjdGl2YW1vcyBsYSBsaWJyZXJpYSBgZm9yZWlnbmBcbmxpYnJhcnkoZm9yZWlnbilcbiMgTGVlbW9zIGxvcyBkYXRvcyBTeXN0YXRcbmRhdG9zIDwtIHJlYWQuc3lzdGF0KFwiPHJ1dGEgYXJjaGl2bz5cIikifQ==</div>

## Lectura de Archivos Minitab en R

De igual manera que en el caso anterior utilizaremos el mismo paquete, pero en este caso utilizaremos la función `read.mtp()`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIEluc3RhbGFtb3MgZWwgcGFxdWV0ZSBgZm9yZWluZ2Bcbmluc3RhbGwucGFja2FnZXMoXCJmb3JlaWduXCIpXG4jIEFjdGl2YW1vcyBsYSBsaWJyZXJpYSBgZm9yZWlnbmBcbmxpYnJhcnkoZm9yZWlnbilcbiMgTGVlbW9zIGxvcyBkYXRvcyBTeXN0YXRcbmRhdG9zIDwtIHJlYWQubXRwKFwiPHJ1dGEgYXJjaGl2bz5cIikifQ==</div>



















