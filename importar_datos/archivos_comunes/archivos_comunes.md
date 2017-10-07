<script src="https://cdn.datacamp.com/datacamp-light-latest.min.js"></script>







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

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIEVzdGFibGVjZW1vcyBlbCBkaXJlY3RvcmlvIGRlIHRyYWJham9cbnNldHdkKGRpciA9IFwiZGF0YS9cIilcbiMgTGVjdHVyYSBkZSBkYXRvcyBjb24gYHJlYWQudGFibGUoKWBcbmRmIDwtIHJlYWQudGFibGUoZmlsZSA9IFwiYXJjaGl2b19kZV90ZXh0by50eHRcIixoZWFkZXIgPSBGQUxTRSlcbiMgSW5zcGVjY2lvbmFtb3MgZWwgcmVzdWx0YWRvXG5kZiJ9</div>

Aunque también podemos hacerlo desde una página web que contiene los datos. 

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIExlY3R1cmEgZGUgZGF0b3MgY29uIGByZWFkLnRhYmxlKClgIGRlc2RlIEdpdEh1YlxuZGYgPC0gcmVhZC50YWJsZShmaWxlPVwiaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL3JzYW5jaGV6cy9ib29rQ2llbmNpYURhdG9zUi9tYXN0ZXIvaW1wb3J0YXJfZGF0b3MvYXJjaGl2b3NfY29tdW5lcy9kYXRhL2FyY2hpdm9fZGVfdGV4dG8udHh0XCIsIGhlYWRlciA9IEZBTFNFKVxuIyBJbnNwZWNjaW9uYW1vcyBlbCByZXN1bHRhZG9cbmRmIn0=</div>


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

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIEVzdGFibGVjZW1vcyBlbCBkaXJlY3RvcmlvIGRlIHRyYWJham9cbnNldHdkKFwiZGF0YS9cIilcbiMgTGVjdHVyYSBkZSBkYXRvc1xuZGYgPC0gcmVhZC50YWJsZShmaWxlID0gXCJhcmNoaXZvX3NlcGFyYWRvX2JhcnJhX2ludmVyc2EudHh0XCIsXG4gICAgICAgICAgIGhlYWRlciA9IEZBTFNFLCBcbiAgICAgICAgICAgc2VwID0gXCIvXCIsIFxuICAgICAgICAgICBzdHJpcC53aGl0ZSA9IFRSVUUsIFxuICAgICAgICAgICBuYS5zdHJpbmdzID0gXCJFTVBUWVwiKVxuIyBNb3N0cmFtb3MgcG9yIHBhbnRhbGxhIGBkZlxucHJpbnQoZGYpIn0=</div>

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

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIExlY3R1cmEgZGUgZGF0b3MgbWVkaWFudGUgYHJlYWQuY3N2YFxuZGYyIDwtIHJlYWQuY3N2KFwiZGF0YS9kZWxpbWl0YWRvX3Bvcl9jb21hcy5jc3ZcIixcbiAgICAgICAgICAgICAgIHF1b3RlPVwiXFxcIlwiLCBcbiAgICAgICAgICAgICAgIHN0cmluZ3NBc0ZhY3RvcnM9IFRSVUUsIFxuICAgICAgICAgICAgICAgc3RyaXAud2hpdGUgPSBUUlVFKVxuXG4jIEluc3BlY2Npb25hbW9zIGVsIHJlc3VsdGFkb1xuZGYyIn0=</div>

__NOTA:__ mediante el argumento `quote` indicamos si nuestro archivo utiliza un cierto símbolo como comillas, en el ejemplo anterior, hemos utilizado `\"` para asegurarnos que R tiene en cuenta el símbolo que es utilizado para entrecomillar carácteres. En nuestro ejemplo, esto sucede en la quinta columna.

El argumento `stringAsFactors` nos permite especificar si los strings deberían ser convertidos a `factor`. El valor por defecto es `FALSE`.

