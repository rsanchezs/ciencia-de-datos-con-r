


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
# Importamos los datos a un dataframe desde Github en un archivo json
datos <- fromJSON("https://api.github.com/users/rsanchezs/repos")
# Mostramos las variables de ´datos´
names(datos)
##  [1] "id"                "name"              "full_name"        
##  [4] "owner"             "private"           "html_url"         
##  [7] "description"       "fork"              "url"              
## [10] "forks_url"         "keys_url"          "collaborators_url"
## [13] "teams_url"         "hooks_url"         "issue_events_url" 
## [16] "events_url"        "assignees_url"     "branches_url"     
## [19] "tags_url"          "blobs_url"         "git_tags_url"     
## [22] "git_refs_url"      "trees_url"         "statuses_url"     
## [25] "languages_url"     "stargazers_url"    "contributors_url" 
## [28] "subscribers_url"   "subscription_url"  "commits_url"      
## [31] "git_commits_url"   "comments_url"      "issue_comment_url"
## [34] "contents_url"      "compare_url"       "merges_url"       
## [37] "archive_url"       "downloads_url"     "issues_url"       
## [40] "pulls_url"         "milestones_url"    "notifications_url"
## [43] "labels_url"        "releases_url"      "deployments_url"  
## [46] "created_at"        "updated_at"        "pushed_at"        
## [49] "git_url"           "ssh_url"           "clone_url"        
## [52] "svn_url"           "homepage"          "size"             
## [55] "stargazers_count"  "watchers_count"    "language"         
## [58] "has_issues"        "has_projects"      "has_downloads"    
## [61] "has_wiki"          "has_pages"         "forks_count"      
## [64] "mirror_url"        "archived"          "open_issues_count"
## [67] "forks"             "open_issues"       "watchers"         
## [70] "default_branch"
```


```r
# Accedemos a los nombres de mis repositorios
datos$name
##  [1] "appliedStatsR"                          
##  [2] "ciencia-de-datos-con-r"                 
##  [3] "ciencia-de-datos-con-r-casos-de-estudio"
##  [4] "ciencia-de-datos-con-r-libro"           
##  [5] "courses"                                
##  [6] "datasciencecoursera"                    
##  [7] "datasharing"                            
##  [8] "dplyr"                                  
##  [9] "EHairdressing"                          
## [10] "jekyll-now"                             
## [11] "manipulacion-datos-con-r"               
## [12] "MITx_6_00_1x"                           
## [13] "probability"                            
## [14] "programacion-en-r"                      
## [15] "programacion-estadistica-r"             
## [16] "PY4E"                                   
## [17] "r4ds"                                   
## [18] "RGraphic"                               
## [19] "rprogramming"                           
## [20] "rsanchezs.github.io"                    
## [21] "statsR"                                 
## [22] "videoRprogramming"                      
## [23] "visualizacion-de-datos-con-r"           
## [24] "webinars"
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
## {xml_document}
## <PLANTILLA>
## [1] <EMPLEADO>\n  <ID>1</ID>\n  <NOMBRE>Ruben</NOMBRE>\n  <SALARIO>623.3 ...
## [2] <EMPLEADO>\n  <ID>2</ID>\n  <NOMBRE>Ramon</NOMBRE>\n  <SALARIO>515.2 ...
## [3] <EMPLEADO>\n  <ID>3</ID>\n  <NOMBRE>Tomas</NOMBRE>\n  <SALARIO>611</ ...
## [4] <EMPLEADO>\n  <ID>4</ID>\n  <NOMBRE>Marga</NOMBRE>\n  <SALARIO>729</ ...
## [5] <EMPLEADO>\n  <ID>5</ID>\n  <NOMBRE>Miguel</NOMBRE>\n  <SALARIO>843. ...
## [6] <EMPLEADO>\n  <ID>6</ID>\n  <NOMBRE>Nuria</NOMBRE>\n  <SALARIO>578</ ...
## [7] <EMPLEADO>\n  <ID>7</ID>\n  <NOMBRE>Jaime</NOMBRE>\n  <SALARIO>632.8 ...
## [8] <EMPLEADO>\n  <ID>8</ID>\n  <NOMBRE>Dani</NOMBRE>\n  <SALARIO>722.5< ...
```

En primer lugar, podríamos estar interesados en el número de nodos que contienen el
archivo y que podemos conocer como se muestra a continuación:


```r
# Mostramos el número de nodos del archivo
xml_length(archivo_xml)
## [1] 8
```

Podemos acceder a un nodo con la ayuda de la función `xml_child()` como se muestra 
en el siguiente fragmento de código:


```r
# Accedemos al primer nodo
xml_child(archivo_xml, 1)
## {xml_node}
## <EMPLEADO>
## [1] <ID>1</ID>
## [2] <NOMBRE>Ruben</NOMBRE>
## [3] <SALARIO>623.3</SALARIO>
## [4] <ALTA>1/1/2012</ALTA>
## [5] <DEPT>IT</DEPT>
```

Para conocer todos los valores de un nodo que coinciden con una expresión [xpath](https://www.w3schools.com/xml/xpath_intro.asp) podemos hacerlo como se 
muestra a continuación:


```r
# Conocer todos los valores que coinciden con un elemento
nombre <- xml_find_all(archivo_xml, ".//NOMBRE")
nombre
## {xml_nodeset (8)}
## [1] <NOMBRE>Ruben</NOMBRE>
## [2] <NOMBRE>Ramon</NOMBRE>
## [3] <NOMBRE>Tomas</NOMBRE>
## [4] <NOMBRE>Marga</NOMBRE>
## [5] <NOMBRE>Miguel</NOMBRE>
## [6] <NOMBRE>Nuria</NOMBRE>
## [7] <NOMBRE>Jaime</NOMBRE>
## [8] <NOMBRE>Dani</NOMBRE>
```

Con la ayuda de la función `xml_text()`, `xml_double` y `xml_integer` obtendremos un vector de caracteres, reales o enteros respectivamente del documento, nodo o conjunto de nodos:


```r
# Convertir un documento, nodo o conjunto de nodo a vectores
nombres <- xml_text(nombre)
nombres
## [1] "Ruben"  "Ramon"  "Tomas"  "Marga"  "Miguel" "Nuria"  "Jaime"  "Dani"
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
##   id nombre salario       alta       dept
## 1  1  Ruben  623.30   1/1/2012         IT
## 2  2  Ramon  515.20  9/23/2013 Produccion
## 3  3  Tomas  611.00 11/15/2014         IT
## 4  4  Marga  729.00  5/11/2014         HR
## 5  5 Miguel  843.25  3/27/2015   Finanzas
## 6  6  Nuria  578.00  5/21/2013   Limpieza
## 7  7  Jaime  632.80  7/30/2013        I+D
## 8  8   Dani  722.50  6/17/2014 Produccion
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
# install.packages('devtools')
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
##         X1              X2              X3
## 1 Posici�n Nombres de ni�o Nombres de ni�a
## 2        1            HUGO           LUCIA
## 3        2          DANIEL         MARTINA
## 4        3          MARTIN           MARIA
## 5        4           PABLO           SOFIA
## 6        5       ALEJANDRO           PAULA
```



















