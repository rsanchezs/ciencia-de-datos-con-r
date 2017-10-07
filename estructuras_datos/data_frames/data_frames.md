<script src="https://cdn.datacamp.com/datacamp-light-latest.min.js"></script>








# Data frames

Los _data frames_ se utilizan en R para almacenar datos en forma de hoja de datos. 
Cada fila de la hoja de datos corresponde a una observación o valor de una instancia,
mientras que cada columna corresponde a un vector que contiene los datos de una variable. 


Como podemos observar en el ejemplo, cada observación, indicado en la primera columna con un 
número, tiene ciertas características que son representadas en las tres columnas restantes.
Cada columna consiste de valores del mismo tipo, puesto que se corresponden a vectores: 
es por eso, que la columna `breaks` contiene valores de tipo `double`, mientras que las 
columnas `wool`y `tension` contienen caracteres que son almacenados como `factor`.


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJoZWFkKHdhcnBicmVha3MpIn0=</div>

La estructura de un `data.frame` es muy similar a la de una matriz. La diferencia es que
las filas de un `data.frame` pueden contener valores de diferentes tipos de datos. 
 
Los `data.frame` también tienen similitud con las listas, puesto que son básicamente colecciones
de elementos. Sin embargo, el `data.frame` es una lista que únicamente contiene vectores de
la misma longitud. Por lo tanto, podemos considerarlo un tipo especial de lista y en el 
podemos acceder a sus elementos del mismo modo que lo hacemos en las matrices o las listas.


## Creación de un Data Frame {#creacion-de-un-data-frame}

Podemos crear data frames con la función `data.frame()`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIENyZWFtb3MgdmVjdG9yZXMgY29uIGxvcyB2YWxvcmVzXG5ub21icmUgPC0gYyhcIkp1YW5cIiwgXCJNYXJnYXJpdGFcIiwgXCJSdWJlblwiLCBcIkRhbmllbFwiKVxuYXBlbGxpZG8gPC0gYyhcIlNhbmNoZXpcIiwgXCJHYXJjaWFcIiwgXCJTYW5jaG9cIiwgXCJBbGZhcmFcIilcbmZlY2hhX25hY2ltaWVudG8gPC0gYyhcIjE5NzYtMDYtMTRcIiwgXCIxOTc0LTA1LTA3XCIsIFwiMTk1OC0xMi0yNVwiLCBcIjE5ODMtMDktMTlcIilcbnNleG8gPC0gYyhcIkhPTUJSRVwiLCBcIk1VSkVSXCIsIFwiSE9NQlJFXCIsIFwiSE9NQlJFXCIpXG5ucm9faGlqb3MgPC0gYygxLCAyLCAzLCA0KSJ9</div>

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIENyZWFtb3MgdW4gZGF0YWZyYW1lIGNvbiBsYSBheXVkYSBkZSBkYXRhLmZyYW1lKClcbmNlbnNvIDwtIGRhdGEuZnJhbWUobm9tYnJlLCBhcGVsbGlkbywgZmVjaGFfbmFjaW1pZW50bywgc2V4bywgbnJvX2hpam9zKVxuY2Vuc28ifQ==</div>


__Recordemos__ que los data frames requieren que las variables sean de la 
misma longitud. Por este motivo, tenemos que asegurarnos que el número de
argumentos pasados a la función `c()` sea el mismo. Además, debemos 
asegurarnos que las cadenas de caracteres están entre `""`.

Además, observemos que cuando hacemos uso de la función `data.frame()`, las variables
de tipo `character` son importadas como variables categóricas, que en R son representadas
como `factor`.

Si estamos interesados en inspeccionar las primeras o últimas líneas, 
podemos hacer uso de las funciones `head()` y `tail()`, respectivamente:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJoZWFkKGNlbnNvKSJ9</div>


Por otro lado, podemos usar la función `str()` para conocer la estructura del data frame:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJzdHIoY2Vuc28pIn0=</div>