Para archivos en que los campos son separados mediante punto y coma, haremos uso de la función `read.csv2()` :


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIExlY3R1cmEgZGUgZGF0b3MgbWVkaWFudGUgYHJlYWQuY3N2MmBcbmRmMyA8LSByZWFkLmNzdjIoXCJkYXRhL2RlbGltaXRhZG9fcG9yX3B1bnRvX3lfY29tYS5jc3ZcIiwgXG4gICAgICAgICAgICAgIGhlYWRlciA9IEZBTFNFLCAgXG4gICAgICAgICAgICAgIHF1b3RlID0gXCJcXFwiXCIsIFxuICAgICAgICAgICAgICBkZWMgPSBcIixcIiwgXG4gICAgICAgICAgICAgIHJvdy5uYW1lcyA9IGMoXCIxXCIsIFwiMlwiLCBcIjNcIiwgXCI0XCIsIFwiNVwiKSwgXG4gICAgICAgICAgICAgIGNvbC5uYW1lcz0gYyhcIklEXCIsIFwiUFVOVFVBQ0lPTlwiLCBcIlRJRU1QT1wiLCBcIlRJRU1QT19ERUNJTUFTXCIsXCJDTEFTSUZJQ0FDSU9OXCIpLCBcbiAgICAgICAgICAgICAgZmlsbCA9IFRSVUUsIFxuICAgICAgICAgICAgICBzdHJpcC53aGl0ZSA9IFRSVUUsIFxuICAgICAgICAgICAgICBzdHJpbmdzQXNGYWN0b3JzPVRSVUUpXG4jIEluc3BlY2Npb25hbW9zIGVsIHJlc3VsdGFkb1xuZGYzIn0=</div>

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

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIExlY3R1cmEgZGVsIGFyY2hpdm9cbmRmIDwtIHJlYWQuZGVsaW0oZmlsZSA9IFwiZGF0YS9vdHJvc19kZWxpbWl0YWRvcmVzX2RlY2ltYWxlc19wdW50by50eHRcIixcbiAgICAgICAgICAgICAgICAgaGVhZGVyID0gRkFMU0UsXG4gICAgICAgICAgICAgICAgIHNlcD1cIiRcIixcbiAgICAgICAgICAgICAgICAgZmlsbCA9IFRSVUUpXG5cbiMgSW5zcGVjY2lvbmFtb3MgZWwgcmVzdWx0YWRvXG5kZiJ9</div>


## Uso del Paquete `readxl` para Lectura Archivos Excel

