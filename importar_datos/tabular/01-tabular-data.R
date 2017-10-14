


# Importar Archivos de Texto
library(readr)
csv <- read_csv("data/Water_Right_Applications.csv")

# Importar Archivos de Excel
library(readxl)
excel <- read_excel("data/Water_Right_Applications.xls")

# Importar Archivos SPSS
library(haven)
sav <- read_sav("data/Child_Data.sav")

# Importar Archivos SAS
sas <- read_sas("data/iris.sas7bdat")

# Import Archivos STATA
stata <- read_dta("data/Milk_Production.dta")
