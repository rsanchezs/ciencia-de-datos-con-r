



### Instalación de Paquetes desde Cran



```r
install.packages("vioplot")
```



### Instalación de Varios Paquetes a la vez desde Cran



```r
install.packages("vioplot", "MASS")
```




### Instalación de Paquetes con `devtools`




```r
install.packages("devtools")
```



```r
devtools::install_github("hadley/babynames")
```


## Actualizar, Eliminar y Comprobar Paquetes Instalados 



- Para comprobar que paquetes tenemos instalados en nuestro equipo, usaremos:


```r
installed.packages()
```

- Si nuestro objetivo es eliminar un paquete, podemos hacerlo como en el siguiente ejemplo:


```r
remove.packages("vioplot")
```

- Para comprobar que paquetes necesitan ser actualizados usaremos:


```r
old.packages()
```

- A su vez para actualizar todos los paquetes lo haremos mediante una llamada a la función:


```r
update.packages()
```

- Sin embargo, para actualizar un solo paquete, usaremos de nuevo la instrucción:


```r
install.packages("vioplot")
```





## Carga de Paquetes {#carga-de-paquetes}






Después de cargar el paquete en memoria, ya no será necesario hacer uso de la notación `nombrepaquete::funcion()`, y podremos hacer uso de sus funciones y datos como cualquier paquete base de R:


```r
births
```

```
## # A tibble: 119 x 2
##     year  births
##    <int>   <int>
##  1  1909 2718000
##  2  1910 2777000
##  3  1911 2809000
##  4  1912 2840000
##  5  1913 2869000
##  6  1914 2966000
##  7  1915 2965000
##  8  1916 2964000
##  9  1917 2944000
## 10  1918 2948000
## # ... with 109 more rows
```




## Cómo Descargar un Paquete {#como-descargar-un-paquete}

Para descargar de la memoria un cierto paquete podemos hacer uso de la función `detach`. Su uso es el siguiente:


```r
detach("babynames", unload = TRUE)
```





## Diferentes Fuentes de Documentación y Ayuda {#diferentes-fuentes-de-documentacion-y-ayuda}


### Los Archivos de Ayuda




```r
help(vioplot, package = "vioplot")
```




















