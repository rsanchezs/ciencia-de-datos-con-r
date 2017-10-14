


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

```
Parsed with column specification:
cols(
  .default = col_character(),
  WR_DOC_ID = col_integer(),
  YEAR_APPLIED = col_integer(),
  CFS = col_double(),
  GPM = col_double(),
  DOMESTIC_UNITS = col_integer(),
  ACRE_FEET = col_double(),
  ACRE_IRR = col_double(),
  WRIA_NUMBER = col_integer(),
  Latitude1 = col_double(),
  Longitude1 = col_double()
)
```

```
See spec(...) for full column specifications.
```

__Observemos__ que cuando ejecutamos la función `read_csv` muestra por la consola información relativa al nombre y tipo de cada columna. Esto es una característica muy útil en `readr`.
  
Podemos pasar un archivo csv en una sola línea de código. Esto es útil para experimentar con `readr` y para crear ejemplos reproducibles que podemos compartir con otros:



```r
read_csv("a,b,c
1,2,3
4,5,6")
```

```
# A tibble: 2 � 3
      a     b     c
  <int> <int> <int>
1     1     2     3
2     4     5     6
```


En ambos casos `read_csv()` usa la primera línea como nombre de las columnas, lo que es una convención generalizada. Existen dos situaciones en las que estaríamos interesados en modificar este comportamiento:

1. En ocasiones existen unas pocas líneas de metadatos en la cabecera del archivo. Podemos hacer uso de `skip=n` para descartar las `n` primeras lineas; o usar `comment = "#"` para eliminar todas las líneas que empiezan con `#`.

    

```r
read_csv("La primera linea de metadatos
  La segunda linea de metadatos
  x,y,z
  1,2,3", skip = 2)
```

```
# A tibble: 1 � 3
      x     y     z
  <int> <int> <int>
1     1     2     3
```

```r
read_csv("# Un comentario que deseamos eliminar
  x,y,z
  1,2,3", comment = "#")
```

```
Warning: closing unused connection 5 (https://es.wikipedia.org/wiki/
Anexo:PaÃ­ses_y_territorios_dependientes_por_poblaciÃ³n)
```

```
# A tibble: 1 � 3
      x     y     z
  <int> <int> <int>
1     1     2     3
```

2. Los datos podrían no contener columnas con nombres. En esta situación podemos hacer uso del argumento `col_names=FALSE` para indicar a `read_csv()` que no trate la primera linea como cabecera, y en lugar etiquete secuencialmente de `X1`a `Xn`:


```r
read_csv("1,2,3\n4,5,6", col_names = FALSE)
```

```
# A tibble: 2 � 3
     X1    X2    X3
  <int> <int> <int>
1     1     2     3
2     4     5     6
```

__Nota__ que hemos usado `"\n"` para añadir una nueva linea.

Alternativamente, podemos pasar a `col_names` un vector de caracteres que será      usado para los nombres de las columnas:
  

```r
read_csv("1,2,3\n4,5,6", col_names = c("x", "y", "z"))
```

```
# A tibble: 2 � 3
      x     y     z
  <int> <int> <int>
1     1     2     3
2     4     5     6
```


Otro argumento de gran utilidad es `na`, que especifica el valor (o valores) que son usados para representar los valores desconocidos en nuestro archivo:


```r
read_csv("a,b,c\n1,2,#N/A", na = "#N/A")
```

