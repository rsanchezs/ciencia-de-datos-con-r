


<!-- ```{r, include=FALSE} -->
<!-- tutorial::go_interactive() -->
<!-- ``` -->


# Lectura de Bases de Datos

Una fuente común dónde podemos encontrar datos es en las bases de datos relacionales. Actualmente existen multitud de Sistemas Gestores de Bases de datos (SGBD) para trabajar con bases de datos relacionales, y R puede conectarse a la gran mayoría de los mismos. El paquete [DBI](https://cran.r-project.org/web/packages/DBI/index.html) proporciona una sintaxis para el acceso a varios SGBD. Actualmente soporta SQLite, MySQL, MariaDB, PostgreSQL, y Oracle, además de un __wrapper__ (del inglés, envoltorio) para el API Java DataBase Connectivity (JBDC).


Para conectarnos en una base de datos, necesitamos dos paquetes:

- El paquete `DBI`, que consiste en la definición de una interface para la comunicación entre R y SGBDR.
- El paquete `R<nombre_SGBDR>` que consiste en la implementación del driver R/SGBDR.

### Conexión a SQLite

Para conectarnos a una base de datos SQLite, en primer lugar debemos instalar y cargar el los paquetes `DBI` y `RSQLite`


```r
# Instalamos el paquetes
install.packages(c("DBI","RSQLite"))
# Cargamos los paquetes
library(DBI)
library(RSQLite)
```

Después definimos la conexión a la base de datos, en la que especificaremos el driver para que sea de tipo "SQLite" y que pasaremos a la función `dbConnect()` a la que además le pasaremos como argumento la ruta del archivo de la base de datos


```r
# Definimos el driver
driver <- dbDriver("SQLite")
# Definimos la ruta al archivo de la bd
archivo_bd <- system.file("data/database.sqlite")
# Establecemos la conexión
con <- dbConnect(driver, archivo_bd)
```

### Conexión a MySQL

La única diferencia para la conexión a una base de datos MySQL es cargar el paquete `RMySQL`, establecer el driver a "MYSQL" y por último, proporcionar el usuario y contraseña:


```r
# Instalamos el paquetes
install.packages(c("DBI","RMySQL"))
# Cargamos los paquetes
library(DBI)
library(RMySQL)
```



```r
# Definimos el driver
driver <- dbDriver("MySQL")
# Establecemos la conexión
conn <- dbConnect(driver,
                  user = "ruben",
                  password = "1234",
                  db = "sakila")
```



### Conexión a PostgreSQL, Oracle y JDBC 

Para establecer la conexión a PostgreSQL, Oracle y JDBC procederíamos como en el apartado anterior, pero en estos casos requieren de los paquetes `RPostgreSQL`, `ROracle` y `RJDBC` respectivamente. 

### Listar y recuperar datos

Para listar las tablas de una base de datos haremos uso de la función `dbListTables()`:





```r
# Mostramos las tablas de la bd
dbListTables(con)
```

```
[1] "mtcars"
```

Por otro lado, para recuperar los datos de una base de datos escribiremos una consulta, que consiste en un string que contiene una instrucción SQL, y la enviaremos a la base de datos con la ayuda de la función `dbGetQuery`. En el siguiente ejemplo, `SELECT * FROM mtcars` significa "muestra cada columna de la tabla con nombre `mtcars`":


```r
# Creamos una consulta
consulta <- "SELECT * FROM mtcars"
# Enviamos la consulta al SGBDR
datos <- dbGetQuery(con, consulta)
#Inspeccionamos resultado
datos
```

```
    mpg cyl  disp  hp drat    wt  qsec vs am gear carb
1  21.0   6 160.0 110 3.90 2.620 16.46  0  1    4    4
2  21.0   6 160.0 110 3.90 2.875 17.02  0  1    4    4
3  22.8   4 108.0  93 3.85 2.320 18.61  1  1    4    1
4  21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1
5  18.7   8 360.0 175 3.15 3.440 17.02  0  0    3    2
6  18.1   6 225.0 105 2.76 3.460 20.22  1  0    3    1
7  14.3   8 360.0 245 3.21 3.570 15.84  0  0    3    4
8  24.4   4 146.7  62 3.69 3.190 20.00  1  0    4    2
9  22.8   4 140.8  95 3.92 3.150 22.90  1  0    4    2
10 19.2   6 167.6 123 3.92 3.440 18.30  1  0    4    4
11 17.8   6 167.6 123 3.92 3.440 18.90  1  0    4    4
12 16.4   8 275.8 180 3.07 4.070 17.40  0  0    3    3
13 17.3   8 275.8 180 3.07 3.730 17.60  0  0    3    3
14 15.2   8 275.8 180 3.07 3.780 18.00  0  0    3    3
15 10.4   8 472.0 205 2.93 5.250 17.98  0  0    3    4
16 10.4   8 460.0 215 3.00 5.424 17.82  0  0    3    4
17 14.7   8 440.0 230 3.23 5.345 17.42  0  0    3    4
18 32.4   4  78.7  66 4.08 2.200 19.47  1  1    4    1
19 30.4   4  75.7  52 4.93 1.615 18.52  1  1    4    2
20 33.9   4  71.1  65 4.22 1.835 19.90  1  1    4    1
21 21.5   4 120.1  97 3.70 2.465 20.01  1  0    3    1
22 15.5   8 318.0 150 2.76 3.520 16.87  0  0    3    2
23 15.2   8 304.0 150 3.15 3.435 17.30  0  0    3    2
24 13.3   8 350.0 245 3.73 3.840 15.41  0  0    3    4
25 19.2   8 400.0 175 3.08 3.845 17.05  0  0    3    2
26 27.3   4  79.0  66 4.08 1.935 18.90  1  1    4    1
27 26.0   4 120.3  91 4.43 2.140 16.70  0  1    5    2
28 30.4   4  95.1 113 3.77 1.513 16.90  1  1    5    2
29 15.8   8 351.0 264 4.22 3.170 14.50  0  1    5    4
30 19.7   6 145.0 175 3.62 2.770 15.50  0  1    5    6
31 15.0   8 301.0 335 3.54 3.570 14.60  0  1    5    8
32 21.4   4 121.0 109 4.11 2.780 18.60  1  1    4    2
```

Para aquellos que no conocen el lenguaje SQL, el paquete `DBI` proporciona multitud de funciones para la manipulación de base de datos. A modo de ejemplo, 
mediante la función `dbReadTable` conseguiremos el mismo resultado que en código anterior:


```r
# Consultamos la tabla `mtcars`
dbReadTable(con, "mtcars")
```


### Desconexión de la base de datos

Por último, una vez hemos manipulado la base de datos, es necesario desconectarse y descargar el driver:


```r
# Cerramos la conexión
dbDisconnect(con)
```

