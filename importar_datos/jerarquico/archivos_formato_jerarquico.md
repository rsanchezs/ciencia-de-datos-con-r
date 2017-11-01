




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

```
 [1] "id"                "name"              "full_name"        
 [4] "owner"             "private"           "html_url"         
 [7] "description"       "fork"              "url"              
[10] "forks_url"         "keys_url"          "collaborators_url"
[13] "teams_url"         "hooks_url"         "issue_events_url" 
[16] "events_url"        "assignees_url"     "branches_url"     
[19] "tags_url"          "blobs_url"         "git_tags_url"     
[22] "git_refs_url"      "trees_url"         "statuses_url"     
[25] "languages_url"     "stargazers_url"    "contributors_url" 
[28] "subscribers_url"   "subscription_url"  "commits_url"      
[31] "git_commits_url"   "comments_url"      "issue_comment_url"
[34] "contents_url"      "compare_url"       "merges_url"       
[37] "archive_url"       "downloads_url"     "issues_url"       
[40] "pulls_url"         "milestones_url"    "notifications_url"
[43] "labels_url"        "releases_url"      "deployments_url"  
[46] "created_at"        "updated_at"        "pushed_at"        
[49] "git_url"           "ssh_url"           "clone_url"        
[52] "svn_url"           "homepage"          "size"             
[55] "stargazers_count"  "watchers_count"    "language"         
[58] "has_issues"        "has_projects"      "has_downloads"    
[61] "has_wiki"          "has_pages"         "forks_count"      
[64] "mirror_url"        "archived"          "open_issues_count"
[67] "forks"             "open_issues"       "watchers"         
[70] "default_branch"   
```


```r
# Accedemos a los nombres de mis repositorios
datos$name
```

```
 [1] "appliedStatsR"                          
 [2] "ciencia-de-datos-con-r"                 
 [3] "ciencia-de-datos-con-r-casos-de-estudio"
 [4] "ciencia-de-datos-con-r-libro"           
 [5] "courses"                                
 [6] "datasciencecoursera"                    
 [7] "datasharing"                            
 [8] "dplyr"                                  
 [9] "EHairdressing"                          
[10] "jekyll-now"                             
[11] "manipulacion-datos-con-r"               
[12] "MITx_6_00_1x"                           
[13] "probability"                            
[14] "programacion-en-r"                      
[15] "programacion-estadistica-r"             
[16] "PY4E"                                   
[17] "r4ds"                                   
[18] "RGraphic"                               
[19] "rprogramming"                           
[20] "rsanchezs.github.io"                    
[21] "statsR"                                 
[22] "videoRprogramming"                      
[23] "visualizacion-de-datos-con-r"           
[24] "webinars"                               
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

```
Downloading GitHub repo hadley/rvest@master
from URL https://api.github.com/repos/hadley/rvest/zipball/master
```

```
Installing rvest
```

```
"D:/Ruben/Documents/R-3.4.2/bin/x64/R" --no-site-file --no-environ  \
  --no-save --no-restore --quiet CMD INSTALL  \
  "C:/Users/Ruben/AppData/Local/Temp/RtmpczMppM/devtools38606706552b/hadley-rvest-9a51a5d"  \
  --library="C:/Users/Ruben/Documents/R/win-library/3.4" --install-tests 
```

```

```


## Uso

Cargamos la libreria `rvest`:


```r
library(rvest)
```

```
Error in value[[3L]](cond): Package 'rvest' version 0.3.2 cannot be unloaded:
 Error in unloadNamespace(package) : namespace 'rvest' is imported by 'tidyverse' so cannot be unloaded
```

Para el ejemplo, además haremos uso del paquete `xml2` para descargar una tabla de la siguiente [página]("https://es.wikipedia.org/wiki/Anexo:Países_y_territorios_dependientes_por_población) de la Wikipedia:


```r
library(xml2)
```

Descargamos la página mediante `xml2::read_html()` y con la ayuda de `xml2::xml_find_first()` encontramos el nodo que coincide con `xpath = "//table"`:


```r
html <- read_html("https://es.wikipedia.org/wiki/Anexo:Países_y_territorios_dependientes_por_población")
```

```
Error in open.connection(x, "rb"): HTTP error 404.
```

```r
tabla <- xml_find_first(html, xpath = "//table")
```

```
Error in xml_find_first(html, xpath = "//table"): object 'html' not found
```

Por último, mediante `rvest::html_table` analizamos sintácticamente la tabla html y la transformamos en un `dataframe`:


```r
head(df <- html_table(tabla))
```

```
Error in html_table(tabla): could not find function "html_table"
```


