Como podemos observar, las variables `nombre`, `apellido`, `fecha_nacimiento` y `sexo` de `censo`
son tratadas como factors. Para evitar este comportamiento podemos hacer lo siguiente:

- Para las variables `nombre` y `apellido` podemos hacer uso de la función `I()` en la definición
de los vectores para que las variables no sean tratadas como `factor`. Esta función inhibe la 
interpretación de sus argumentos.

- La variable `sexo` podemos dejarla como `factor`, puesto que se trata de una cantidad limitada de posibles
valores.

- Para que la variable `fecha_nacimiento` sea registrada como fecha, podemos hacer uso de la función
`as.Date()`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIENyZWFtb3MgdmVjdG9yZXMgY29uIGxvcyB2YWxvcmVzIHkgZWwgdGlwbyBkZSBkYXRvIGRlc2VhZG9cbm5vbWJyZSA8LSBJKGMoXCJKdWFuXCIsIFwiTWFyZ2FyaXRhXCIsIFwiUnViZW5cIiwgXCJEYW5pZWxcIikpXG5hcGVsbGlkbyA8LSBJKGMoXCJTYW5jaGV6XCIsIFwiR2FyY2lhXCIsIFwiU2FuY2hvXCIsIFwiQWxmYXJhXCIpKVxuZmVjaGFfbmFjaW1pZW50byA8LSBhcy5EYXRlKGMoXCIxOTc2LTA2LTE0XCIsIFwiMTk3NC0wNS0wN1wiLCBcIjE5NTgtMTItMjVcIiwgXCIxOTgzLTA5LTE5XCIpKVxuc2V4byA8LSBjKFwiSE9NQlJFXCIsIFwiTVVKRVJcIiwgXCJIT01CUkVcIiwgXCJIT01CUkVcIilcbm5yb19oaWpvcyA8LSBjKDEsIDIsIDMsIDQpIn0=</div>

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIENyZWFtb3MgdW4gZGF0YWZyYW1lIGNvbiBsYSBheXVkYSBkZSBkYXRhLmZyYW1lKClcbmNlbnNvIDwtIGRhdGEuZnJhbWUobm9tYnJlLCBhcGVsbGlkbywgZmVjaGFfbmFjaW1pZW50bywgc2V4bywgbnJvX2hpam9zKVxuc3RyKGNlbnNvKSJ9</div>

## Filas, Columnas y Dimensión {#filas-columnas-y-dimension}

Como las matrices, el `data.frame` dispone del atributo dimensión determinado por el
número de filas y columnas. Para comprobar el número de filas y columnas de `censo`,
podemos hacer uso de la función `dim()`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIERldnVlbHZlIGVsIG5cdTAwZmFtZXJvIGRlIGZpbGFzIHkgY29sdW1uYXNcbmRpbShjZW5zbylcbiMgUmVjdXBlcmEgZWwgblx1MDBmYW1lcm8gZGUgZmlsYXNcbmRpbShjZW5zbylbMV1cbiMgUmVjdXBlcmEgZWwgblx1MDBmYW1lcm8gZGUgY29sdW1uYXNcbmRpbShjZW5zbylbMl0ifQ==</div>

También podemos recuperar el número de filas y columnas en `censo` con la ayuda 
de las funciones `nrow()` y `ncol()`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIFVzYW1vcyBgbnJvdygpYHBhcmEgcmVjdXBlcmFyIGVsIG5cdTAwZmFtZXJvIGRlIGZpbGFzXG5ucm93KGNlbnNvKVxuIyBVc2Ftb3MgYG5jb2woKWAgcGFyYSByZWN1cGVyYXIgZWwgblx1MDBmYW1lcm8gZGUgY29sdW1uYXNcbm5jb2woY2Vuc28pXG4jIFVzYW1vcyBgbGVuZ3RoKClgcGFyYSByZWN1cGVyYXIgZWwgblx1MDBmYW1lcm8gZGUgY29sdW1uYXNcbmxlbmd0aChjZW5zbykifQ==</div>

