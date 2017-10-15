


<!-- ```{r, include=FALSE} -->
<!-- tutorial::go_interactive() -->
<!-- ``` -->



# Lectura de Archivos en Formato Tabular

En este apartado veremos funciones para importar datos en R en formato tabular.



```r
library(tidyverse)
```

## Lectura de Archivos de Texto con `readr`

La mayoría de las funciones del paquete [`readr`](http://readr.tidyverse.org/) están destinadas a convertir [archivos en formato tabular](https://es.wikipedia.org/wiki/Valores_separados_por_comas) en `dataframes`:

*`read_csv()` lee archivos en que las columnas están separadas por comas,`read_csv2()` lee archivos separados por punto y coma (comunes en países donde `,` es usada para separar los decimales en los números),
`read_tsv()` lee archivos separados por tabuladores, y `read_delim()` lee archivos separados por cualquier otro tipo de delimitador.

*`read_fwf()` lee archivos con un ancho fijo. Podemos especificar los campos o por su ancho con `fwf_widths()` o su posición mediante `fwf_positions()`.
`read_table()` lee un tipo de variación de archivos con un ancho fijo donde las columnas están separadas por espacios en blanco.
  
Estas funciones comparten la misma sintaxis: una vez hemos dominado una,  podemos hacer uso de las otras funciones sin dificultad. Para el resto de este capítulo nos centraremos en `read_csv`.  No sólo porque los archivos [csv](https://es.wikipedia.org/wiki/Valores_separados_por_comas) son una de las formas mas comunes de almacenamiento de datos, sino también porque una vez entendamos `read_csv()`, podremos con facilidad aplicar nuestros conocimientos al resto de las otras funciones del paquete `readr`.

El primer argumento en `read_csv()` es el mas importante, puesto que se trata de la localización del archivo que deseamos importar:



```r
df <- read_csv("data/Water_Right_Applications.csv")
```

__Observemos__ que cuando ejecutamos la función `read_csv` muestra por la consola información relativa al nombre y tipo de cada columna. Esto es una característica muy útil en `readr`.
  
Podemos pasar un archivo csv en una sola línea de código. Esto es útil para experimentar con `readr` y para crear ejemplos reproducibles que podemos compartir con otros:



```r
read_csv("a,b,c
1,2,3
4,5,6")
```


En ambos casos `read_csv()` usa la primera línea como nombre de las columnas, lo que es una convención generalizada. Existen dos situaciones en las que estaríamos interesados en modificar este comportamiento:

1. En ocasiones existen unas pocas líneas de metadatos en la cabecera del archivo. Podemos hacer uso de `skip=n` para descartar las `n` primeras lineas; o usar `comment = "#"` para eliminar todas las líneas que empiezan con `#`.

    

```r
read_csv("La primera linea de metadatos
  La segunda linea de metadatos
  x,y,z
  1,2,3", skip = 2)
```


```r
read_csv("# Un comentario que deseamos eliminar
  x,y,z
  1,2,3", comment = "#")
```


2. Los datos podrían no contener columnas con nombres. En esta situación podemos hacer uso del argumento `col_names=FALSE` para indicar a `read_csv()` que no trate la primera linea como cabecera, y en lugar etiquete secuencialmente de `X1`a `Xn`:


```r
read_csv("1,2,3\n4,5,6", col_names = FALSE)
```

__Nota__ que hemos usado `"\n"` para añadir una nueva linea.

Alternativamente, podemos pasar a `col_names` un vector de caracteres que será      usado para los nombres de las columnas:
  

```r
read_csv("1,2,3\n4,5,6", col_names = c("x", "y", "z"))
```


Otro argumento de gran utilidad es `na`, que especifica el valor (o valores) que son usados para representar los valores desconocidos en nuestro archivo:


```r
read_csv("a,b,c\n1,2,#N/A", na = "#N/A")
```

Esto es todo lo que necesitamos saber para importar ~75% de archivos csv que nos encontraremos en la práctica. Además, podemos fácilmente adaptar lo que hemos aprendido en esta sección para leer archivos separados por tabulados con `read_tsv()` y archivos con un ancho fijo con `read_fwf()`.
  


## Lectura Archivos Excel con `readxl` 

El paquete [`readxl`](http://readxl.tidyverse.org/) facilita la importación de archivos Excel en R. Comparado con la mayoría de paquetes existentes (e.g. `gdata`, `xlsx`, `xlsReadWrite`) `readxl` no requiere de dependencias externas, por lo tanto es más fácil de instalar y usar en los sistemas operativos. Como en los apartados anteriores es usado para el trabajo de datos en formato tabular. Este paquete forma parte de la colección de paquetes del ecosistema [tidyverse](http://tidyverse.org/) que comparten la misma filosofía y están diseñados para trabajar de forma conjunta.

### Instalación

El modo más fácil de instalar la última versión desde CRAN es instalar el conjunto de paquetes __tidyverse__.


```r
install.packages("tidyverse")
```

Alternativamente, podemos instalar solo `readxl` desde CRAN mediante la siguiente línea de código:


```r
install.packages("readxl")
```

O instalar la versión en desarrollo desde GitHub:


```r
# install.packages("devtools")
devtools::install_github("tidyverse/readxl")
```

__NOTA:__ Para esta última forma debemos tener instalado el paquete `devtools`.


### Uso del paquete `readxl`

En primer lugar tendremos que cargarlo:


```r
# Cargamos el paquete
library(readxl)
```



La función `read_excel()` nos permite leer los archivos tanto si son `xls` o `xlsx` :



```r
hoja_calculo_xlsx <- read_excel("data/datasets.xlsx", n_max = 6)
hoja_calculo_xlsx
```


Observemos que en el siguiente ejemplo a pesar que la extensión del archivo es `xls` utilizamos la misma función que en el caso anterior:



```r
hoja_calculo_xls <- read_excel("data/datasets.xls")
#Mostramos la hoja de calculo
head(hoja_calculo_xls)
```



Podemos obtener los nombres de las hojas en el libro con la ayuda de la función `excel_sheets()`:


```r
excel_sheets("data/datasets.xls")
```


Es posible seleccionar una hoja de cálculo mediante su nombre o por la posición que ocupa en el libro:


```r
read_excel(path = "data/datasets.xls", sheet = "iris", n_max = 8)
```




```r
read_excel(path = "data/datasets.xlsx", sheet = 1, n_max = 8)
```


El argumento `range` de la función `read_excel` nos permite seleccionar un rango de filas y columnas con la misma nomenclatura que utilizamos en Excel:


```r
read_excel(path = "data/datasets.xls", range = "C1:E4")
```

Además, podemos especificar la hoja del libro de la cual queremos extraer un rango y con el símbolo lógico de negación `!` excluir celdas y columnas en nuestra selección:


```r
read_excel(path = "data/datasets.xls", range = "iris!B1:D5")
```

Por defecto, la función `read_excel` trata los campos vacíos como valores desconocidos `NA`. En caso contrario, debemos especificarlo en el argumento `na`:


```r
head(read_excel(path = "data/datasets.xls", na = "setosa"))
```

