```
# A tibble: 1 � 3
      a     b     c
  <int> <int> <chr>
1     1     2  <NA>
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
hoja_calculo_xlsx <- read_excel("data/Water_Right_Applications.xlsx")
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P1337 / R1337C16: got '27'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P1423 / R1423C16: got '2910'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P1599 / R1599C16: got '940-D'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P1601 / R1601C16: got '3105'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P1603 / R1603C16: got '4646'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P1604 / R1604C16: got '5318'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P1686 / R1686C16: got '8542'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P1986 / R1986C16: got '3877'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P1987 / R1987C16: got '5598'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P1988 / R1988C16: got '6341'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P2036 / R2036C16: got '672'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P2132 / R2132C16: got '10416(A)'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P2133 / R2133C16: got '10416(D)'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P2166 / R2166C16: got '3944'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P2486 / R2486C16: got '34'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P2780 / R2780C16: got '2519'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P2831 / R2831C16: got '6471'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P3184 / R3184C16: got '5043'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P3185 / R3185C16: got '4511'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P3216 / R3216C16: got '1095'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P3228 / R3228C16: got '6455'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P3441 / R3441C16: got '7431'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P3656 / R3656C16: got '1022'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P3657 / R3657C16: got '1023'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P3847 / R3847C16: got '1022'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P3848 / R3848C16: got '1023'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P3868 / R3868C16: got '1952'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P3887 / R3887C16: got '10416'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4017 / R4017C16: got '4559'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4061 / R4061C16: got '945'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4117 / R4117C16: got '945'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4132 / R4132C16: got '8761'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4173 / R4173C16: got '945'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4191 / R4191C16: got '4347-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4201 / R4201C16: got '4588'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4229 / R4229C16: got '3871 & 1856'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4230 / R4230C16: got '7325'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4275 / R4275C16: got '5279'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4276 / R4276C16: got '6471'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4310 / R4310C16: got '818'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4338 / R4338C16: got '7680'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4471 / R4471C16: got '9980'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4486 / R4486C16: got '4192'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4487 / R4487C16: got '641'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4510 / R4510C16: got '02485-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4545 / R4545C16: got '748'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4579 / R4579C16: got '8291'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4580 / R4580C16: got '3082'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4594 / R4594C16: got '1175'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4596 / R4596C16: got '1176'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4696 / R4696C16: got '06617A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4706 / R4706C16: got '5585'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4707 / R4707C16: got '8525'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4716 / R4716C16: got '565'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4745 / R4745C16: got '4666-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4769 / R4769C16: got '10867'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4783 / R4783C16: got '410'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4799 / R4799C16: got '99'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4800 / R4800C16: got '216'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4801 / R4801C16: got '135'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4812 / R4812C16: got '2093'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4818 / R4818C16: got '2524'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4829 / R4829C16: got '7742'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4854 / R4854C16: got '4852-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4860 / R4860C16: got '945'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4863 / R4863C16: got '170'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4864 / R4864C16: got '7497-A orig cer'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4870 / R4870C16: got '7103'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4871 / R4871C16: got '82'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4883 / R4883C16: got '1390'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4903 / R4903C16: got '5747'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4908 / R4908C16: got '00401(A)'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4909 / R4909C16: got '216'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4910 / R4910C16: got '99'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4911 / R4911C16: got '135'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4960 / R4960C16: got '7255'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4994 / R4994C16: got '7676'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4995 / R4995C16: got '111'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4996 / R4996C16: got '1378'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5007 / R5007C16: got '03568A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5055 / R5055C16: got '1032-D'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5056 / R5056C16: got '1033-D'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5057 / R5057C16: got '5928-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5069 / R5069C16: got '245'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5081 / R5081C16: got '00401(B)'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5100 / R5100C16: got '355'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5103 / R5103C16: got '682-D'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5151 / R5151C16: got '118'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5159 / R5159C16: got '6046'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5160 / R5160C16: got '7248'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5173 / R5173C16: got '7832'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5174 / R5174C16: got '462'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5179 / R5179C16: got '6200'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5201 / R5201C16: got '5165'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5233 / R5233C16: got '7311'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5267 / R5267C16: got '4616'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5278 / R5278C16: got '406'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5283 / R5283C16: got '281'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5284 / R5284C16: got '159'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5292 / R5292C16: got '848'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5297 / R5297C16: got '4066'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5298 / R5298C16: got '5975'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5308 / R5308C16: got '04407 A(C)'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5313 / R5313C16: got '7742'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5315 / R5315C16: got '116(A)'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5323 / R5323C16: got '4590'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5324 / R5324C16: got '5182'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5325 / R5325C16: got '9550'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5326 / R5326C16: got '9551'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5332 / R5332C16: got '10042'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5333 / R5333C16: got '03281A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5334 / R5334C16: got '7428'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5348 / R5348C16: got '4486-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5357 / R5357C16: got '11090'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5359 / R5359C16: got '9333'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5365 / R5365C16: got '6820'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5366 / R5366C16: got '10860A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5369 / R5369C16: got '5462'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5374 / R5374C16: got '5442'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5377 / R5377C16: got '7742'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5381 / R5381C16: got '6350'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5382 / R5382C16: got '5859'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5385 / R5385C16: got '3020'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5405 / R5405C16: got '5680-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5406 / R5406C16: got '7145-A(B)'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5411 / R5411C16: got '9748'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5419 / R5419C16: got '173(A)'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5427 / R5427C16: got '09421A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5468 / R5468C16: got '7700'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5470 / R5470C16: got '1513'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5471 / R5471C16: got '3058'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5478 / R5478C16: got '5144-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5479 / R5479C16: got '6152-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5489 / R5489C16: got '4398'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5490 / R5490C16: got '614'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5491 / R5491C16: got '613'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5492 / R5492C16: got '500'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5496 / R5496C16: got '76'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5516 / R5516C16: got '116(A)'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5525 / R5525C16: got '2434-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5533 / R5533C16: got '1283'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5537 / R5537C16: got '7613'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5568 / R5568C16: got '3960'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5569 / R5569C16: got '789'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5570 / R5570C16: got '2646'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5572 / R5572C16: got '7298'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5573 / R5573C16: got '5726'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5574 / R5574C16: got '866'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5577 / R5577C16: got '17'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5578 / R5578C16: got '399-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5580 / R5580C16: got '380'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5591 / R5591C16: got '959-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5624 / R5624C16: got '3949'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5635 / R5635C16: got '3106'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5638 / R5638C16: got '5255'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5651 / R5651C16: got '5772'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5656 / R5656C16: got '7689'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5657 / R5657C16: got '7615'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5658 / R5658C16: got '1176'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5659 / R5659C16: got '4291'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5673 / R5673C16: got '2677'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5674 / R5674C16: got '11032A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5676 / R5676C16: got '1848'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5687 / R5687C16: got '1799'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5689 / R5689C16: got '5747'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5690 / R5690C16: got '8796'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5691 / R5691C16: got '01052(C)'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5707 / R5707C16: got '3636-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5727 / R5727C16: got '6210-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5731 / R5731C16: got '09421A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5752 / R5752C16: got '3762'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5766 / R5766C16: got '8696'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5767 / R5767C16: got '8717'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5772 / R5772C16: got '587-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5773 / R5773C16: got '2520-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5774 / R5774C16: got '2567-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5775 / R5775C16: got '6060-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5788 / R5788C16: got '5286'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5791 / R5791C16: got '457'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5794 / R5794C16: got '448'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5797 / R5797C16: got '406'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5809 / R5809C16: got '543-D'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5810 / R5810C16: got '544-D'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5812 / R5812C16: got '2934'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5824 / R5824C16: got '3873'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5825 / R5825C16: got '1147'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5826 / R5826C16: got '1142'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5829 / R5829C16: got '8455'
```

