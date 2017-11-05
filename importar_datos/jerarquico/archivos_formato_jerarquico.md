


# Lectura de Archivos Jerarquizados

En ocasiones necesitaremos importar datos de sitios web. La mayoría de proveedores 
proporcionan los datos en formato XML y JSON. En esta sección, aprenderemos como leer
datos de archivos JSON y XML.

Además, en el último apartado veremos como importar tablas HTML alojadas en sitios web.

## Lectura de archivos JSON en R

Para importar archivos [JSON](http://json.org/), primero necesitamos instalar y/o cargar el paquete [jsonlite](https://cran.r-project.org/web/packages/jsonlite/vignettes/json-aaquickstart.html).

### Instalación

Podemos instalar `jsonlite`desde CRAN:


```r
# Instalamos el paquete
install.packages("jsonlite")
```

### Uso

Para importar archivos JSON haremos uso de la función `fromJSON()`:



```r
# Cargamos `rjson`
library(jsonlite)
```



```r
# Importamos los datos a un dataframe desde  Github en un archivo json
datos <- fromJSON("https://api.github.com/users/rsanchezs/repos")
# Mostramos las variables de ´datos´
names(datos)
```


```r
# Accedemos a los nombres de mis repositorios
datos$name
```



## Lectura de archivos XML en R

Si deseamos importar archivos [XML](https://es.wikipedia.org/wiki/Extensible_Markup_Language), una de los métodos más fáciles es mediante el uso del paquete [XML2](https://www.rdocumentation.org/packages/xml2/versions/1.1.1).

### Instalación

Podemos installar `xml2`desde CRAN:


```r
# Instalación de `xml2` desde CRAN
install.packages("xml2")
```

o podemos instalar la versión en desarrollo en GitHub, con la ayuda de `devtools`:


```r
# Instalación desde el repositorio de GitHub
install_github("r-lib/xml2")
```

### Uso

Mediante la función `read_xml()` podemos importar archivos XML:


```r
# Cargamos el paquete
library(xml2)
# Importamos los datos XML 
archivo_xml <- read_xml("data/empleados.xml")
archivo_xml
```

En primer lugar, podríamos estar interesados en el número de nodos que contienen el
archivo y que podemos conocer como se muestra a continuación:


```r
# Mostramos el número de nodos del archivo
xml_length(archivo_xml)
```

Podemos acceder a un nodo con la ayuda de la función `xml_child()` como se muestra 
en el siguiente fragmento de código:


```r
# Accedemos al primer nodo
xml_child(archivo_xml, 1)
```

Para conocer todos los valores de un nodo que coinciden con una expresión [xpath](https://www.w3schools.com/xml/xpath_intro.asp) podemos hacerlo como se 
muestra a continuación:


```r
# Conocer todos los valores que coinciden con un elemento
nombre <- xml_find_all(archivo_xml, ".//NOMBRE")
nombre
```

Con la ayuda de la función `xml_text()`, `xml_double` y `xml_integer` obtendremos un vector de caracteres, reales o enteros respectivamente del documento, nodo o conjunto de nodos:


```r
# Convertir un documento, nodo o conjunto de nodo a vectores
nombres <- xml_text(nombre)
nombres
```
 
Con lo visto hasta ahora podemos pasar el documento XML a un dataframe para nuestro
análisis como se muestra a continuación:


```r
# Obtenemos los valores de cado nodo en un vector
id <- xml_integer(xml_find_all(archivo_xml, ".//ID"))
nombre <- xml_text(xml_find_all(archivo_xml, ".//NOMBRE"))
salario <- xml_double(xml_find_all(archivo_xml, ".//SALARIO"))
alta <- xml_text(xml_find_all(archivo_xml, ".//ALTA"))
dept <- xml_text(xml_find_all(archivo_xml, ".//DEPT"))

# Creamos un dataframe a partir de los vectores
plantilla <- data.frame(id, nombre, salario, alta, dept)
plantilla
```


# Lectura de tablas HTML en R

Para importar tablas HTML necesitaremos del paquete [`rvest`](https://www.rdocumentation.org/packages/rvest/versions/0.3.2).

## Instalación 

Para conseguir la última versión desde CRAN


```r
# Instalación de `rvest`desde CRAN
install.packages("rvest")
```

Para descargar la versión en desarrollo desde su repositorio en GitHub:


```r
# install.packages("devtools")
devtools::install_github("hadley/rvest")
```


## Uso

Cargamos la libreria `rvest`:


```r
# Cargamos la libreria `rvest`
library(rvest)
```

Para el ejemplo, además haremos uso del paquete `xml2` para descargar una tabla de la siguiente [página]("http://www.enterat.com/servicios/nombres-nino-nina.php") con los nombres de niño y niña más comunes en 2017:


```r
# Cargamos la libreria `xml2`
library(xml2)
```

Descargamos la página mediante `xml2::read_html()` y con la ayuda de `xml2::xml_find_first()` encontramos el nodo que coincide con `xpath = "//table"`:


```r
# Descargamos la página
html <- read_html("http://www.enterat.com/servicios/nombres-nino-nina.php")
# Encontramos el elemento que coincide con la clase `table`
tabla <- xml_find_first(html, xpath = "//table")
```

Por último, mediante `rvest::html_table` analizamos sintácticamente la tabla html y la transformamos en un `dataframe`:


```r
# Pasamos la tabla HTML a un dataframe
df <- html_table(tabla)
head(df)
```



















