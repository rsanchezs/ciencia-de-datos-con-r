<script src="https://cdn.datacamp.com/datacamp-light-latest.min.js"></script>








# Listas

Podemos entender una _lista_ como un contenedor de objetos que pueden ser de cualquier clase: números, vectores, matrices, [funciones](../../funciones/funciones.md), [data.frames](../../estructuras_datos/data_frames/data_frames.md), incluso otras listas. Una lista puede contener a la vez varios de estos objetos, que pueden ser además de distintas dimensiones.

## Creación de listas {#creacion}

Podemos crear listas con la función `list()`, que acepta un número arbitrario de 
argumentos. Los elementos de la lista pueden ser cualquier tipo de objeto:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJsaXN0YSA8LSBsaXN0KDE6MywgXG4gICAgICAgICAgICAgIFwiUnViZW5cIixcbiAgICAgICAgICAgICAgcGksXG4gICAgICAgICAgICAgIGxpc3QoYygtMSwtMiksIC01KSlcbmxpc3RhIn0=</div>

Como con los vectores, podemos dar nombre a los elementos en su construcción, o 
posteriormente con la ayuda de la función `names()`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJuYW1lcyhsaXN0YSkgPC0gYyhcImFcIiwgXCJiXCIsIFwiY1wiLCBcImRcIilcbmxpc3RhIn0=</div>

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJsYV9taXNtYV9saXN0YSA8LSBsaXN0KGEgPSAxOjMsIFxuICAgICAgICAgICAgICAgICAgICAgICBiID0gXCJSdWJlblwiLCBcbiAgICAgICAgICAgICAgICAgICAgICAgYyA9IHBpLCBcbiAgICAgICAgICAgICAgICAgICAgICAgZCA9IGxpc3QoYygtMSwtMiksIC01KSlcbmxhX21pc21hX2xpc3RhIn0=</div>

Un herramienta muy útil para el trabajo con listas es la función `str()` que nos muestra
su estructura:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJzdHIobGlzdGEpIn0=</div>


## Selección de Elementos {#seleccion}

Disponemos de tres métodos para seleccionar elementos de una lista, que examinaremos
a partir de `lista`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJsaXN0YSA8LSBsaXN0KGEgPSAxOjMsIGIgPSBcIlJ1YmVuXCIsIGMgPSBwaSwgZCA9IGxpc3QoYygtMSwtMiksIC01KSkifQ==</div>

- La notación `[]` extrae una sublista. El resultado será siempre una lista:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJzdHIobGlzdGFbMToyXSkifQ==</div>

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJzdHIobGlzdGFbNF0pIn0=</div>


Como con los vectores, podemos seleccionar elementos con un vector de tipo `logical`,
`integer` o `character`.

- La notación `[[]]` extrae un único componente de la lista. Esto es, elimina un nivel
en la jerarquía de la lista:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJzdHIobGlzdGFbWzFdXSkifQ==</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJzdHIobGlzdGFbWzRdXSkifQ==</div>

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJzdHIobGlzdGFbWzRdXVsxXSkifQ==</div>

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJzdHIobGlzdGFbWzRdXVtbMV1dKSJ9</div>

- El operador `$` extrae elementos de una lista por medio de su nombre. El funcionamiento es el mismo que con el
operador `[[]]` excepto que no tenemos que utilizar comillas (`""`):

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJzdHIobGlzdGEkYSkifQ==</div>

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJzdHIobGlzdGFbW1wiYVwiXV0pIn0=</div>


La distinción entre `[]` y `[[]]` es importante en las listas, puesto que `[[]]` navega jerárquicamente por la lista,
mientras que `[]` devuelve una sublista. A continuación mostramos una representación visual de las operaciones realizadas
en el código anterior:

![Selección elementos de una lista, visualmente](http://i.imgur.com/OZt8KNs.png)


## Resumen

- Creamos listas con la función `list()`.
- Con la ayuda de la función `names()` podemos consultar o cambiar los nombres
de los elementos.
- Una función útil para el trabajo con listas es `str()` que nos muestra su estructura.
- Hemos analizado los diferentes operadores para seleccionar elementos de una lista.








