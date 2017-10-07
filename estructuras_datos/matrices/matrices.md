<script src="https://cdn.datacamp.com/datacamp-light-latest.min.js"></script>








# Matrices {#matrices}

Una _matriz_ es una extensión de un vector a dos dimensiones, lo que implica que dispone del atributo _dimension_. El atributo dimensión es en si mismo un vector de longitud 2 (numero de filas, numero de columnas). Una matriz se utiliza para representar datos de un único tipo en dos dimensiones.




## Creación de Matrices {#creacion-de-matrices}


Para crear matrices utilizaremos la función `matrix()`, la sintaxis es la siguiente

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJzdHIobWF0cml4KSJ9</div>


A continuación mostramos la descripción de los argumentos:

- __data__ es el vector que contiene los elementos que formaran parte de la matriz.
- __nrow__ es el número de filas.
- __ncol__ es el número de columnas.
- __byrow__ es un valor lógico. Si es `TRUE` el vector que pasamos será ordenado por filas.
- __dimnames__ nombres asignado a filas y columnas.


Seguidamente se muestra un ejemplo de creación de una matriz:


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJtYXRyaXogPC0gbWF0cml4KDE6MTIsIG5yb3cgPSA0KVxubWF0cml6In0=</div>


A partir de un vector, si le añadimos el atributo dimensión podemos obtener una matriz:


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJtIDwtIDE6MTJcbm0ifQ==</div>



<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJkaW0obSkgPC0gYyg0LCAzKVxubSJ9</div>


Cuando creamos una matriz, los valores que pasamos son ordenados por columnas. Pero también es posible llenar la matriz por filas especificando el argumento `byrow = TRUE`:


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJtYXRyaXogPC0gbWF0cml4KDE6MTIsIG5yb3cgPSA0LCBieXJvdyA9IFRSVUUpXG5tYXRyaXoifQ==</div>


En el siguiente ejemplo hacemos uso del argumento `dimnames` para dar nombre a las filas y columnas:



<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJhdXRvbW92aWxlcyA8LSBtYXRyaXgoXG4gICAgICAgICAgICAgICAgMToxMixcbiAgICAgICAgICAgICAgICBucm93ID0gNCxcbiAgICAgICAgICAgICAgICBieXJvdyA9IFRSVUUsXG4gICAgICAgICAgICAgICAgZGltbmFtZXMgPSBsaXN0KFxuICAgICAgICAgICAgICAgICAgYyhcIkJsYW5jb1wiLCBcIlJvam9cIiwgXCJOZWdyb1wiLCBcIkdyaXNcIiksXG4gICAgICAgICAgICAgICAgICBjKFwiVG95b3RhXCIsIFwiQXVkaVwiLCBcIk5pc3NhblwiKVxuICAgICAgICAgICAgICAgIClcbilcbmF1dG9tb3ZpbGVzIn0=</div>


Mediante las funciones `cbind()` y `rbind()` es posible crear matrices por columnas o por filas a partir de dos vectores de la misma longitud:



<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2MSA8LSBjKDEsIDIsIDMpXG52MiA8LSBjKDQsIDUsIDYpXG5tMSA8LSBjYmluZCh2MSwgdjIpXG5tMSJ9</div>

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2MSA8LSBjKDEsIDIsIDMpXG52MiA8LSBjKDQsIDUsIDYpXG5tMSA8LSByYmluZCh2MSwgdjIpXG5tMSJ9</div>




## Filas, Columnas y Dimensión {#filas-columnas-y-dimension}


La función `dim()` devuelve un vector de integers con la dimensión del objeto:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJkaW0oYXV0b21vdmlsZXMpIn0=</div>


Además con las funciones `nrow()` y `ncol()` podemos conocer el número de filas y columnas, respectivamente:


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJucm93KGF1dG9tb3ZpbGVzKSJ9</div>

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJuY29sKGF1dG9tb3ZpbGVzKSJ9</div>


La función `length()` que hemos visto con anterioridad en los vectores, también funciona en matrices. Cuando trabajamos con matrices; no obstante, devuelve el producto de cada una de las dimensiones:




<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJsZW5ndGgoYXV0b21vdmlsZXMpIn0=</div>


## Nombres de las Filas, Columnas y Dimensiones {#nombres-de-las-filas-columnas-y-dimensiones}


Del mismo modo que los vectores poseen el atributo `names` para sus elementos, las matrices disponen de `rownames` y `colnames` para las filas y columnas.


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJjb2xvcmVzIDwtIHJvd25hbWVzKGF1dG9tb3ZpbGVzKVxuY29sb3JlcyJ9</div>

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJtYXJjYXMgPC0gY29sbmFtZXMoYXV0b21vdmlsZXMpXG5tYXJjYXMifQ==</div>

Por medio de la función `dimnames()` obtendremos una [lista](../listas/listas.md) que
contiene dos vectores con los atributos `rownames` y `colnames`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJkaW1uYW1lcyhhdXRvbW92aWxlcykifQ==</div>

## Operaciones con Matrices {#operaciones-con-matrices}




La función `diag()` extrae la diagonal principal de una matriz:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJBIDwtIG1hdHJpeChjKDEsIDIsIDMsIDQsIDUsIDYsIDcsIDgsIDkpLCBucm93ID0gMywgbmNvbCA9IDMsIGJ5cm93ID0gVFJVRSlcbkEifQ==</div>

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJkaWFnKEEpIn0=</div>

Además, `diag()` nos permite crear matrices diagonales:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJkaWFnKGMoMSwgMiwgMywgNCkpIn0=</div>

La matriz identidad es muy fácil de crear en R. Por ejemplo, la matriz identidad de dimensión 4 es:



<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJJZDQgPSBkaWFnKDEsIG5yb3cgPSA0KVxuSWQ0In0=</div>



Hay que tener cierto cuidado con los operadores aritméticos básicos (`+`, `-`, `*`). Si se suman una matriz y una constante, el efecto es que dicha constante se suma a todos los elementos de la matriz. Lo mismo ocurre con la diferencia, la multiplicación y la división:



<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJNID0gbWF0cml4KG5yb3c9MixjKDEsMiwzLCA0KSxieXJvdyA9IEZBTFNFKVxuTSJ9</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJNICsgMiJ9</div>


Asimismo, si a una matriz se le suma un vector cuya longitud sea igual al número de filas de la matriz, se obtiene como resultado una nueva matriz cuyas columnas son la suma de las columnas de la matriz original más dicho vector.


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2ID0gYygzLDQpXG5NICsgdiJ9</div>

La suma o resta de matrices de la misma dimensión se realiza con los operadores `+` y `-`; el producto de matrices (siempre que sean compatibles) se realiza con el operador `%*%`:



<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJNICsgTSJ9</div>

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJNIC0gTSJ9</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJNJSolTSJ9</div>



Una fuente de posibles errores en el cálculo matricial, cuando se utilizan matrices de la misma dimensión, es utilizar los operadores `*` y `/` ya que multiplican (o dividen) las matrices término a término:



<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJNICogTSJ9</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJNIC8gTSJ9</div>

La traspuesta de una matriz se calcula simplemente con la función `t()`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJNXG50KE0pIn0=</div>


El determinante de una matriz cuadrada se calcula mediante la función `det()`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJkZXQoTSkifQ==</div>



La función `solve()` permite obtener la inversa de una matriz cuando sólo se le pasa un argumento:




<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJzb2x2ZShNKSJ9</div>



Además, con la función `solve()`podemos resolver sistemas de ecuaciones lineales. Por ejemplo, si disponemos del siguiente
sistema de ecuaciones: 


$$ Ax=b\begin{cases} 3x\quad +\quad 2y\quad =\quad 5 \\ x\quad -\quad y\quad =\quad 0 \end{cases} $$

que en forma matricial puede expresarse como

$$ \begin{pmatrix} 3 & 2 \\ 1 & -1 \end{pmatrix}\begin{pmatrix} x \\ y \end{pmatrix}=\begin{pmatrix} 5 \\ 0 \end{pmatrix} $$