```r
hoja_calculo_xlsx
```

```
# A tibble: 5,836 � 25
   WR_DOC_ID DOCUMENT_NUMBER DOCUMENT_TYPE PURPOSE_CODE_LIST
       <dbl>           <chr>         <chr>             <chr>
1    2229352       S1-*04254        NewApp             CI MU
2    2085332        R4-10948        NewApp                IR
3    2285593        S1-13219        NewApp                MU
4    2285597       G1-*12139        NewApp                DM
5    2285599       G1-*12141        NewApp                DM
6    2283433        G3-20099        NewApp                CI
7    2283437        G3-20191        NewApp                MU
8    2283438        G3-20192        NewApp                MU
9    6765211        S1-20171        NewApp                DM
10   2285603        G1-20257        NewApp                DM
# ... with 5,826 more rows, and 21 more variables:
#   PERSON_LAST_OR_ORGANIZATION_NAME <chr>, PRIORITY_DATE <dttm>,
#   YEAR_APPLIED <dbl>, CFS <dbl>, GPM <dbl>, DOMESTIC_UNITS <dbl>,
#   ACRE_FEET <dbl>, ACRE_IRR <dbl>, COUNTY_NAME <chr>, WRIA_NUMBER <dbl>,
#   WATERSHED <chr>, CERT_NUM <lgl>, TRS <chr>, QUAD_DESIGNATION <chr>,
#   SOURCE_NAME <chr>, TRIBUTARY_NAME <chr>, IMAGE_URL <chr>,
#   MAP_URL <chr>, Latitude1 <chr>, Longitude1 <chr>, Location <chr>
```