Observemos que, puesto que la estructura de un `data.frame` es similar a una lista, podemos
hacer uso de la función `length()` para recuperar el número de columnas. No obstante, para
que nuestro código sea comprensible, recomendamos evitar el uso de esta función  y en su
lugar utilizar la función `ncol()`.




## Nombre de las Filas y Columnas {#nombres-de-las-filas-y-columnas}

Los data frames también cuentan con el atributo `names`, que nos indica los nombres de 
las variables que hemos definido. En otras palabras, podemos ver y establecer una 
cabecera.

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIExpc3RhbW9zIGxvcyBub21icmVzIGRlIGxhcyB2YXJpYWJsZXMgKGNhYmVjZXJhKVxubmFtZXMoY2Vuc28pIn0=</div>

Para cambiar los nombres, podemos hacer uso de la función `names()`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIEFzaWduYW1vcyBkaWZlcmVudGVzIG5vbWJyZXMgYSBsYXMgY29sdW1hcyBkZSBgY2Vuc29gXG5uYW1lcyhjZW5zbykgPC0gYyhcIk5vbWJyZVwiLCBcIkFwZWxsaWRvXCIsIFwiRmVjaGFfTmFjaW1pZW50b1wiLCBcIlNleG9cIiwgXCJOdW1lcm9fSGlqb3NcIilcbm5hbWVzKGNlbnNvKSJ9</div>


También podemos cambiar los nombres de las filas y columnas con la ayuda de las 
funciones `rownames()` y `colnames()`, respectivamente:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIEFzaWduYW1vcyBkaWZlcmVudGVzIG5vbWJyZXMgYSBsYXMgY29sdW1uYXMgZGUgYGNlbnNvYFxuY29sbmFtZXMoY2Vuc28pIDwtIGMoXCJOb21icmVcIiwgXCJBcGVsbGlkb1wiLCBcIkZlY2hhX05hY2ltaWVudG9cIiwgXCJTZXhvXCIsIFwiTnVtZXJvX0hpam9zXCIpXG5yb3duYW1lcyhjZW5zbykgPC0gYyhcIklEMVwiLCBcIklEMlwiLCBcIklEM1wiLCBcIklENFwiKVxuY2Vuc28ifQ==</div>


Observemos que, la función `names()` devuelve el mismo valor que `colnames()`. Para 
que nuestro código sea inteligible, recomendamos el uso de la función `colnames()`.


## Selección de Elementos {#seleccion-de-elementos}

El acceso a los elementos que se encuentran en un `data.frame` es muy similar al acceso a los datos de una matriz que ya vimos en la [sección anterior](../matrices/matrices.md). Así por ejemplo, si queremos ver sólo los datos de los sujetos (filas) 2 a 4, escribiríamos:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJjZW5zb1syOjQsXSJ9</div>

Si queremos acceder a la variable `nombre`(primera columna), podemos tratar a `censo` igual que si fuese una matriz:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJjZW5zb1ssIDFdIn0=</div>

Aunque también podemos referirnos a la columna por su nombre:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJjZW5zbyROb21icmUifQ==</div>

Nótese que en este caso hemos de utilizar el nombre del data.frame `censo` seguido del operador `$` y del nombre de la variable que nos interesa (`Nombre`). De manera equivalente, la selección de esa variable puede realizarse mediante:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJjZW5zb1ssIFwiTm9tYnJlXCJdIn0=</div>

o poniendo el nombre de la variable entre dobles corchetes y entre comillas:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJjZW5zb1tbXCJOb21icmVcIl1dIn0=</div>

## Attach y Detach {#attach-y-detach}