El paquete `readxl` facilita la importación de archivos Excel en R. Comparado con la mayoría de paquetes existentes (e.g. `gdata`, `xlsx`, `xlsReadWrite`) `readxl` no depende de dependencias externas, por lo tanto es más fácil de instalar y usar en los sistemas operativos. Como en los apartados anteriores es usado para el trabajo de datos en formato tabular. Este paquete forma parte de la colección de paquetes del ecosistema [tidyverse](http://tidyverse.org/) que comparten la misma filosofía y están diseñados para trabajar de forma conjunta.

### Instalación

El modo más fácil de instalar la última versión desde CRAN es instalar el conjunto de paquetes __tidyverse__.

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJpbnN0YWxsLnBhY2thZ2VzKFwidGlkeXZlcnNlXCIpIn0=</div>

Alternativamente, podemos instalar solo `readxl` desde CRAN mediante la siguiente línea de código:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJpbnN0YWxsLnBhY2thZ2VzKFwicmVhZHhsXCIpIn0=</div>

O instalar la versión en desarrollo desde GitHub:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIGluc3RhbGwucGFja2FnZXMoXCJkZXZ0b29sc1wiKVxuZGV2dG9vbHM6Omluc3RhbGxfZ2l0aHViKFwidGlkeXZlcnNlL3JlYWR4bFwiKSJ9</div>

__NOTA:__ Para esta última forma debemos tener instalado el paquete `devtools`.


### Uso del paquete `readxl`

En primer lugar tendremos que cargarlo:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIENhcmdhbW9zIGVsIHBhcXVldGVcbmxpYnJhcnkocmVhZHhsKSJ9</div>



La función `read_excel()` nos permite leer los archivos tanto si son `xls` o `xlsx` :


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJob2phX2NhbGN1bG9feGxzeCA8LSByZWFkX2V4Y2VsKFwiZGF0YS9kYXRhc2V0cy54bHN4XCIpXG5ob2phX2NhbGN1bG9feGxzeCJ9</div>


Observemos que en el siguiente ejemplo a pesar que la extensión del archivo es `xls` utilizamos la misma función que en el caso anterior:


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJob2phX2NhbGN1bG9feGxzIDwtIHJlYWRfZXhjZWwoXCJkYXRhL2RhdGFzZXRzLnhsc1wiKVxuI01vc3RyYW1vcyBsYSBob2phIGRlIGNhbGN1bG9cbmhvamFfY2FsY3Vsb194bHMifQ==</div>



Podemos obtener los nombres de las hojas en el libro con la ayuda de la función `excel_sheets()`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJleGNlbF9zaGVldHMoXCJkYXRhL2RhdGFzZXRzLnhsc3hcIikifQ==</div>


Es posible seleccionar una hoja de cálculo mediante su nombre o por la posición que ocupa en el libro:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIgIHJlYWRfZXhjZWwocGF0aCA9IFwiZGF0YS9kYXRhc2V0cy54bHN4XCIsIHNoZWV0ID0gXCJjaGlja3d0c1wiKSJ9</div>



<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJyZWFkX2V4Y2VsKHBhdGggPSBcImRhdGEvZGF0YXNldHMueGxzeFwiLCBzaGVldCA9IDQpIn0=</div>


El argumento `range` de la función `read_excel` nos permite seleccionar un rango de filas y columnas con la misma nomenclatura que utilizamos en Excel:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJyZWFkX2V4Y2VsKHBhdGggPSBcImRhdGEvZGF0YXNldHMueGxzeFwiLCByYW5nZSA9IFwiQzE6RTRcIikifQ==</div>

Además, podemos especificar la hoja del libro de la cual queremos extraer un rango y con el símbolo lógico de negación `!` excluir celdas y columnas en nuestra selección:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJyZWFkX2V4Y2VsKHBhdGggPSBcImRhdGEvZGF0YXNldHMueGxzeFwiLCByYW5nZSA9IFwibXRjYXJzIUIxOkQ1XCIpIn0=</div>

Por defecto, la función `read_excel` trata los campos vacíos como valores desconocidos `NA`. En caso contrario, debemos especificarlo en el argumento `na`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJyZWFkX2V4Y2VsKHBhdGggPSBcImRhdGEvZGF0YXNldHMueGxzeFwiLCBuYSA9IFwic2V0b3NhXCIpIn0=</div>



### Lectura de archivos JSON en R

Para importar archivos [JSON](http://json.org/), primero necesitamos instalar y/o cargar el paquete [rjson](https://www.rdocumentation.org/packages/rjson/versions/0.2.15).

Para importar archivos JSON haremos uso de la función `fromJSON()`. Nos podemos encontrar en dos situaciones:

1. Nuestro archivo JSON se encuentre en nuestro directorio de trabajo:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIEluc3RhbGFtb3MgZWwgcGFxdWV0ZVxuaW5zdGFsbC5wYWNrYWdlcyhcInJqc29uXCIpXG4jIENhcmdhbW9zIGByanNvbmBcbmxpYnJhcnkocmpzb24pXG4jIEltcG9ydGFtb3MgbG9zIGRhdG9zIGRlc2RlIHVuIGFyY2hpdm8ganNvblxuSnNvbkRhdGEgPC0gZnJvbUpTT04oZmlsZSA9IFwiZGF0YS9XYXRlcl9SaWdodF9BcHBsaWNhdGlvbnMuanNvblwiKSJ9</div>

2. Nuestro archivo está disponible a través de una URL:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIENhcmdhbW9zIGByanNvbmBcbmxpYnJhcnkocmpzb24pXG4jIEltcG9ydGFtb3MgbG9zIGRhdG9zIGRlc2RlIHVuYSBVUkxcbkpzb25EYXRhIDwtIGZyb21KU09OKGZpbGUgPSBcIlVSTCBhIG51ZXN0cm8gYXJjaGl2byBKU09OXCIpIn0=</div>


### Lectura de archivos XML en R

Si deseamos importar archivos [XML](https://es.wikipedia.org/wiki/Extensible_Markup_Language), una de los métodos más fáciles es mediante el uso del paquete [XML](https://www.rdocumentation.org/packages/XML).

Mediante la función `xmlToDataFrame` podemos importar nuestro archivo desde nuestro directorio de trabajo o bien desde una URL:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIEluc3RhbGFtb3MgZWwgcGFxdWV0ZSBYTUxcbmluc3RhbGwucGFja2FnZXMoXCJYTUxcIilcbiMgQ2FyZ2Ftb3MgZWwgcGFxdWV0ZVxubGlicmFyeShYTUwpXG4jIEltcG9ydGFtb3MgbG9zIGRhdG9zIFhNTCB5IGxvcyBjb252ZXJ0aW1vcyBhIGBkYXRhLmZyYW1lYFxuZGYgPC0geG1sVG9EYXRhRnJhbWUoZG9jID0gXCJkYXRhL1dhdGVyX1JpZ2h0X0FwcGxpY2F0aW9ucy54bWxcIikifQ==</div>


### Lectura de datos de tablas HTML en R

Para importar tabla HTML necesitaremos del paquete `RCurl` en combinación con el
paquete `XML`. Con la ayuda de la función `readHTMLTable` podremos importar nuestros datos en R: 

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIENhcmdhbW9zIGxhcyBsaWJyZXJpYXNcbmxpYnJhcnkoWE1MKVxubGlicmFyeShSQ3VybCkifQ==</div>



<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIEFzaWduYW1vcyBsYSBVUkwgYSBgdXJsYFxudXJsIDwtIFwiPHVuYSBVUkw+XCJcblxuIyBMZWN0dXJhIGRlIGxhIHRhYmxhIEhUTUxcbmRhdG9zX3VybCA8LSByZWFkSFRNTFRhYmxlKHVybCwgXG4gICAgICAgICAgICAgICAgICAgICAgICAgICB3aGljaCA9IDMsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJpbmdzQXNGYWN0b3JzID0gRkFMU0UpIn0=</div>

__NOTA:__ Mediante el argumento `which` especificamos que table importar dentro del documento. Además, por medio de `stringAsFactors = FALSE` hacemos que los strings no sean convertidos al tipo `factor`.
