Observemos que en el siguiente ejemplo a pesar que la extensión del archivo es `xls` utilizamos la misma función que en el caso anterior:



```r
hoja_calculo_xls <- read_excel("data/Water_Right_Applications.xls")
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P1337 / R1337C16: got '27'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P1423 / R1423C16: got '2910'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P1599 / R1599C16: got '940-D'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P1601 / R1601C16: got '3105'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P1603 / R1603C16: got '4646'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P1604 / R1604C16: got '5318'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P1686 / R1686C16: got '8542'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P1986 / R1986C16: got '3877'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P1987 / R1987C16: got '5598'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P1988 / R1988C16: got '6341'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P2036 / R2036C16: got '672'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P2132 / R2132C16: got '10416(A)'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P2133 / R2133C16: got '10416(D)'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P2166 / R2166C16: got '3944'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P2486 / R2486C16: got '34'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P2780 / R2780C16: got '2519'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P2831 / R2831C16: got '6471'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P3184 / R3184C16: got '5043'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P3185 / R3185C16: got '4511'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P3216 / R3216C16: got '1095'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P3228 / R3228C16: got '6455'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P3441 / R3441C16: got '7431'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P3656 / R3656C16: got '1022'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P3657 / R3657C16: got '1023'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P3847 / R3847C16: got '1022'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P3848 / R3848C16: got '1023'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P3868 / R3868C16: got '1952'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P3887 / R3887C16: got '10416'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4017 / R4017C16: got '4559'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4061 / R4061C16: got '945'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4117 / R4117C16: got '945'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4132 / R4132C16: got '8761'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4173 / R4173C16: got '945'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4191 / R4191C16: got '4347-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4201 / R4201C16: got '4588'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4229 / R4229C16: got '3871 & 1856'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4230 / R4230C16: got '7325'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4275 / R4275C16: got '5279'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4276 / R4276C16: got '6471'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4310 / R4310C16: got '818'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4338 / R4338C16: got '7680'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4471 / R4471C16: got '9980'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4486 / R4486C16: got '4192'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4487 / R4487C16: got '641'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4510 / R4510C16: got '02485-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4545 / R4545C16: got '748'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4579 / R4579C16: got '8291'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4580 / R4580C16: got '3082'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4594 / R4594C16: got '1175'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4596 / R4596C16: got '1176'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4696 / R4696C16: got '06617A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4706 / R4706C16: got '5585'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4707 / R4707C16: got '8525'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4716 / R4716C16: got '565'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4745 / R4745C16: got '4666-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4769 / R4769C16: got '10867'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4783 / R4783C16: got '410'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4799 / R4799C16: got '99'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4800 / R4800C16: got '216'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4801 / R4801C16: got '135'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4812 / R4812C16: got '2093'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4818 / R4818C16: got '2524'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4829 / R4829C16: got '7742'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4854 / R4854C16: got '4852-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4860 / R4860C16: got '945'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4863 / R4863C16: got '170'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4864 / R4864C16: got '7497-A orig cer'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4870 / R4870C16: got '7103'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4871 / R4871C16: got '82'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4883 / R4883C16: got '1390'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4903 / R4903C16: got '5747'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4908 / R4908C16: got '00401(A)'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4909 / R4909C16: got '216'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4910 / R4910C16: got '99'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4911 / R4911C16: got '135'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4960 / R4960C16: got '7255'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4994 / R4994C16: got '7676'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4995 / R4995C16: got '111'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P4996 / R4996C16: got '1378'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5007 / R5007C16: got '03568A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5055 / R5055C16: got '1032-D'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5056 / R5056C16: got '1033-D'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5057 / R5057C16: got '5928-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5069 / R5069C16: got '245'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5081 / R5081C16: got '00401(B)'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5100 / R5100C16: got '355'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5103 / R5103C16: got '682-D'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5151 / R5151C16: got '118'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5159 / R5159C16: got '6046'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5160 / R5160C16: got '7248'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5173 / R5173C16: got '7832'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5174 / R5174C16: got '462'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5179 / R5179C16: got '6200'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5201 / R5201C16: got '5165'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5233 / R5233C16: got '7311'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5267 / R5267C16: got '4616'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5278 / R5278C16: got '406'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5283 / R5283C16: got '281'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5284 / R5284C16: got '159'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5292 / R5292C16: got '848'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5297 / R5297C16: got '4066'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5298 / R5298C16: got '5975'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5308 / R5308C16: got '04407 A(C)'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5313 / R5313C16: got '7742'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5315 / R5315C16: got '116(A)'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5323 / R5323C16: got '4590'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5324 / R5324C16: got '5182'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5325 / R5325C16: got '9550'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5326 / R5326C16: got '9551'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5332 / R5332C16: got '10042'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5333 / R5333C16: got '03281A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5334 / R5334C16: got '7428'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5348 / R5348C16: got '4486-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5357 / R5357C16: got '11090'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5359 / R5359C16: got '9333'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5365 / R5365C16: got '6820'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5366 / R5366C16: got '10860A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5369 / R5369C16: got '5462'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5374 / R5374C16: got '5442'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5377 / R5377C16: got '7742'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5381 / R5381C16: got '6350'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5382 / R5382C16: got '5859'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5385 / R5385C16: got '3020'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5405 / R5405C16: got '5680-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5406 / R5406C16: got '7145-A(B)'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5411 / R5411C16: got '9748'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5419 / R5419C16: got '173(A)'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5427 / R5427C16: got '09421A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5468 / R5468C16: got '7700'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5470 / R5470C16: got '1513'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5471 / R5471C16: got '3058'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5478 / R5478C16: got '5144-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5479 / R5479C16: got '6152-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5489 / R5489C16: got '4398'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5490 / R5490C16: got '614'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5491 / R5491C16: got '613'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5492 / R5492C16: got '500'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5496 / R5496C16: got '76'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5516 / R5516C16: got '116(A)'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5525 / R5525C16: got '2434-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5533 / R5533C16: got '1283'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5537 / R5537C16: got '7613'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5568 / R5568C16: got '3960'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5569 / R5569C16: got '789'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5570 / R5570C16: got '2646'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5572 / R5572C16: got '7298'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5573 / R5573C16: got '5726'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5574 / R5574C16: got '866'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5577 / R5577C16: got '17'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5578 / R5578C16: got '399-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5580 / R5580C16: got '380'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5591 / R5591C16: got '959-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5624 / R5624C16: got '3949'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5635 / R5635C16: got '3106'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5638 / R5638C16: got '5255'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5651 / R5651C16: got '5772'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5656 / R5656C16: got '7689'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5657 / R5657C16: got '7615'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5658 / R5658C16: got '1176'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5659 / R5659C16: got '4291'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5673 / R5673C16: got '2677'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5674 / R5674C16: got '11032A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5676 / R5676C16: got '1848'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5687 / R5687C16: got '1799'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5689 / R5689C16: got '5747'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5690 / R5690C16: got '8796'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5691 / R5691C16: got '01052(C)'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5707 / R5707C16: got '3636-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5727 / R5727C16: got '6210-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5731 / R5731C16: got '09421A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5752 / R5752C16: got '3762'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5766 / R5766C16: got '8696'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5767 / R5767C16: got '8717'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5772 / R5772C16: got '587-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5773 / R5773C16: got '2520-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5774 / R5774C16: got '2567-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5775 / R5775C16: got '6060-A'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5788 / R5788C16: got '5286'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5791 / R5791C16: got '457'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5794 / R5794C16: got '448'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5797 / R5797C16: got '406'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5809 / R5809C16: got '543-D'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5810 / R5810C16: got '544-D'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5812 / R5812C16: got '2934'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5824 / R5824C16: got '3873'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5825 / R5825C16: got '1147'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5826 / R5826C16: got '1142'
```