La notación `$` para el acceso a elementos de un `data.frame` puede hacerse engorroso cuando
hemos de escribir constantemente el nombre del `data.frame`(en particular si éste en muy largo).
Imaginemos, por ejemplo, que para el conjunto de datos `censo` deseamos construir tablas de 
frecuencias de la variable `nro_hijos`, y que además queremos calcular la media del número de hijos.
La sintaxis a utilizar sería la siguiente:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIENhbGN1bGFtb3MgbGEgdGFibGEgZGUgZnJlY3VlbmNpYXNcbnRhYmxlKGNlbnNvJFNleG8pXG4jIERpYWdyYW1hIGRlIGJhcnJhcyB2YXJpYWJsZSBgc2V4b2BcbmJhcnBsb3QodGFibGUoY2Vuc28kU2V4bykpIn0=</div>

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIENhbGN1bGFtb3MgbGEgbWVkaWEgZGUgYG5yb19oaWpvc2Bcbm1lYW4oY2Vuc28kTnVtZXJvX0hpam9zKSJ9</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIENhbGN1bGFtb3MgbGEgbWVkaWFuYSBkZSBgbnJvX2hpam9zYFxubWVkaWFuKGNlbnNvJE51bWVyb19IaWpvcykifQ==</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIENhbGN1bGFtb3MgbGEgdmFyaWFuemEgZGUgYG5yb19oaWpvc2BcbnZhcihjZW5zbyROdW1lcm9fSGlqb3MpIn0=</div>



Obviamente, escribir tantas veces `censo` resulta tedioso, al margen de que se multiplica el riesgo de cometer errores en la redacción de los comandos. Para evitar este problema podemos hacer uso de la función `attach()`, cuyo objetivo consiste 
básicamente en _"enganchar"_ el contenido del dataframe al entorno donde R busca los nombres
de variable; de esta forma se puede acceder directamente a las variables del dataframe por 
su nombre:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIEF0dGFjaCBlbCBkYXRhZnJhbWUgYGNlbnNvXG5hdHRhY2goY2Vuc28pXG4jIENhbGN1bGFtb3MgZGlzdHJpYnVjaVx1MDBmM24gZnJlY3VlbmNpYXMgYWJzb2x1dGFzXG5jYmluZCh0YWJsZShzZXhvKSkifQ==</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIERpYWdyYW1hIGRlIGJhcnJhcyBkZSBgbnJvX2hpam9zYFxuYmFycGxvdCh0YWJsZShzZXhvKSkifQ==</div>

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIENhbGN1bGFtb3MgbGEgbWVkaWEgZGUgYG5yb19oaWpvc2Bcbm1lYW4obnJvX2hpam9zKSJ9</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIENhbGN1bGFtb3MgbGEgbWVkaWFuYSBkZSBgbnJvX2hpam9zYFxubWVkaWFuKG5yb19oaWpvcykifQ==</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIENhbGN1bGFtb3MgbGEgdmFyaWFuemEgZGUgYG5yb19oaWpvc2BcbnZhcihucm9faGlqb3MpIn0=</div>

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIERldGFjaCBlbCBkYXRhZnJhbWUgYGNlbnNvYFxuZGV0YWNoKGNlbnNvKSJ9</div>



Una vez que hayamos acabado nuestra tarea “desenganchamos” el dataframe con la 
función `detach()`.


## Eliminar Columnas y Filas {#eliminar-columnas-y-filas}


Si deseamos eliminar valores o columnas enteras asignaremos el valor `NULL` a la 
unidad deseada:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIENyZWFtb3MgdW5hIGNvcGlhIGRlIGBjZW5zb2BcbmNvcGlhX2NlbnNvIDwtIGNlbnNvXG5cbiMgQXNpZ25hbW9zIGVsIHZhbG9yIGBOVUxMYCBhbCB2YWxvciBlbiBbMSwgM11cbmNvcGlhX2NlbnNvWzEsIDNdIDwtIE5VTExcblxuIyBBc2lnbmFtb3MgYE5VTExgYSBsYSB2YXJpYWJsZSBgbnJvX2hpam9zYFxuY29waWFfY2Vuc28kbnJvX2hpam9zIDwtIE5VTExcblxuIyBNb3N0cmFtb3MgcG9yIHBhbnRhbGxhIHZhbG9yIGVuIFsxLCAzXVxuXG52YWxvcl9lbGltaW5hZG8gPC0gY29waWFfY2Vuc28kTnVtZXJvX0hpam9zXG52YWxvcl9lbGltaW5hZG9cblxuIyBNb3N0cmFtb3MgcG9yIHBhbnRhbGxhIHZhcmlhYmxlcyBgY29waWFfY2Vuc29gXG5uYW1lcyhjb3BpYV9jZW5zbykifQ==</div>








