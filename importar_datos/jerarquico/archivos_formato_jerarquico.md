


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
library(rjson)
```


```r
# Importamos los datos desde un archivo json
fromJSON(txt = "data/Water_Right_Applications.json")
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
library(XML)
# Importamos los datos XML 
read_xml("data/Water_Right_Applications.xml")
```

```
{xml_document}
<response>
[1] <row>\n  <row _address="http://data.wa.gov/resource/_9ubz-5r4b/22293 ...
```


# Lectura de datos de tablas HTML en R

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

```
Downloading GitHub repo hadley/rvest@master
from URL https://api.github.com/repos/hadley/rvest/zipball/master
```

```
Installing rvest
```

```
"C:/PROGRA~1/R/R-33~1.3/bin/x64/R" --no-site-file --no-environ --no-save  \
  --no-restore --quiet CMD INSTALL  \
  "C:/Users/Ruben/AppData/Local/Temp/RtmpMFxKRr/devtools2f7491e6193/hadley-rvest-9a51a5d"  \
  --library="C:/Users/Ruben/Documents/R/win-library/3.3" --install-tests 
```

```

```


## Uso


```r
library(rvest)
```


```r
html <- read_html("https://es.wikipedia.org/wiki/Anexo:Países_y_territorios_dependientes_por_población")
```

```
Error in open.connection(x, "rb"): HTTP error 404.
```

```r
table <- xml_find_first(html, "//table")
```

```
Error in doc_namespaces(doc): external pointer is not valid
```

```r
df <- (html_table(table))
```

```
Error in eval(expr, envir, enclos): could not find function "html_table"
```

```r
df
```

```
# A tibble: 5,836 � 25
   WR_DOC_ID DOCUMENT_NUMBER DOCUMENT_TYPE PURPOSE_CODE_LIST
       <int>           <chr>         <chr>             <chr>
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
#   PERSON_LAST_OR_ORGANIZATION_NAME <chr>, PRIORITY_DATE <chr>,
#   YEAR_APPLIED <int>, CFS <dbl>, GPM <dbl>, DOMESTIC_UNITS <int>,
#   ACRE_FEET <dbl>, ACRE_IRR <dbl>, COUNTY_NAME <chr>, WRIA_NUMBER <int>,
#   WATERSHED <chr>, CERT_NUM <chr>, TRS <chr>, QUAD_DESIGNATION <chr>,
#   SOURCE_NAME <chr>, TRIBUTARY_NAME <chr>, IMAGE_URL <chr>,
#   MAP_URL <chr>, Latitude1 <dbl>, Longitude1 <dbl>, Location <chr>
```



















