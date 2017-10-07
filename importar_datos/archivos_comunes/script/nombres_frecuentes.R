library(readxl)
nombres_mas_frecuentes <- read_excel(
                          path = "nombres_mas_frecuentes.xls", 
                          sheet = "nombres_mas_frecuentes")
View(nombres_mas_frecuentes)
head(nombres_mas_frecuentes)
names(nombres_mas_frecuentes)