Para eliminar filas definiremos un vector de tipo lógico en el que indicaremos para
cada fila si será eliminada o no:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIERlZmluaW1vcyBsYXMgZmlsYXMgYSBjb25zZXJ2YXJcbmZpbGFzX2FfY29uc2VydmFyIDwtIGMoVFJVRSwgRkFMU0UsIFRSVUUsIEZBTFNFKVxuXG4jIE9idGVuZW5vcyB1biBzdWJjb25qdW50byBkZSBgY2Vuc29gIGNvbiBsYXMgZmlsYXMgYSBjb25zZXJ2YXJcbnN1YmNvbmp1bnRvX2NlbnNvIDwtIGNlbnNvW2ZpbGFzX2FfY29uc2VydmFyLF1cblxuIyBNb3N0cmFtb3MgcG9yIHBhbnRhbGxhIGBzdWJjb25qdW50b19jZW5zb2BcbnN1YmNvbmp1bnRvX2NlbnNvIn0=</div>

Otro modo de eliminar las filas es haciendo lo contrario añadiendo el operador
lógico de negación (`!`), a modo de ejemplo utilizaremos el código anterior:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIERlZmluaW1vcyBsYXMgZmlsYXMgYSBjb25zZXJ2YXJcbmZpbGFzX2FfY29uc2VydmFyIDwtIGMoVFJVRSwgRkFMU0UsIFRSVUUsIEZBTFNFKVxuXG4jIE9idGVuZW5vcyB1biBzdWJjb25qdW50byBkZSBgY2Vuc29gIGNvbiBsYXMgZmlsYXMgZWxpbWluYWRhc1xuc3ViY29uanVudG9fY2Vuc28gPC0gY2Vuc29bIWZpbGFzX2FfY29uc2VydmFyLF1cblxuIyBNb3N0cmFtb3MgcG9yIHBhbnRhbGxhIGBzdWJjb25qdW50b19jZW5zb2BcbnN1YmNvbmp1bnRvX2NlbnNvIn0=</div>


Por último, destacar que podemos definir condiciones lógicas para filtrar nuestros
resultados. Por ejemplo, si deseamos mostrar los sujetos de `censo` que tienen mas de dos hijos 
lo haríamos del siguiente modo:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJzdWJjb25qdW50b19jZW5zbyA8LSBjZW5zb1tjZW5zbyRucm9faGlqb3MgPiAyLCBdXG5zdWJjb25qdW50b19jZW5zbyJ9</div>


## Añadir Filas y Columnas {#añadir-filas-y-columnas}


Del mismo modo que utilizamos los operadores `[,]` y `$` para acceder y cambiar un valor,
podemos añadir columnas en `censo` del siguiente modo:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIEFcdTAwZjFhZGltb3MgbGEgY29sdW1uYSBgbmFjaW9uYWxpZGFkYCBlbiBgY2Vuc29gXG5jZW5zbyRuYWNpb25hbGlkYWQgPC0gYyhcIkVTXCIsIFwiRlJcIiwgXCJSVVwiLFwiSVRcIiApXG5cbiMgTW9zdHJhbW9zIGBjZW5zb2AgYHBvciBwYW50YWxsYVxuY2Vuc28ifQ==</div>

Para añadir filas a un `dataframe` existente, definiremos un nuevo vector respetando las variables
de las columnas que han sido definidas con anterioridad y pegando esta fila al `dataframe` original
mediante la función `rbind()` (acrónimo de _rowbind_, pegar por filas):






