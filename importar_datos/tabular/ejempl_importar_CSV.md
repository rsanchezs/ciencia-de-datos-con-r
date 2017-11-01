---
title: "ejemplo_csv_Rstudio"
author: "Rubén Sánchez Sancho"
date: "25 de octubre de 2017"
output: html_document
editor_options: 
  chunk_output_type: console
---



## Ejemplo código importar archivos CSV


```r
# Cargamos libreria 
library(readr)
```


```r
# Importamos archivo CSV
nomnac15_boys <- read_delim("data/nomnac15.csv", 
               delim =  ";", 
               escape_double = FALSE,
               col_names = FALSE, 
               col_types = cols(X3 = col_skip(), X4 = col_skip(),  X5 = col_skip()),                 trim_ws = TRUE, 
               skip = 4)
```


```r
# Inspeccionamos en el Visualizador De Datos
View(nomnac15_boys)
```

