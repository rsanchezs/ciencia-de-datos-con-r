


<!-- ```{r, include=FALSE} -->
<!-- tutorial::go_interactive() -->
<!-- ``` -->





# Lectura de archivos JSON en R

Para importar archivos [JSON](http://json.org/), primero necesitamos instalar y/o cargar el paquete [jsonlite](https://cran.r-project.org/web/packages/jsonlite/vignettes/json-aaquickstart.html).

## Instalación

Podemos instalar `jsonlite`desde CRAN:


```r
# Instalamos el paquete
install.packages("jsonlite")
```

## Uso

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


# Lectura de archivos XML en R

Si deseamos importar archivos [XML](https://es.wikipedia.org/wiki/Extensible_Markup_Language), una de los métodos más fáciles es mediante el uso del paquete [XML2](https://www.rdocumentation.org/packages/xml2/versions/1.1.1).

## Instalación

Podemos installar `xml2`desde CRAN:


```r
install.packages("xml2")
```

o podemos instalar la versión en desarrollo en GitHub, con la ayuda de `devtools`:


```r
install_github("r-lib/xml2")
```

## Uso

Mediante la función `read_xml()` podemos importar archivos XML:


```r
# Cargamos el paquete
library(xml2)
# Importamos los datos XML 
xml <- read_xml("data/Water_Right_Applications.xml")
```



# Lectura de tablas HTML en R

Para importar tablas HTML necesitaremos del paquete [`rvest`](https://www.rdocumentation.org/packages/rvest/versions/0.3.2).

## Instalación 

Para conseguir la última versión desde CRAN


```r
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
library(rvest)
```

Para el ejemplo, además haremos uso del paquete `xml2` para descargar una tabla de la siguiente [página]("https://es.wikipedia.org/wiki/Anexo:Países_y_territorios_dependientes_por_población) de la Wikipedia:


```r
library(xml2)
```

Descargamos la página mediante `xml2::read_html()` y con la ayuda de `xml2::xml_find_first()` encontramos el nodo que coincide con `xpath = "//table"`:


```r
html <- read_html("https://es.wikipedia.org/wiki/Anexo:Países_y_territorios_dependientes_por_población")
tabla <- xml_find_first(html, xpath = "//table")
```

Por último, mediante `rvest::html_table` analizamos sintácticamente la tabla html y la transformamos en un `dataframe`:


```r
head(df <- html_table(tabla))
```


