```
Warning in read_fun(path = path, sheet = sheet, limits = limits, shim =
shim, : Expecting logical in P5829 / R5829C16: got '8455'
```

```r
#Mostramos la hoja de calculo
head(hoja_calculo_xls)
```

```
# A tibble: 6 � 25
  WR_DOC_ID DOCUMENT_NUMBER DOCUMENT_TYPE PURPOSE_CODE_LIST
      <dbl>           <chr>         <chr>             <chr>
1   2229352       S1-*04254        NewApp             CI MU
2   2085332        R4-10948        NewApp                IR
3   2285593        S1-13219        NewApp                MU
4   2285597       G1-*12139        NewApp                DM
5   2285599       G1-*12141        NewApp                DM
6   2283433        G3-20099        NewApp                CI
# ... with 21 more variables: PERSON_LAST_OR_ORGANIZATION_NAME <chr>,
#   PRIORITY_DATE <dttm>, YEAR_APPLIED <dbl>, CFS <dbl>, GPM <dbl>,
#   DOMESTIC_UNITS <dbl>, ACRE_FEET <dbl>, ACRE_IRR <dbl>,
#   COUNTY_NAME <chr>, WRIA_NUMBER <dbl>, WATERSHED <chr>, CERT_NUM <lgl>,
#   TRS <chr>, QUAD_DESIGNATION <chr>, SOURCE_NAME <chr>,
#   TRIBUTARY_NAME <chr>, IMAGE_URL <chr>, MAP_URL <chr>, Latitude1 <chr>,
#   Longitude1 <chr>, Location <chr>
```