Podemos resolver el sistema de ecuaciones en R, del siguiente modo:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJBIDwtIG1hdHJpeChjKDMsIDIsIDEsIC0xKSwgbmNvbCA9IDIsIGJ5cm93ID0gVFJVRSlcbmIgPC0gYyg1LCAwKVxuc29sdmUoQSwgYikifQ==</div>


## Selección de Elementos {#seleccion-de-elementos}


Los elementos de una matriz están indexados con dos índices lo cual hace que resulte fácil acceder a los elementos y trabajar con ellos si lo que nos interesa es sólo una parte de la información contenida en una matriz y no la matriz entera, esto se logra con el operador de indexación `[i, j]` donde $$i$$ es el elemento fila y $$j$$ es el elemento columna.


Siguiendo con el ejemplo anterior, si quisiéramos seleccionar el número de automóviles blancos correspondiente a la marca Audi podríamos hacerlo de dos maneras:


- Escribiendo el nombre de la matriz y entre corchetes los nombres de la fila y columnas entre comillas:



<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJhdXRvbW92aWxlc1tcIkJsYW5jb1wiLCBcIkF1ZGlcIl0ifQ==</div>

- Alternativamente, podemos utilizar la notación de índices:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJhdXRvbW92aWxlc1sxLCAyXSJ9</div>


También podemos seleccionar columnas y filas enteras, de manera que si queremos seleccionar todos los automóviles blancos lo haríamos del siguiente modo:



<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJhdXRvbW92aWxlc1sxLF0ifQ==</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIG90cmEgZm9ybWEgZGUgaGFjZXJsbyBlc1xuYXV0b21vdmlsZXNbXCJCbGFuY29cIixdIn0=</div>


## Agregar Filas y Columnas

<p style="text-align:justify;">
Podemos emplear las funciones `cbind()` y `rbind()` para agregar filas y columnas a una matriz que hemos creado con anterioridad:
</p>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIEFcdTAwZjFhZGltb3MgdW5hIG51ZXZhIGZpbGEgYSBsYSBtYXRyaXpcbnZlcmRlIDwtIGMoOCwgNSwgNylcbmF1dG9tb3ZpbGVzIDwtIHJiaW5kKGF1dG9tb3ZpbGVzLCB2ZXJkZSlcbmF1dG9tb3ZpbGVzIn0=</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIEFcdTAwZjFhZGltb3MgdW5hIG51ZXZhIGNvbHVtbmFcbmZvcmQgPC0gYygyLCA3LCAzLCA1LCA5KVxuYXV0b21vdmlsZXMgPC0gY2JpbmQoYXV0b21vdmlsZXMsIGZvcmQpXG5hdXRvbW92aWxlcyJ9</div>

## Eliminar Filas y Columnas {#eliminar-filas-y-columnas}


Para eliminar filas utilizaremos la notación `[-i,]`, de forma similar para eliminar columnas utilizaremos la notación `[, -j]`. A modo de ejemplo, vamos a eliminar la fila 
y columna que hemos añadido en el apartado anterior:




<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjRWxpbWluYW5kbyBsYSBmaWxhIHZlcmRlXG5hdXRvbW92aWxlc1stNSwgXSJ9</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIEVsaW1pbmFuZG8gY29sdW1uYSBmb3JkXG5hdXRvbW92aWxlc1ssIC00XSJ9</div>

## Resumen {#resumen}



- La función `dim()` devuelve un vector de integers con la dimensión del objeto.
- Además con las funciones `nrow()` y `ncol()` podemos conocer el número de filas y columnas.
- Por medio de la función `dimnames()` obtendremos una lista que contiene dos vectores con los atributos `rownames` y `colnames`.
- Podemos seleccionar elementos de un vector usando la notación `[i,j]`.
- Con la ayuda de las funciones `cbind()` y `rbind()` podemos agregar filas y columnas.
- Para eliminar filas utilizaremos la notación `[-i,]`.
- De forma similar para eliminar columnas utilizaremos la notación `[, -j]`.


