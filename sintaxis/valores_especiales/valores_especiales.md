<script src="https://cdn.datacamp.com/datacamp-light-latest.min.js"></script>








# Valores Especiales

Para ayudarnos con los cálculos aritméticos R, soporta cuatro valores numéricos especiales:

- Inf
- -Inf
- NaN
- Na

Los dos primeros, son la forma positiva y negativa para valores infinitos. __NaN__ (del inglés, "not-a-number") significa que nuestro cálculo o no tiene sentido matemático o que podría no haberse realizado correctamente. __NA__ (del inglés, "not available") representa un valor desconocido.

## Inf y -Inf {#inf}

Si una computación resulta en un número que es demasiado grande, R devolverá `Inf` para un numero positivo y `-Inf` para un número negativo (esto es un valor infinito positivo y infinito negativo, respectivamente):


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIyIF4gMTAyNCJ9</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiItIDIgXiAxMDI0In0=</div>

Esto es también cierto cuando hacemos la división entre 0:


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIxIC8gMCJ9</div>

## NaN {#nan}


En ocasiones, una computación producirá un resultado que no tiene sentido. En estos casos, R devolverá `NaN` (del inglés, "not a number"):


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJJbmYgLSBJbmYifQ==</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIwIC8gMCJ9</div>


## NA {#na}

En R, los valores `NA` son usados para representar valores desconocidos. (NA es la abreviación "not available"). Nos encontraremos valores NA en texto importado a R (representando valores desconocidos) o datos importados desde bases de datos (para reemplazar valores __NULL__).

A modo de ejemplo, si el vector `peso` recoge los pesos de 5 personas, habiéndose perdido el cuarto valor, se codificaría como:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJwZXNvIDwtIGMoNzcsIDY4LCA4NSwgTkEsIDczKSJ9</div>

Si pretendemos calcular el peso medio, obtendremos como resultado un valor perdido:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJtZWFuKHBlc28pIn0=</div>

Si, en cualquier caso, deseamos calcular la media de los pesos efectivamente disponibles,
utilizaríamos la opción de _eliminar valores perdidos_ (del inglés, NA remove) que se declara
como `na.rm=TRUE`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJtZWFuKHBlc28sIG5hLnJtID0gVFJVRSkifQ==</div>