<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIERlZmluaW1vcyB1bmEgbnVldmEgZmlsYVxuZmlsYV9udWV2YSA8LSBjKFwiT3NjYXJcIiwgXCJHb256YWxlelwiLCBcIjE5ODktMDctMTVcIiwgXCJIT01CUkVcIiwgMCwgXCJFU1wiKVxuXG4jIEFcdTAwZjFhZGltb3MgbGEgbnVldmEgZmlsYSBhIGBjZW5zb2AgY29uIGByYmluZCgpYFxuY2Vuc28gPC0gcmJpbmQoY2Vuc28sIGZpbGFfbnVldmEpXG5cbiMgTW9zdHJhbW9zIHBvciBwYW50YWxsYSBgY2Vuc29gXG5jZW5zbyJ9</div>

## Ordenación de DataFrames {#ordenacion-de-dataframes}

Para ordenar un `data.frame` hemos de aplicar la función `order()` a la variable por la que queramos
ordenar. Por ejemplo, si queremos ordenar el dataframe `censo` por orden alfabético de `nombre`, haríamos:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIFVzYW1vcyBgb3JkZXIoKWAgcGFyYSBvcmRlbmFyXG5jZW5zb1tvcmRlcihub21icmUpLCBdIn0=</div>

También podemos controlar la forma de ordenación mediante el argumento `decreasing`, el cual
acepta los valores lógicos `TRUE` y `FALSE`. Por ejemplo, si deseamos ordenar los sujetos
por el mayor número de hijos, lo haríamos:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJjZW5zb1tvcmRlcihucm9faGlqb3MsIGRlY3JlYXNpbmcgPSBUUlVFKSwgXSJ9</div>


## Cambiar la Forma de un `data.frame`: formato `wide`y `long` {#wide-long}

Cuando nos encontramos con múltiples valores, dispersos en varias columnas, para
la misma instancia, nuestros datos estan en forma `wide` (ancho).

Por otro lado, nuestros datos están en forma `long` (largo) si existe una observación (fila)
por variable. Es decir, disponemos de múltiples filas por instancia.

Permitidme ilustrar estos conceptos mediante un ejemplo. Nuestros datos están en 
formato `long` cuando los colacamos del siguiente modo:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIERlZmluaW1vcyBsYXMgZmlsYXNcbmFsdW1ubyA8LSBjKDEsIDIsIDEsIDIsIDIsIDEpXG5zZXhvIDwtIGMoXCJNXCIsIFwiRlwiLCBcIk1cIiwgXCJGXCIsIFwiRlwiLCBcIk1cIilcbmFzaWduYXR1cmEgPC0gYyhcIk1hdGVtYXRpY2FzXCIsIFwiQ2llbmNpYXNcIiwgXCJDaWVuY2lhc1wiLCBcIkxpdGVyYXR1cmFcIiwgXCJNYXRlbWF0aWNhc1wiLCBcIkxpdGVyYXR1cmFcIilcbm5vdGEgPC0gYygxMCwgNCwgOCwgNiwgNywgNylcblxuIyBDcmVhbW9zIGVsIGBkYXRhLmZyYW1lYCBcbm9ic2VydmFjaW9uZXNfZm9ybWF0b19sb25nIDwtIGRhdGEuZnJhbWUoYWx1bW5vLCBzZXhvLCBhc2lnbmF0dXJhLCBub3RhKVxuXG4jTW9zdHJhbW9zIHBvciBwYW50YWxsYSBgZm9ybWF0b19sb25nXG5vYnNlcnZhY2lvbmVzX2Zvcm1hdG9fbG9uZyJ9</div>

Como podemos observar, existe una fila para cada variable que hemos definido. Este formato
es muy útil en la gran mayoría de funciones estadísticas.

