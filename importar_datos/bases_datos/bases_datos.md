<script src="https://cdn.datacamp.com/datacamp-light-latest.min.js"></script>







# Lectura de Bases de Datos

Una fuente común dónde podemos encontrar datos es en las bases de datos relacionales. Actualmente existen multitud de Sistemas Gestores de Bases de datos (SGBD) para trabajar con bases de datos relacionales, y R puede conectarse a la gran mayoría de los mismos. El paquete [DBI](https://cran.r-project.org/web/packages/DBI/index.html) proporciona una sintaxis para el acceso a varios SGBD. Actualmente soporta SQLite, MySQL, MariaDB, PostgreSQL, y Oracle, además de un __wrapper__ (del inglés, envoltorio) para el API Java DataBase Connectivity (JBDC).


Para conectarnos en una base de datos, necesitamos dos paquetes:

- El paquete `DBI`, que consiste en la definición de una interface para la comunicación entre R y SGBDR.
- El paquete `R<nombre_SGBDR>` que consiste en la implementación del driver R/SGBDR.

### Conexión a SQLite

Para conectarnos a una base de datos SQLite, en primer lugar debemos instalar y cargar el los paquetes `DBI` y `RSQLite`

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIEluc3RhbGFtb3MgZWwgcGFxdWV0ZXNcbmluc3RhbGwucGFja2FnZXMoYyhcIkRCSVwiLFwiUlNRTGl0ZVwiKSlcbiMgQ2FyZ2Ftb3MgbG9zIHBhcXVldGVzXG5saWJyYXJ5KERCSSlcbmxpYnJhcnkoUlNRTGl0ZSkifQ==</div>

Después definimos la conexión a la base de datos, en el que definiremos el driver para que sea de tipo "SQLite" y que pasaremos a la función `dbConnect()` a la que además le pasaremos como argumento la ruta del archivo de la base de datos

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJsaWJyYXJ5KERCSSlcbmxpYnJhcnkoUlNRTGl0ZSlcbiMgRGVmaW5pbW9zIGVsIGRyaXZlclxuZHJpdmVyIDwtIGRiRHJpdmVyKFwiU1FMaXRlXCIpXG4jIERlZmluaW1vcyBsYSBydXRhIGFsIGFyY2hpdm8gZGUgbGEgYmRcbmFyY2hpdm9fYmQgPC0gc3lzdGVtLmZpbGUoXCJkYXRhL2RhdGFiYXNlLnNxbGl0ZVwiKVxuIyBFc3RhYmxlY2Vtb3MgbGEgY29uZXhpXHUwMGYzblxuY29uIDwtIGRiQ29ubmVjdChkcml2ZXIsIGFyY2hpdm9fYmQpIn0=</div>

### Conexión a MySQL

La única diferencia para la conexión a una base de datos MySQL es cargar el paquete `RMySQL`, establecer el driver a "MYSQL", proporcionar el usuario y contraseña:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIEluc3RhbGFtb3MgZWwgcGFxdWV0ZXNcbmluc3RhbGwucGFja2FnZXMoYyhcIkRCSVwiLFwiUk15U1FMXCIpKVxuIyBDYXJnYW1vcyBsb3MgcGFxdWV0ZXNcbmxpYnJhcnkoREJJKVxubGlicmFyeShSTXlTUUwpIn0=</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIERlZmluaW1vcyBlbCBkcml2ZXJcbmRyaXZlciA8LSBkYkRyaXZlcihcIk15U1FMXCIpXG4jIERlZmluaW1vcyBsYSBydXRhIGFsIGFyY2hpdm8gZGUgbGEgYmRcbmFyY2hpdm9fYmQgPC0gc3lzdGVtLmZpbGUoXCJydXRhL2EvTXlTUUwvZGJcIilcbiMgRXN0YWJsZWNlbW9zIGxhIGNvbmV4aVx1MDBmM25cbmNvbm4gPC0gZGJDb25uZWN0KGRyaXZlciwgYXJjaGl2b19iZCwgdXNlcj1cInVzdWFyaW9cIiwgcGFzc3dvcmQ9XCJjb250cmFzZVx1MDBmMWFcIikifQ==</div>

### Conexión a PostgreSQL, Oracle y JDBC 

Para establecer la conexión a PostgreSQL, Oracle y JDBC procederíamos como en el apartado anterior, pero en estos casos requieren de los paquetes `RPostgreSQL`, `ROracle` y `RJDBC` respectivamente. 

### Listar y recuperar datos

Para listar las tablas de una base de datos haremos uso de la función `dbListTables()`:


```
Error in eval(expr, envir, enclos): could not find function "dbWriteTable"
```


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIE1vc3RyYW1vcyBsYXMgdGFibGFzIGRlIGxhIGJkXG5kYkxpc3RUYWJsZXMoY29uKSJ9</div>

Por otro lado, para recuperar los datos de una base de datos escribiremos una consulta, que consiste en un string que contiene una instrucción SQL, y la enviaremos a la base de datos con la ayuda de la función `dbGetQuery`. En el siguiente ejemplo, `SELECT * FROM mtcars` significa "muestra cada columna de la tabla con nombre `mtcars`":

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIENyZWFtb3MgdW5hIGNvbnN1bHRhXG5jb25zdWx0YSA8LSBcIlNFTEVDVCAqIEZST00gbXRjYXJzXCJcbiMgRW52aWFtb3MgbGEgY29uc3VsdGEgYWwgU0dCRFJcbmRhdG9zIDwtIGRiR2V0UXVlcnkoY29uLCBjb25zdWx0YSlcbiNJbnNwZWNjaW9uYW1vcyByZXN1bHRhZG9cbmRhdG9zIn0=</div>

Para aquellos que no conocen el lenguaje SQL, el paquete `DBI` proporciona multitud de funciones para la manipulación de base de datos. A modo de ejemplo, 
mediante la función `dbReadTable` conseguiremos el mismo resultado que en código anterior:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIENvbnN1bHRhbW9zIGxhIHRhYmxhIGBtdGNhcnNgXG5kYlJlYWRUYWJsZShjb24sIFwibXRjYXJzXCIpIn0=</div>


### Desconexión de la base de datos

Por último, una vez hemos manipulado la base de datos, es necesario desconectarse y descargar el driver:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIENlcnJhbW9zIGxhIGNvbmV4aVx1MDBmM25cbmRiRGlzY29ubmVjdChjb24pIn0=</div>

