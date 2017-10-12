


<!-- ```{r, include=FALSE} -->
<!-- tutorial::go_interactive() -->
<!-- ``` -->


# Lectura de CSV, TXT, HTML y Otros Archivos Comúnes en R

En este apartado veremos funciones para importar datos en R en formato tabular.

## Lectura de Archivos __TXT__ con `read.table()` 

Si disponemos de un archivo con extensión `.txt` o un archivo de texto delimitado por tabuladores, podemos importarlo con facilidad con la función `read.table()`.
A modo de ejemplo, nuestro archivo podría ser como el siguiente:

```{}
1   6   a
2   7   b
3   8   c
4   9   d
5   10  e
```

y podríamos importarlo de la forma siguiente si estuviera en nuestro computador:


```r
# Establecemos el directorio de trabajo
setwd(dir = "data/")
# Lectura de datos con `read.table()`
df <- read.table(file = "archivo_de_texto.txt",header = FALSE)
# Inspeccionamos el resultado
df
```

```
  V1 V2 V3
1  1  6  a
2  2  7  b
3  3  8  c
4  4  9  d
5  5 10  e
```

Aunque también podemos hacerlo desde una página web que contiene los datos. 


```r
# Lectura de datos con `read.table()` desde GitHub
df <- read.table(file="https://raw.githubusercontent.com/rsanchezs/bookCienciaDatosR/master/importar_datos/archivos_comunes/data/archivo_de_texto.txt", header = FALSE)
```

```
Warning in file(file, "rt"): cannot open URL 'https://
raw.githubusercontent.com/rsanchezs/bookCienciaDatosR/master/
importar_datos/archivos_comunes/data/archivo_de_texto.txt': HTTP status was
'404 Not Found'
```

```
Error in file(file, "rt"): cannot open the connection
```

```r
# Inspeccionamos el resultado
df
```

```
  V1 V2 V3
1  1  6  a
2  2  7  b
3  3  8  c
4  4  9  d
5  5 10  e
```


__NOTA:__ Como podemos observar en el primer ejemplo, solo es necesario pasar el nombre del archivo y su extensión entre `""`, puesto que hemos establecido con anterioridad nuestro espacio de trabajo en la carpeta donde se encuentran localizados nuestros datos. No obstante, también tenemos la posibilidad de descargarnos el archivo desde un página que contenga los datos, como muestra el segundo ejemplo.

El argumento `header` especifica si hemos dado nombre a las columnas de nuestro archivo. Por último, cabe señalar que, mediante el uso de esta función, nuestros datos del archivo se convierten en un objeto de tipo `data.frame`. 

Cabe mencionar que la función `read.table()` es la función más importante y común para importar archivos simples de datos en R. Para archivos que no están delimitados por tabuladores, como `.csv` y que veremos en el apartado posterior, usaremos variantes de esta función básica.

Estas variantes son casi idénticas a la función `read.table()` y difieren en solo tres aspectos:

* El símbolo de separación.
* El argumento `header` está establecido a `TRUE` por defecto, lo que nos indica
que la primera línea de nuestro archivo contiene la cabecera con los nombres de nuestras variables.
* El argumento `fill` también esta establecido por defecto a `TRUE`, lo que significa que si una línea tiene una longitud diferente, los campos vacíos serán añadidos implícitamente.

A modo de ejemplo, si nos encontramos con un archivo que utiliza el  símbolo `/` para separar nuestros campos, como en el siguiente archivo:


```{}
1/6/12:01:03/0.50/WORST
2/16/07:42:51/0.32/ BEST
3/19/12:01:29/0.50/"EMPTY"
4/13/03:22:50/0.14/INTERMEDIATE
5/8/09:30:03/0.40/WORST
```


Podemos utilizar el argumento `sep` en la función `read.table()`para indicar que nuestro archivo utiliza este símbolo como delimitador:


```r
# Establecemos el directorio de trabajo
setwd("data/")
# Lectura de datos
df <- read.table(file = "archivo_separado_barra_inversa.txt",
           header = FALSE, 
           sep = "/", 
           strip.white = TRUE, 
           na.strings = "EMPTY")
# Mostramos por pantalla `df
print(df)
```

```
  V1 V2       V3   V4           V5