Por otro lado, nuestros datos se encuentra en formato `wide` cuando los organizamos del 
siguiente modo:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIERlZmluaW1vcyBsYXMgY29sdW1uYXNcbmFsdW1ubyA8LSBjKDEsIDIpXG5zZXhvIDwtIGMoXCJNXCIsIFwiRlwiKVxubWF0ZW1hdGljYXMgPC0gYygxMCwgNylcbmNpZW5jaWFzIDwtIGMoOCwgNClcbmxpdGVyYXR1cmEgPC0gYyg3LCA2KVxuXG4jIENyZWFtb3MgZWwgYGRhdGEuZnJhbWVgXG5vYnNlcnZhY2lvbmVzX2Zvcm1hdG9fd2lkZSA8LSBkYXRhLmZyYW1lKGFsdW1ubywgc2V4bywgbWF0ZW1hdGljYXMsIGNpZW5jaWFzLCBsaXRlcmF0dXJhKVxuXG4jIE1vc3RyYW1vcyBwb3IgcGFudGFsbGEgYGZvcm1hdG9fd2lkZWBcbm9ic2VydmFjaW9uZXNfZm9ybWF0b193aWRlIn0=</div>

Como podemos observar cada columna (variable) representa un valor para cada instancia.


### Uso de `stack()` Para Data Frames con Estructuras Simples {#stack}


La función `stack()` básicamente combina varios vectores en un único vector. Siguiendo
con el ejemplo, si queremos nuestro `data.frame` en formato `long` combinaremos las
columnas `matematicas`, `ciencias` y `literatura` en una sola:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIFBhc2Ftb3MgZGUgYHdpZGVgIGEgYGxvbmdgXG5mb3JtYXRvX2xvbmcgPC0gc3RhY2sob2JzZXJ2YWNpb25lc19mb3JtYXRvX3dpZGUsIFxuICAgICAgICAgICAgICAgICAgICAgIHNlbGVjdCA9IGMobWF0ZW1hdGljYXMsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjaWVuY2lhcyxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxpdGVyYXR1cmEpKVxuXG4jIE1vc3RyYW1vcyBgZm9ybWF0b19sb25nYFxuZm9ybWF0b19sb25nIn0=</div>


Para pasar de formato `long` a `wide`, necesitamos desagrupar nuestros datos con 
el objetivo de obtener una fila por instancia, en la que cada valor se corresponde a una
variable diferente. Para ello haremos uso de la función `unstack()` como mostramos
en el siguiente ejemplo:


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIENvbnN0cnVpbW9zIGEgZm9ybWF0byBgd2lkZWBcbmZvcm1hdG9fd2lkZSA8LSB1bnN0YWNrKG9ic2VydmFjaW9uZXNfZm9ybWF0b19sb25nLFxuICAgICAgICAgICAgICAgICAgICAgICAgbm90YSB+IGFzaWduYXR1cmEgKVxuICAgICAgICAgICAgICAgICAgICAgIFxuIyBEZXZ1ZWx2ZSBgZm9ybWF0b193aWRlYFxuZm9ybWF0b193aWRlIn0=</div>


### Transformar Data Frames con Estructuras Complejas {#tidyr}


Existen otras funciones que nos permiten transformar data frames con estructuras
más complejas:

- La función `reshape()` que forma parte del paquete `stats`.
- Las funciones `spread()` y `gather`del paquete `tidyr`.
- La función `melt()` del paquete `reshape2`.

En este curso en un [módulo posterior]() profundizaremos en el uso del paquete `tidyr`.


## Resumen {#resumen}

- Creamos data frames con `data.frame()`.
- Mediante la función `str()` lograremos conocer la estrucutra del data frame.
- Para inspeccionar las primeras o últimas líneas, podemos hacer uso de las
funciones `head()` y `tail()`. 
- Por medio de `nrow()`y `ncol()` recuperamos el número de filas y columnas.
- Accederemos a los elementos de una data frame del mismo modo que lo hacemos en 
las matrices o listas.
- Gracias a las funciones `attach` y `detach()` podemos accecer a las variables de
un data frame de forma directa.
- Hemos aprendido a elimiar, añadir y ordenar filas y columnas.
- Por último, hemos discutido cuando nos encontramos en formato `wide` y `long`.

 