Podemos obtener los nombres de las hojas en el libro con la ayuda de la función `excel_sheets()`:


```r
excel_sheets("data/datasets.xls")
```

```
[1] "iris"     "mtcars"   "chickwts" "quakes"  
```


Es posible seleccionar una hoja de cálculo mediante su nombre o por la posición que ocupa en el libro:


```r
read_excel(path = "data/datasets.xls", sheet = "quakes")
```




```r
read_excel(path = "data/datasets.xlsx", sheet = 2)
```

```
# A tibble: 32 � 11
     mpg   cyl  disp    hp  drat    wt  qsec    vs    am  gear  carb
   <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
1   21.0     6 160.0   110  3.90 2.620 16.46     0     1     4     4
2   21.0     6 160.0   110  3.90 2.875 17.02     0     1     4     4
3   22.8     4 108.0    93  3.85 2.320 18.61     1     1     4     1
4   21.4     6 258.0   110  3.08 3.215 19.44     1     0     3     1
5   18.7     8 360.0   175  3.15 3.440 17.02     0     0     3     2
6   18.1     6 225.0   105  2.76 3.460 20.22     1     0     3     1
7   14.3     8 360.0   245  3.21 3.570 15.84     0     0     3     4
8   24.4     4 146.7    62  3.69 3.190 20.00     1     0     4     2
9   22.8     4 140.8    95  3.92 3.150 22.90     1     0     4     2
10  19.2     6 167.6   123  3.92 3.440 18.30     1     0     4     4
# ... with 22 more rows
```


El argumento `range` de la función `read_excel` nos permite seleccionar un rango de filas y columnas con la misma nomenclatura que utilizamos en Excel:


```r
read_excel(path = "data/datasets.xls", range = "C1:E4")
```

```
# A tibble: 3 � 3
  Petal.Length Petal.Width Species
         <dbl>       <dbl>   <chr>
1          1.4         0.2  setosa
2          1.4         0.2  setosa
3          1.3         0.2  setosa
```

Además, podemos especificar la hoja del libro de la cual queremos extraer un rango y con el símbolo lógico de negación `!` excluir celdas y columnas en nuestra selección:


```r
read_excel(path = "data/datasets.xls", range = "mtcars!B1:D5")
```

```
# A tibble: 4 � 3
    cyl  disp    hp
  <dbl> <dbl> <dbl>
1     6   160   110
2     6   160   110
3     4   108    93
4     6   258   110
```

Por defecto, la función `read_excel` trata los campos vacíos como valores desconocidos `NA`. En caso contrario, debemos especificarlo en el argumento `na`:


```r
head(read_excel(path = "data/datasets.xls", na = "setosa"))
```

```
# A tibble: 6 � 5
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
         <dbl>       <dbl>        <dbl>       <dbl>   <chr>
1          5.1         3.5          1.4         0.2    <NA>
2          4.9         3.0          1.4         0.2    <NA>
3          4.7         3.2          1.3         0.2    <NA>
4          4.6         3.1          1.5         0.2    <NA>
5          5.0         3.6          1.4         0.2    <NA>
6          5.4         3.9          1.7         0.4    <NA>
```

