1  1  6 12:01:03 0.50        WORST
2  2 16 07:42:51 0.32         BEST
3  3 19 12:01:29 0.50         <NA>
4  4 13 03:22:50 0.14 INTERMEDIATE
5  5  8 09:30:03 0.40        WORST
```

El argumento `strip.white` nos permite indicar que los espacios en blanco de un campo de tipo `character` que __no están entrecomillados__ sean eliminados. Este argumento se utiliza en conjunción con el argumento `sep` y únicamente acepta un valor de tipo lógico. El argumento `na.strings` nos permite señalar que valores deberían ser interpretados como valores de tipo `NA`. En nuestro ejemplo, el string "EMPTY" será representado como un valor de tipo `NA`. 

Observemos que el espacio en blanco antes del valor `BEST` en la segunda fila del archivo original ha sido eliminado, que las columnas han sido perfectamente separadas gracias a que lo hemos especificado con la ayuda del argumento `sep` y que el valor "EMPTY" en la fila tres ha sido reemplazado por `NA`. Los puntos decimales no han causado problemas puesto que, "." es el valor por defecto en la función `read.table()`.

Por último, como nuestro conjunto de datos no dispone de cabecera, R ha proporcionado algunos atributos a los mismos, denominándolos `V1`, `V2`,`V3`,`V4` y `V5`.

__NOTA:__ para conocer todos los argumentos que nos proporciona la función `read.table`, recomendamos visitar [Rdocumentation page](https://www.rdocumentation.org/packages/utils/versions/3.4.1/topics/read.table).

##Lectura de Archivos CSV en R

Si nos encontramos con un archivo que separa los valores mediante los símbolos `,` o `;`, nos hallamos ante un archivo de tipo `.csv`. Su contenido podría ser similar al siguiente:

```{}
ID,SCORE,TIME,DECIMAL TIME,CLASS
1,6,12:01:03,0.50,"WORST"
2,16,07:42:51,0.32,"BEST"
3,19,12:01:29,0.50,"BEST"
4,13,03:22:50,0.14,"INTERMEDIATE"
5,8,09:30:03,0.40,"WORST"
```


O bien como este:

```{}
1;6;12:01:03;0,50;"WORST"
2;16;07:42:51;0,32;"BEST"
3;19;12:01:29;0,50;
4;13;03:22:50;0,14; INTERMEDIATE
5;8;09:30:03;0,40;"WORST"
```



Para importar este tipo de archivo en R, podemos utilizar la función `read.table()` en el que tenemos que especificar el carácter separador, o bien utilizar las funciones `read.csv()` o `read.csv2()`. La primera función es utilizada si el separador que utilizamos en nuestro archivo es `,` y la otra si es `;`.

Es importante señalar, que las funciones `read.csv()` o `read.csv2()` son idénticas a la función `read.table()`, con la única diferencia que los argumentos `header` y `fill` están establecidos por defecto a `TRUE`.

Para importar archivos `.csv` que usan como símbolo de separación la coma, podemos hacer uso de la función `read.csv()`, como en el siguiente ejemplo:


```r
# Lectura de datos mediante `read.csv`
df2 <- read.csv("data/delimitado_por_comas.csv",
               quote="\"", 
               stringsAsFactors= TRUE, 
               strip.white = TRUE)

# Inspeccionamos el resultado
df2
```

```
  ID SCORE     TIME DECIMAL.TIME        CLASS
1  1     6 12:01:03         0.50        WORST
2  2    16 07:42:51         0.32         BEST
3  3    19 12:01:29         0.50         BEST
4  4    13 03:22:50         0.14 INTERMEDIATE
5  5     8 09:30:03         0.40        WORST
```

__NOTA:__ mediante el argumento `quote` indicamos si nuestro archivo utiliza un cierto símbolo como comillas, en el ejemplo anterior, hemos utilizado `\"` para asegurarnos que R tiene en cuenta el símbolo que es utilizado para entrecomillar carácteres. En nuestro ejemplo, esto sucede en la quinta columna.

El argumento `stringAsFactors` nos permite especificar si los strings deberían ser convertidos a `factor`. El valor por defecto es `FALSE`.

Para archivos en que los campos son separados mediante punto y coma, haremos uso de la función `read.csv2()` :



```r
# Lectura de datos mediante `read.csv2`
df3 <- read.csv2("data/delimitado_por_punto_y_coma.csv", 
              header = FALSE,  
              quote = "\"", 
              dec = ",", 
              row.names = c("1", "2", "3", "4", "5"), 
              col.names= c("ID", "PUNTUACION", "TIEMPO", "TIEMPO_DECIMAS","CLASIFICACION"), 
              fill = TRUE, 
              strip.white = TRUE, 
              stringsAsFactors=TRUE)
# Inspeccionamos el resultado
df3
```

