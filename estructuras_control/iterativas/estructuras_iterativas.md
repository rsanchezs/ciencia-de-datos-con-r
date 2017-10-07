<script src="https://cdn.datacamp.com/datacamp-light-latest.min.js"></script>








# Estructuras Iterativas

Las instrucciones de repetición, de iteración o bucles, facilitan la repetición de un bloque de instrucciones, un número determinado de veces o mientras se cumpla una condición.

Por lo general, existen dos tipos de estructuras iterativas o bucles en los lenguajes de programación. Encontraremos un tipo de bucle que se ejecuta un número preestablecido de veces, que es controlado por un contador o índice, incrementado en cada iteración. Este tipo de bucle forma parte de la familia  `for`.

Por otro lado, encontraremos un tipo de bucle que se ejecuta mientras se cumple una condición. Esta condición se comprueba al principio o el final de la construcción. Esta variante pertenece a la familia `while` or `repeat`, respectivamente.

Por último, siempre podemos consultar los comandos de control del flujo mediante `?Control` en la consola de RStudio.


## Bucle __`for`__

El bucle `for` es una estructura iterativa que se ejecuta un número preestablecido de veces, que es controlado por un contador o índice, incrementado en cada iteración.

A continuación, mostramos el diagrama de flujo del bucle `for`. En términos de diagramas de flujo, los rectángulos significan la realización de un proceso, en otras palabras la ejecución de un bloque de instrucciones. Por otro lado, los rombos con conocidos como símbolos de decisión, es decir se corresponden a preguntas cuyas respuestas únicamente tienen dos posibles respuestas, concretamente, TRUE (T) o FALSE (F).


