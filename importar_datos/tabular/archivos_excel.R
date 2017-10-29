

# Importar Archivos de Excel

library(readxl)
girls <- read_excel("importar_datos/tabular/data/nomnac15.xlsx", 
                       sheet = "TOTAL", col_names = FALSE, 
                       col_types = c("blank","blank", "blank", "text", 
                                     "numeric"), 
                       skip = 4)
View(girls)