```
  ID PUNTUACION   TIEMPO TIEMPO_DECIMAS CLASIFICACION
1  1          6 12:01:03           0.50         WORST
2  2         16 07:42:51           0.32          BEST
3  3         19 12:01:29           0.50              
4  4         13 03:22:50           0.14  INTERMEDIATE
5  5          8 09:30:03           0.40         WORST
```

__NOTA:__ el argumento `dec` nos permite especificar el símbolo decimal. Puesto que en nuestro ejemplo usamos comas como separadores decimales en los números lo hemos especificado mediante `dec = ","`. El valor por defecto para este argumento es `.`.

El argumento `col.names`, completado con la función `c()` concatena los nombres de las columnas en un vector, es decir creamos una cabecera en la primera fila. Esto es útil si nuestro archivo no dispone de una cabecera, puesto que R usara por defecto las variables con los nombres V1, V2, ..., etc. De forma similar, el argumento `row.names` especifica los nombres de las observaciones de la primera columna en nuestro conjunto de datos.

En el resultado, podemos observar que mediante los argumentos `col.names`y `row.names` hemos dado nombre a nuestras variables y observaciones, que todos los campos están claramente separados, a pesar que el la tercera fila existe un campo vacío, gracias al uso de `fill=TRUE`. Además, los espacios en blanco de los caracteres no entrecomillados son eliminados, con la ayuda del argumento `string.white`. Por último, los strings son importados como `factor` puesto que asignamos el valor `TRUE` al argumento `stringAsFactors`.


## Uso de la Función `read.delim()` para Otros Delimitadores

En el caso que nos encontremos con un carácter delimitador que es diferente al tabulador, a una coma o punto y coma, podemos hacer uso de las funciones `read.delim()`y `read.delim2()`. Estas funciones son variantes de la función `read.table()`, como lo son las funciones que hemos visto en el apartado anterior.

En consecuencia, tienen mucho en común con la función `read.table()`, excepto por el hecho que asume que la primera línea que es leída es la cabecera con los nombres de las variables. Además, mediante el uso del argumento `fill` establecido a `TRUE` hará que los campos en blanco de las filas de diferente longitud sean añadidos.

Por ejemplo, consideremos el siguiente conjunto de datos:

```{}
1$6$12:01:03$0.50$"WORST"
2$16$07:42:51$0.32$"BEST"
3$19$12:01:29$0.50
4$13$03:22:50$0.14$ INTERMEDIATE
5$8$09:30:03$0.40$ WORST

```

Podemos hacer uso de la función `read.delim()` y `read.delim2()` del modo siguiente:


```r
# Lectura del archivo
df <- read.delim(file = "data/otros_delimitadores_decimales_punto.txt",
                 header = FALSE,
                 sep="$",
                 fill = TRUE)

# Inspeccionamos el resultado
df
```

```
  V1 V2       V3   V4            V5
1  1  6 12:01:03 0.50         WORST
2  2 16 07:42:51 0.32          BEST
3  3 19 12:01:29 0.50              
4  4 13 03:22:50 0.14  INTERMEDIATE
5  5  8 09:30:03 0.40         WORST
```


## Uso del Paquete `readxl` para Lectura Archivos Excel

