


# Importar Archivos SPSS

```r
library(haven)
child_Data <- read_sav("data/Child_Data.sav", )
```


# Importar Archivos Stata

```r
library(haven)
milk_production <- read_dta("data/Milk_Production.dta")
```

# Importar Archivos SAS

```r
library(haven)
mtcars <- read_sas("mtcars.sas7bdat")
```

```
## Error: 'mtcars.sas7bdat' does not exist in current working directory ('C:/Users/Ruben/Documents/RStudioProjects/ciencia-de-datos-con-r/importar_datos/programas_estadisticos').
```