![Diagrama de Flujo Bucle For](https://i.imgur.com/ggkzeJR.png)

Una o mas instrucciones dentro del rectángulo de inicialización son seguidas por la evaluación de la condición en una variable la cual puede asumir valores dentro de una secuencia. En la [figura](https://i.imgur.com/ggkzeJR.png), esto es representado por el símbolo del rombo.

En otras palabras, estamos comprobando si el valor actual de la variable está dentro de un rango específico. Por lo general, especificaremos el rango en la inicialización.

Si la condición no se cumple, es decir el resultado es `False`, el bucle nunca se ejecutará. Esto es indicado por la flecha de la derecha de la estructura `for`. El programa entonces ejecutará la primera instrucción que se encuentre después del bucle.

Si la condición se verifica, una instrucción o bloque de instrucciones es ejecutado. Una vez la ejecución de estas instrucciones ha finalizado, la condición es evaluada de nuevo. En la [figura](https://i.imgur.com/ggkzeJR.png) esto es indicado por las líneas que van desde el rectángulo que incrementa o disminuye el contador hasta el símbolo del rombo que evalúa la condición.

Por ejemplo, en el siguiente fragmento de código calculamos la mediana de un conjunto de observaciones, que se obtiene dividiendo la suma de todas las observaciones por el número de individuos:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIENyZWFtb3MgdW4gdmVjdG9yIGFsZWFvdG9yaW8gZGUgMTAgb2JzZXJ2YWNpb25lc1xub2JzZXJ2YWNpb25lcyA8LSBzYW1wbGUoMTo1MCwgMTAwLCByZXBsYWNlID0gVFJVRSlcblxuIyBJbmljaWFsaXphbW9zIGBzdW1hYCBkZSB0b2RhcyBsYXMgb2JzZXJ2YWNpb25lc1xuc3VtYSA8LSAwXG5cbiMgQ3JlYW1vcyB1biBidWNsZSBmb3IgcXVlIGNhbGN1bGEgbGEgbWVkaWFcbmZvcihpIGluIHNlcV9hbG9uZyhvYnNlcnZhY2lvbmVzKSkge1xuICBzdW1hIDwtICBvYnNlcnZhY2lvbmVzW2ldICsgc3VtYVxuICBtZWRpYSA8LSBzdW1hIC8gbGVuZ3RoKG9ic2VydmFjaW9uZXMpXG59XG5cbiMgTW9zdHJhbW9zIHBvciBwYW50YWxsYSBsYSBtZWRpYVxubWVkaWEifQ==</div>

### Bucles __`for`__ Anidados

Los bucles `for` pueden ser anidados. En el siguiente fragmento de código creamos un algoritmo que calcula la suma de dos matrices cuadradas:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIENyZWFtb3MgZG9zIG1hdHJpY2VzIGN1YWRyYWRhc1xubTEgPC0gbWF0cml4KHNhbXBsZSgxOjEwMCwgOSwgcmVwbGFjZSA9IFRSVUUpLCBucm93ID0gMylcbm0yIDwtIG1hdHJpeChzYW1wbGUoMToxMDAsIDksIHJlcGxhY2UgPSBUUlVFKSwgbnJvdyA9IDMpXG5cbiMgSW5pY2lhbGl6YW1vcyBsYSBtYXRyaXogcXVlIGNvbnRlbmRyYSBtMSttMlxuc3VtYSA8LSBtYXRyaXgobnJvdyA9IDMsIG5jb2wgPSAzKVxuXG4jIFBhcmEgY2FkYSBmaWxhIHkgY2FkYSBjb2x1bW5hLCByZWFsaXphbW9zIGxhIHN1bWEgZWxlbWVudG8gYSBlbGVtZW50byBcbmZvcihpIGluIDE6bnJvdyhtMSkpIHtcbiAgZm9yKGogaW4gMTpuY29sKG0xKSkge1xuICAgIHN1bWFbaSwgal0gPC0gbTFbaSwgal0gKyBtMltpLCBqXVxuICB9XG59XG5cbiMgTW9zdHJhbW9zIHBvciBwYW50YWxsYSBsYSBzdW1hIGRlIG0xK20yXG5zdW1hIn0=</div>

El siguiente ejemplo sirve para ejemplificar el anidamiento de bucles `for`. Cada uno con su propio bloque de instrucciones y manejado con su propio índice. Es decir, `i` controla las filas de las matrices y `j` las columnas.


## Bucle __`while`__

Cuando nos encontramos en la situación en la que no conocemos el número de iteraciones de antemano, podemos hacer uso del bucle `while`. Este bucle se ejecuta mientras se cumple una condición que se comprueba al principio de la construcción.

A continuación se muestra el diagrama de flujo de `while`:

![Diagrama de Flujo Bucle While](https://i.imgur.com/JdLHPIL.png)

La estructura de una construcción `while` está compuesta de un bloque de inicialización, seguido por una condición lógica. Esta condición es normalmente una expresión de comparación entre una variable de control y un valor, en la que usaremos los operadores de comparación, pero cabe señalar que cualquier expresión que evalúa a un valor lógico, `TRUE` o `FALSE`, es válida.

Si el resultado es `FALSE` (F), el bucle nunca será ejecutado. Esto es indicado por la flecha de la derecha en la [figura](https://i.imgur.com/JdLHPIL.png). En esta situación el programa ejecutará la primera instrucción que encuentre después del bloque iterativo.

Por otro lado, si el resultado es `TRUE` (T), la instrucción o bloque de instrucciones del cuerpo de `while` son ejecutadas. Esto sucederá hasta que la condición lógica sea `FALSE`.

El siguiente ejemplo es un ejemplo de utilización de la estructura `while`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIEFsZ29yaXRtbyBxdWUgbXVlc3RyYSBwb3IgcGFudGFsbGEgbG9zIDEwIHByaW1lcm9zIG5cdTAwZmFtZXJvcyBuYXR1cmFsZXNcbm4gPSAxXG53aGlsZShuIDw9IDUpIHtcbiAgcHJpbnQobilcbiAgbiA9IG4gKyAxXG59XG5cbiJ9</div>

## Bucle __`repeat`__

El bucle `repeat` es similar a `while`, excepto que la instrucción o bloque de instrucciones del `while` es ejecutado al menos una vez, sin importar cual es el resultado de la condición.

A continuación, como en los apartados anteriores mostramos el [diagrama de flujo](https://i.imgur.com/OXnEscG.png) de la estructura `repeat`:

![Diagrama de Flujo Repeat](https://i.imgur.com/OXnEscG.png)

Como alternativa al ejemplo anterior, podríamos codificar el algoritmo como:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIEFsZ29yaXRtbyBxdWUgbXVlc3RyYSBwb3IgcGFudGFsbGEgbG9zIDEwIHByaW1lcm9zIG5cdTAwZmFtZXJvcyBuYXR1cmFsZXNcbm4gPSAxXG5yZXBlYXQge1xuICBpZihuIDw9IDEwKSB7XG4gICAgcHJpbnQobilcbiAgICBuID0gbiArMVxuICB9IGVsc2Uge1xuICAgIGJyZWFrXG4gIH1cbn0ifQ==</div>

En el ejemplo de la estructura `repeat` podemos observar que el bloque de código es ejecutado al menos una vez y que finaliza cuando la función `if` es verificada.

Observemos que hemos tenido que establecer una condición dentro del loop la cual establece la salida con la cláusula [`break`](#break). Esta cláusula nos introduce en los conceptos de salida e interrupción de las iteraciones en una estructura iterativa y que pasamos a analizar en los apartados siguientes.

## Cláusula __`break`__ {#break}

Cuando el intérprete R encuentra un `break`, pasará el control a la instrucción que se encuentra justo después  del final de la estructura iterativa (en el caso que la hubiese). En el caso de bucles anidados, la cláusula `break` nos permitirá salir del bucle mas interno.

A continuación se muestra el [diagrama de flujo](https://i.imgur.com/AGH5wIx.png) de `break`:

![Diagrama Flujo Break](https://i.imgur.com/AGH5wIx.png)

Para ilustrar mejor el uso de `break` crearemos un algoritmo que define una [matriz cuadrada](https://es.wikipedia.org/wiki/Matriz_cuadrada)  y que utiliza dos bucles `for` anidados para calcular la [diagonal principal](https://es.wikipedia.org/wiki/Diagonal_principal) y su [matriz triangular superior](https://es.wikipedia.org/wiki/Matriz_triangular):


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJcblxuIyBDcmVhbW9zIHVuYSBtYXRyaXogY3VhZHJhZGEgZGUgNiB4IDZcbm0gPC1cbiAgbWF0cml4KFxuICAgIGRhdGEgPSBzYW1wbGUoeCA9IDEwLCBzaXplID0gMzYsIHJlcGxhY2UgPSBUUlVFKSxcbiAgICAgICAgICAgICAgICAgIG5yb3cgPSA2LFxuICAgICAgICAgICAgICAgICAgbmNvbCA9IDZcbiAgKVxuIyBNb3N0cmFtb3MgcG9yIHBhbnRhbGxhIGBtYFxubVxuXG4jIENyZWFtb3MgdW4gdmVjdG9yIHBhcmEgbGEgZGlhZ29uYWwgcHJpbmNpcGFsXG5kaWFnb25hbF9wcmluY2lwYWwgPC0gdmVjdG9yKG1vZGUgPSBcImludGVnZXJcIiwgbGVuZ3RoID0gbnJvdyhtKSlcbmRpYWdvbmFsX3ByaW5jaXBhbFxuXG4jIEFsZ29yaXRtbyBxdWUgY2FsY3VsYSBsYSBtYXRyaXogdHJpYW5ndWxhciBpbmZlcmlvciB5IHN1IGRpYWdvbmFsIHByaW5jaXBhbFxuZm9yIChpIGluIDE6bnJvdyhtKSkge1xuICBmb3IgKGogaW4gMTpuY29sKG0pKSB7XG4gICAgaWYgKGkgPT0gaikge1xuICAgICAgYnJlYWtcbiAgICB9IGVsc2Uge1xuICAgICAgbSBbaSwgal0gPC0gMFxuICAgIH1cbiAgICBcbiAgfVxuICBkaWFnb25hbF9wcmluY2lwYWxbal0gPC0gbVtpLCBqXVxufVxuXG4jIE1vc3RyYW1vcyBwb3IgcGFudGFsbGEgZGlhZ29uYWwgcHJpbmNpcGFsXG5kaWFnb25hbF9wcmluY2lwYWxcbiMgTW9zdHJhYW1vcyBwb3IgcGFudGFsbGEgbWF0cml6IGluZmVyaW9yIGRlIG1cbm0ifQ==</div>

Examinaremos brevemente ahora el código anterior, como se puede observar en primer lugar se define una matriz cuadrada de 6 x 6 y creamos un vector de tipo entero con una longitud de 6 que en el momento de su inicialización contiene todos sus valores igual a cero.

Cuando los indices son iguales cumpliéndose la condición del bucle `for` mas interno, y que itera mediante `j` por las columnas de la matriz, se ejecuta un `break` y el loop mas interno es interrumpido para saltar directamente a la instrucción del bucle mas externo. Esta instrucción calcula la diagonal principal de la matriz. Seguidamente, el control pasa la condición lógica del bucle más externo que itera por las filas de `m` mediante el índice `i`.

En el caso de que los indices sean diferentes, a la posición del elemento `[i, j]` se le asigna el valor de cero con el propósito de calcular la matriz triangula superior.


## Cláusula __`next`__

La cláusula `next` interrumpe una iteración y salta al siguiente cico. De hecho, salta a la evaluación de la condición del bucle en el que se encuentra.

En otros lenguajes de programación el equivalente a `next` es conocido como __continue__, cuyo significado es el mismo: en la línea de código que te encuentres, bajo la verificación de la condición, salta a la evaluación del bucle.

El diagrama de flujo de `break` se muestra en la [figura](https://i.imgur.com/vZknTyQ.png) siguiente:

![Diagrama flujo Next](https://i.imgur.com/vZknTyQ.png)

Pongamos por caso que queremos mostrar por pantalla los números pares de una secuencia de enteros:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJmb3IgKGkgaW4gMToxMCkge1xuICBpZihpICUlIDIpXG4gICAgbmV4dFxuICAgIHByaW50KGkpXG59In0=</div>

Este algoritmo utiliza el [teorema del resto](https://es.wikipedia.org/wiki/Teorema_del_resto) para calcular si un número es par o impar. Si el resto de dividir el número entre dos es igual a cero entonces se trata de un número par y es mostrado por pantalla.

Por otro lado, si el resto es diferente a cero será impar y saltará a la evaluación de la condición del bucle `for` ignorando cualquier instrucción que se encuentre a continuación. 

Hay que mencionar, además el uso del operador `%%` para calcular el resto de la división especificado en la condición lógica de la instrucción `if`.

## Alternativas al Uso de Bucles en R

### Vectorización

Como ya hemos visto con anterioridad, la vectorización nos permite realizar operaciones elemento a elemento en vectores y matrices.

Además, deberíamos saber a estas alturas que la estructura de datos elemental en R es el vector. Así pues, una colección de números es un vector numérico.

Si combinamos dos vectores de la misma longitud, obtenemos una matriz. Que como ya hemos visto podemos hacerlo vertical u horizontalmente, mediante el uso de diferentes instrucciones R. Es por eso, que en R una matriz es considerada como una colección de vectores verticales o horizontales. Lo dicho hasta aquí supone que, podemos vectorizar operaciones repetitivas en vectores.

De ahí que, la mayoría de las construcciones iterativas que hemos visto en los ejemplos de esta sección pueden realizarse en R por medio de la vectorización.

Sirva de ejemplo la suma de dos vectores `v1` y `v1` en un vector `v3`, la cual puede realizarse elemento a elemento mediante un bucle `for` como:


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJcbm4gPC0gNFxudjEgPC0gYygxLCAyLCAzLCA0KVxudjIgPC0gYyg1LCA2LCA3LCA4KVxudjMgPC0gdmVjdG9yKG1vZGUgPSBcImludGVnZXJcIiwgbGVuZ3RoID0gbGVuZ3RoKG4pKVxuXG5mb3IgKGkgaW4gMTpuKSB7IFxuXHR2M1tpXSA8LSB2MVtpXSArIHYyW2ldIFxufVxudjMifQ==</div>

Si bien, podemos usar como alternativa la vectorización nativa de R:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2MyA9IHYxICsgdjJcbnYzIn0=</div>

### El Conjunto de Funciones __`apply`__

La familia `apply` pertenece al paquete base R y esta formado por un conjunto de funciones que nos permiten manipular una selección de elementos en matrices, arrays, listas y dataframes de forma repetitiva.

Es decir, estas funciones nos permiten iterar por los elementos sin tener la necesidad de utilizar explícitamente una construcción iterativa. Estas funciones toman como entrada una lista, matriz o array y aplican esta función a cada elemento. Esta función podría ser una función de agregación, como por ejemplo la media, u otra función de transformación o selección.

La familia `apply` esta compuesta de las funciones:

* [apply](https://www.rdocumentation.org/packages/base/versions/3.3.1/topics/apply)
* [lapply](https://www.rdocumentation.org/packages/base/versions/3.3.1/topics/lapply?)
* [sapply](https://www.rdocumentation.org/packages/base/versions/3.3.1/topics/lapply?)
* [vapply](https://www.rdocumentation.org/packages/base/versions/3.3.1/topics/lapply?)
* [mapply](https://www.rdocumentation.org/packages/base/versions/3.3.1/topics/mapply)
* [rapply](https://www.rdocumentation.org/packages/base/versions/3.3.1/topics/tapply)
* [tapply](https://www.rdocumentation.org/packages/base/versions/3.3.1/topics/tapply)


### El paquete __`purrr`__

El paquete [purr](http://purrr.tidyverse.org/) forma parte del ecosistema [tidyverse](https://www.tidyverse.org/) y esta compuesto de un conjunto de funciones que aprovechan el paradigma de [programación funcional](https://es.wikipedia.org/wiki/Programaci%C3%B3n_funcional) de R, proporcionando un conjunto completo y consistente de herramientas para trabajar con funciones y vectores.

#### Instalación

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIExhIG1hbmVyYSBtYXMgZmFjaWwgZGUgY29uc2VndWlyIGBwdXJycmAgZXMgaW5zdGFsYXIgZWwgZWNvc2lzdGVtYSB0aWR5dmVyc2Vcbmluc3RhbGwucGFja2FnZXMoXCJ0aWR5dmVyc2VcIilcblxuIyBBbHRlcm5hdGl2YW1lbnRlLCBwb2RlbW9zIGluc3RhbGFyIHNvbG8gcHVycnI6XG5pbnN0YWxsLnBhY2thZ2VzKFwicHVycnJcIikifQ==</div>


#### Uso

El siguiente ejemplo sirve para demostrar las diferentes alternativas que disponemos para realizar un [algoritmo iterativo](https://es.wikipedia.org/wiki/Algoritmo_iterativo)  mediante las herramientas que hemos visto en este capítulo.

Consideremos que queremos calcular el cuadrado de cada elemento en una secuencia de enteros del 1 a `n`. La primera solución pasa por utilizar una construcción iterativa:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJuIDwtIDVcbnJlcyA8LSByZXAoTkFfaW50ZWdlcl8sIG4pIFxuZm9yIChpIGluIHNlcV9sZW4obikpIHtcbiAgcmVzW2ldIDwtIGkgXiAyXG59XG5yZXMifQ==</div>

La segunda opción es por medio de la vectorización:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJuIDwtIDVcbnNlcV9sZW4obikgXiAyIn0=</div>

En tercer lugar, mediante `sapply`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJuIDwtIDVcbnNhcHBseSgxOm4sIGZ1bmN0aW9uKHgpIHheMikifQ==</div>


Por último, mediante `purrr::map()`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJsaWJyYXJ5KHB1cnJyKVxubiA8LSA1XG5tYXBfZGJsKDE6biwgIGZ1bmN0aW9uKHgpIHggXiAyKSJ9</div>

En este ejemplo por la sencillez del caso las dos últimas alternativas no son necesarias y la correcta sería hacerlo mediante vectorización. Pero en estructuras de datos y funciones mas complejas optaríamos por cualquiera de las dos últimas opciones.

En este curso y en un [módulo posterior](), trataremos en profundidad el uso del paquete `purrr` que hace uso de la programación funcional en las iteraciones en oposición al paradigma de la iteración imperativa y que hemos tratado en este capítulo. Una vez dominemos las funciones en el paquete `purrr`, seremos capaces de resolver la gran mayoría de algoritmos que impliquen la iteración con menos código, mas legible y con menos errores.


## Consejos para el uso de Bucles en R

* Siempre que sea posible hemos de poner la menor cantidad de instrucciones dentro de una estructura iterativa. Puesto que, todas las instrucciones dentro de un bucle se repiten varios ciclos y quizás no sea necesario.

* Hemos de tener cuidado con el uso de `repeat`, asegurándonos que definimos de forma explícita una condición para finalizar la estructura, de lo contrario nos encontraremos ante una iteración infinita.

* Tratar de usar como alternativa a los bucles anidados la [recursividad en funciones](https://es.wikipedia.org/wiki/Algoritmo_iterativo). Es decir, es mejor el uso de una o mas llamadas a funciones dentro del bucle a que este sea demasiado grande.

* La peculiar naturaleza de R nos sugiere no usar las construcciones iterativas para todo, cuando disponemos de otras alternativas como la vectorización, la familia `apply` y el paquete `purrr`. 







[for]:https://i.imgur.com/ggkzeJR.png
[while]:https://i.imgur.com/JdLHPIL.png
[repeat]:https://i.imgur.com/OXnEscG.png
[break]:https://i.imgur.com/AGH5wIx.png
[next]:https://i.imgur.com/vZknTyQ.png