El paquete `readxl` facilita la importación de archivos Excel en R. Comparado con la mayoría de paquetes existentes (e.g. `gdata`, `xlsx`, `xlsReadWrite`) `readxl` no depende de dependencias externas, por lo tanto es más fácil de instalar y usar en los sistemas operativos. Como en los apartados anteriores es usado para el trabajo de datos en formato tabular. Este paquete forma parte de la colección de paquetes del ecosistema [tidyverse](http://tidyverse.org/) que comparten la misma filosofía y están diseñados para trabajar de forma conjunta.

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
hoja_calculo_xlsx <- read_excel("data/datasets.xlsx")
hoja_calculo_xlsx
```

```
# A tibble: 150 � 5
   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
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


Observemos que en el siguiente ejemplo a pesar que la extensión del archivo es `xls` utilizamos la misma función que en el caso anterior:



```r
hoja_calculo_xls <- read_excel("data/datasets.xls")
#Mostramos la hoja de calculo
hoja_calculo_xls
```

```
# A tibble: 150 � 5
   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
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



Podemos obtener los nombres de las hojas en el libro con la ayuda de la función `excel_sheets()`:


```r
excel_sheets("data/datasets.xlsx")
```

```
[1] "iris"     "mtcars"   "chickwts" "quakes"  
```


Es posible seleccionar una hoja de cálculo mediante su nombre o por la posición que ocupa en el libro:


```r
  read_excel(path = "data/datasets.xlsx", sheet = "chickwts")
```

```
# A tibble: 71 � 2
   weight      feed
    <dbl>     <chr>
1     179 horsebean
2     160 horsebean
3     136 horsebean
4     227 horsebean
5     217 horsebean
6     168 horsebean
7     108 horsebean
8     124 horsebean
9     143 horsebean
10    140 horsebean
# ... with 61 more rows
```




```r
read_excel(path = "data/datasets.xlsx", sheet = 4)
```

```
# A tibble: 1,000 � 5
      lat   long depth   mag stations
    <dbl>  <dbl> <dbl> <dbl>    <dbl>
1  -20.42 181.62   562   4.8       41
2  -20.62 181.03   650   4.2       15
3  -26.00 184.10    42   5.4       43
4  -17.97 181.66   626   4.1       19
5  -20.42 181.96   649   4.0       11
6  -19.68 184.31   195   4.0       12
7  -11.70 166.10    82   4.8       43
8  -28.11 181.93   194   4.4       15
9  -28.74 181.74   211   4.7       35
10 -17.47 179.59   622   4.3       19
# ... with 990 more rows
```


El argumento `range` de la función `read_excel` nos permite seleccionar un rango de filas y columnas con la misma nomenclatura que utilizamos en Excel:


```r
read_excel(path = "data/datasets.xlsx", range = "C1:E4")
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
read_excel(path = "data/datasets.xlsx", range = "mtcars!B1:D5")
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
read_excel(path = "data/datasets.xlsx", na = "setosa")
```

```
# A tibble: 150 � 5
   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
          <dbl>       <dbl>        <dbl>       <dbl>   <chr>
1           5.1         3.5          1.4         0.2    <NA>
2           4.9         3.0          1.4         0.2    <NA>
3           4.7         3.2          1.3         0.2    <NA>
4           4.6         3.1          1.5         0.2    <NA>
5           5.0         3.6          1.4         0.2    <NA>
6           5.4         3.9          1.7         0.4    <NA>
7           4.6         3.4          1.4         0.3    <NA>
8           5.0         3.4          1.5         0.2    <NA>
9           4.4         2.9          1.4         0.2    <NA>
10          4.9         3.1          1.5         0.1    <NA>
# ... with 140 more rows
```



### Lectura de archivos JSON en R

Para importar archivos [JSON](http://json.org/), primero necesitamos instalar y/o cargar el paquete [rjson](https://www.rdocumentation.org/packages/rjson/versions/0.2.15).

Para importar archivos JSON haremos uso de la función `fromJSON()`. Nos podemos encontrar en dos situaciones:

1. Nuestro archivo JSON se encuentre en nuestro directorio de trabajo:


```r
# Instalamos el paquete
install.packages("rjson")
# Cargamos `rjson`
library(rjson)
# Importamos los datos desde un archivo json
JsonData <- fromJSON(file = "data/Water_Right_Applications.json")
```

2. Nuestro archivo está disponible a través de una URL:


```r
# Cargamos `rjson`
library(rjson)
# Importamos los datos desde una URL
JsonData <- fromJSON(file = "URL a nuestro archivo JSON")
```


### Lectura de archivos XML en R

Si deseamos importar archivos [XML](https://es.wikipedia.org/wiki/Extensible_Markup_Language), una de los métodos más fáciles es mediante el uso del paquete [XML](https://www.rdocumentation.org/packages/XML).

Mediante la función `xmlToDataFrame` podemos importar nuestro archivo desde nuestro directorio de trabajo o bien desde una URL:


```r
# Instalamos el paquete XML
install.packages("XML")
# Cargamos el paquete
library(XML)
# Importamos los datos XML y los convertimos a `data.frame`
df <- xmlToDataFrame(doc = "data/Water_Right_Applications.xml")
```


### Lectura de datos de tablas HTML en R

Para importar tabla HTML necesitaremos del paquete `RCurl` en combinación con el
paquete `XML`. Con la ayuda de la función `readHTMLTable` podremos importar nuestros datos en R: 


```r
# Cargamos las librerias
library(XML)
library(RCurl)
```




```r
# Asignamos la URL a `url`
url <- "<una URL>"

# Lectura de la tabla HTML
datos_url <- readHTMLTable(url, 
                           which = 3,
                           stringsAsFactors = FALSE)
```

__NOTA:__ Mediante el argumento `which` especificamos que table importar dentro del documento. Además, por medio de `stringAsFactors = FALSE` hacemos que los strings no sean convertidos al tipo `factor`.
























