<script src="https://cdn.datacamp.com/datacamp-light-latest.min.js"></script>







# Vectores


El tipo más básico de estructura de dato en R es el _vector_. El vector es una estructura 
compuesta de un número de elementos finitos, homogéneos y donde dicha estructura
tiene un tamaño fijo. Finito porque existe un último elemento; homogéneo porque
todos los elementos son del mismo tipo y tamaño fijo porque el tamaño del vector
debe ser conocido en tiempo de ejecución o compilación.



## Creación de Vectores {#creacion}

Los vectores atómicos pueden ser creados con la función `c()`, que corresponde
a la sigla de _combinar_:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2ZWN0b3JfZG91YmxlIDwtIGMoMSwgMi41LCA0LjUpXG4jIENvbiBlbCBzdWZpam8gTCwgY29uc2VndWltb3MgdW4gaW50ZWdlciBlbiBsdWdhciBkZSB1biBkb3VibGVcbnZlY3Rvcl9pbnRlZ2VyIDwtIGMoMUwsIDZMLCAxMEwpXG4jIFVzYW1vcyBUUlVFIHkgRkFMU0UgKG8gVCB5IEYpIHBhcmEgY3JlYXIgdmVjdG9yZXMgbFx1MDBmM2dpY29zXG52ZWN0b3JfbG9naWNhbCA8LSBjKFRSVUUsIEZBTFNFLCBULCBGKVxudmVjdG9yX2NoYXJhY3RlciA8LSBjKFwiSG9sYVwiLCBcIk11bmRvIVwiKSJ9</div>


La función `vector()` crea un vector de un tipo y longitud que debemos especificar
en el momento de su declaración:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2ZWN0b3JfZG91YmxlIDwtIHZlY3Rvcihtb2RlID0gXCJkb3VibGVcIiwgbGVuZ3RoID0gMylcbnZlY3Rvcl9pbnRlZ2VyIDwtIHZlY3Rvcihtb2RlID0gXCJpbnRlZ2VyXCIsIGxlbmd0aCA9IDMpXG52ZWN0b3JfbG9naWNhbCA8LSB2ZWN0b3IobW9kZSA9IFwibG9naWNhbFwiLCBsZW5ndGggPSA0KVxudmVjdG9yX2NoYXJhY3RlciA8LSB2ZWN0b3IobW9kZSA9IFwiY2hhcmFjdGVyXCIsIGxlbmd0aCA9IDIpIn0=</div>

Otra posibilidad es hacer uso de las funciones _wrapper_ (del inglés, envoltorio) que
existen para cada tipo de datos. Las siguientes instrucciones son equivalentes a
las anteriores:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2ZWN0b3JfZG91YmxlIDwtIGRvdWJsZSgzKVxudmVjdG9yX2ludGVnZXIgPC0gaW50ZWdlcigzKVxudmVjdG9yX2xvZ2ljYWwgPC0gbG9naWNhbCg0KVxudmVjdG9yX2NoYXJhY3RlciA8LSBjaGFyYWN0ZXIoMikifQ==</div>


Además, mediante el operador `:` podemos generar sucesiones de números:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIxOjEwXG4xNToxMVxuMToxMCAtIDFcbjE6KDEwIC0gMSkifQ==</div>

También podemos usar las funciones `seq()` y `rep()`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJzZXEoMTApICMgbWlzbW8gZWZlY3RvIHF1ZSAxOjEwXG5zZXEoMywgMTApICMgbWlzbW8gZWZlY3RvIHF1ZSAzOjEwXG5zZXEoMSwgMTAsIGJ5PTMpICNzYWx0YW5kbyBkZSAzIGVuIDMifQ==</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJyZXAoMTo0LCAyKSAjcmVwZXRpbW9zIDE6NCBkb3MgdmVjZXNcbnJlcCgxOjQsIGVhY2g9MikgI3JlcGV0aW1vcyAxOjQgZG9zIHZlY2VzLCBpbnRlcmNhbGFuZG8gcmVzdWx0YWRvIn0=</div>


## Longitud {#longitud}

Todos los vectores tienen dos propiedades:

- Un _tipo_, que se puede determinar con la función `typeof()`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ0eXBlb2YobGV0dGVycylcbnR5cGVvZigxOjEwKSJ9</div>

- Una _longitud_, que nos dice cuantos elementos contiene el vector. Podemos
conocer este valor mediante la función `length()`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2IDwtIGMoMSwgMiwgMylcbmxlbmd0aCh2KVxubGVuZ3RoKGMoVFJVRSwgRkFMU0UsIE5BKSlcbiJ9</div>


Una posible fuente de confusión es cuando trabajamos con vectores de tipo character.
Con este tipo de vector, la longitud es el número de strings, no el número de caracteres
en cada string. Para esto último, utilizaremos la función `nchar()`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJhbHVtbm9zIDwtIGMoXCJKdWFuXCIsIFwiUGVwZVwiLCBcIk1hcmlhXCIsIFwiRG9sb3Jlc1wiKVxubGVuZ3RoKGFsdW1ub3MpXG5uY2hhcihhbHVtbm9zKSJ9</div>



## Tipos Fundamentales de Vectores Atómicos {#tipos}

Los cuatro tipos más importantes de vectores atómicos son:

- Logical
- Integer
- Double (conocidos por numeric)
- Character

Cabe mencionar que existen los tipos complex y raw que son raramente
utilizados en el análisis de datos, es por eso que no los trataremos en este texto.


### Logical {#logical}

Los vectores lógicos son  el tipo más simple de vector atómico puesto que sólo pueden
tomar tres posibles valores `TRUE`, `FALSE` y `NA`. Los vectores lógicos usualmente
son el resultado de expresiones con los operadores lógicos y de comparación. 
<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIxIDogMTAgJSUgMyA9PSAwIn0=</div>

Para mas información sobre la sintaxis de los operadores y su precedencia consultar la
documentación R: 

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIFNpbnRheGlzIGRlIGxvcyBvcGVyYWRvcmVzIHkgc3UgcHJlY2VkXHUwMGU5bmNpYVxuaGVscChcIlN5bnRheFwiLCBcImJhc2VcIilcbiMgT3BlcmFkb3JlcyBsXHUwMGYzZ2ljb3NcbmhlbHAoXCJMb2dpY1wiLCBcImJhc2VcIikifQ==</div>


### Numeric {#numeric}

Los vectores de tipo integer y double son en R vectores de tipo numeric.
En R, los números son double por defecto. Si queremos un integer, añadiremos la letra
`L` después del número:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ0eXBlb2YoMSlcbnR5cGVvZigxTClcbjEuNUwifQ==</div>

### Character {#character}

Los vectores de tipo character son aquellos en los que cada elemento del vector es un 
_string_ (cadena de caracteres):

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ0aXR1bG8gPC0gXCJDaWVuY2lhIGRlIGRhdG9zIGVuIFJcIiJ9</div>

## Manipulación de Vectores Atómicos {#manipulacion}

Ahora que ya conocemos los diferentes tipos de vectores atómicos, pasamos a ver
a continuación las diferentes herramientas para trabajar con ellos. En concreto
veremos:


- Cómo conocer si un objeto es un tipo específico de vector.
- De qué modo convertir de un tipo a otro, y cuándo sucede de forma automática.
- De qué manera dar nombre a los elementos de un vector.
- Conocer el significado de las operaciones vectorizadas y hacer uso de las mismas.
- Qué sucede cuando trabajamos con vectores de diferentes longitud.
- Cómo seleccionar partes o elementos de un vector.

### Funciones para Comprobar el tipo

En ocasiones queremos realizar diferentes cosas basadas en el tipo de vector. Una 
opción es usar la función `typeof()`. Otra es usar las funciones que realizan la
comprobación de tipo y devuelven `TRUE` o `FALSE`, como `is.character()`, `is.double()`, 
`is.integer()`, `is.logical()` o, de forma más general mediante `is.atomic()`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2ZWN0b3JfaW50ZWdlciA8LSBjKDFMLCAyTCwgM0wpXG50eXBlb2YodmVjdG9yX2ludGVnZXIpXG5pcy5pbnRlZ2VyKHZlY3Rvcl9pbnRlZ2VyKVxuaXMuYXRvbWljKHZlY3Rvcl9pbnRlZ2VyKSJ9</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2ZWN0b3JfZG91YmxlIDwtIGMoMSwgMi41LCA0LjUpXG50eXBlb2YodmVjdG9yX2RvdWJsZSlcbmlzLmRvdWJsZSh2ZWN0b3JfZG91YmxlKVxuaXMuYXRvbWljKHZlY3Rvcl9kb3VibGUpIn0=</div>


Es importante subrayar que la función `is.numeric()` comprueba si un objeto es de
tipo numeric y devuelve `TRUE` tanto para vectores de tipo integer como de tipo 
double. 

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJpcy5udW1lcmljKHZlY3Rvcl9pbnRlZ2VyKVxuaXMubnVtZXJpYyh2ZWN0b3JfZG91YmxlKSJ9</div>


En la siguiente tabla resumimos las funciones para comprobar el tipo de nuestros
vectores:

|  | logical | integer | double | character | list |
| :--- | :---: | :---: | :---: | :---: | :---: |
| **is.logical\(\)** | X |  |  |  |  |
| **is.integer\(\)** |  | X |  |  |  |
| **is.double\(\)** |  |  | X |  |  |
| **is.numeric\(\)** |  | X | X |  |  |
| **is.character\(\)** |  |  |  | X |  |
| **is.atomic\(\)** | X | X | X | X |  |
| **is.list\(\)** |  |  |  |  | X |
| **is.vector\(\)** | X | X | X | X | X |

_Tabla 2 Funciones comprobación de tipos_


### Coerción {#coercion}

Todos los elementos de un vector deben ser del mismo tipo, así pues cuando intentemos
combinar diferentes tipos estos serán convertidos al tipo más flexible. El orden es el
siguiente:

    logical < integer < double < character
    
Por ejemplo, mezclar un character y un integer producirá un character:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2IDwtIGMoXCJhXCIsIDEpXG52XG50eXBlb2YodilcbmNsYXNzKHYpXG4ifQ==</div>


Cuando un vector lógico es convertido a un integer o double, `TRUE` es cambiado a
1 y `FALSE` a 0:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2IDwtIGMoRkFMU0UsIEZBTFNFLCBGQUxTRSlcbmFzLm51bWVyaWModikifQ==</div>

 
La coerción sucede normalmente de forma automática. La mayoría de funciones matemáticas
(`+`, `log`, `abs`, etc.) convierten a los tipos double o integer, y la mayoría de 
operaciones lógicas (`&`, `|`, `any`, etc.) cambian al tipo logical. Si el cambio de un
tipo en otro pierde información, R nos lo advertirá mediante un mensaje. 

### Nombres de los Elementos {#nombres-de-los-elementos}

Una gran característica de los vectores en R es que podemos asignar a cada elemento un
nombre. Etiquetar los elementos hace nuestro código mas legible. Podemos especificar
los nombres cuando creamos un vector con la forma `nombre = valor`: 

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJjKG1hbnphbmEgPSAxLCBwbGF0YW5vID0gMiwga2l3aSA9IDMpIn0=</div>

Podemos añadir nombres a los elementos de un vector después de su creación con la 
ayuda de la función `names()`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJmcnV0YXMgPC0gMTo0XG5uYW1lcyhmcnV0YXMpIDwtIGMoXCJtYW56YW5hXCIsIFwicGxhdGFub1wiLCBcImtpd2lcIilcbmZydXRhcyJ9</div>

Gracias a la función `names()` podemos conocer los nombres de un vector:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJuYW1lcyhmcnV0YXMpIn0=</div>

Por último, si un vector no tiene nombres, la función `names()` devuelve `NULL`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJuYW1lcygxOjQpIn0=</div>

### Operaciones Vectorizadas {#operaciones-vectorizadas}

La mayoría de las operaciones en R son _vectorizadas_, esto es que un operador o una
función actúa en cada elemento de un vector sin la necesidad de que tengamos
que escribir una construcción iterativa. Esta característica nos permite escribir un código más 
eficiente, conciso y mas legible que en otros lenguajes de programación.

El ejemplo mas simple es cuando sumamos dos vectores:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2MSA8LSAxOjRcbnYyIDwtIDU6OFxudjM8LSB2MSArIHYyXG52MyJ9</div>


Cuando usamos dos o mas vectores en una operación, R alineará los vectores y llevará
a cabo una secuencia de operaciones individuales. En el ejemplo anterior, cuando 
ejecutamos la instrucción `v1 + v2`, R pondrá cada vector en una fila y sumará el 
primer elemento de `v1`con el primer elemento de `v2`. A continuación, sumará el 
segundo elemento del vector 1 con el segundo elemento del vector 2, y así sucesivamente,
hasta que todos los elementos se han sumado. El resultado será un vector de la misma
longitud que los anteriores, como muestra la [Figura 1]().



![Operaciones vectorizadas](http://i.imgur.com/ReGoGFr.png)



Sin la vectorización tendríamos que realizar la suma mediante el uso de una estructura
iterativa, como por ejemplo:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2MyA8LSBudW1lcmljKGxlbmd0aCh2MSkpXG5mb3IoaSBpbiBzZXFfYWxvbmcodjEpKSB7XG4gIHYzW2ldIDwtIHYxW2ldICsgdjJbaV1cbn1cbnYzIn0=</div>

Otro tipo de operaciones que podemos realizar de forma vectorizada son las comparaciones
lógicas. Supongamos que queremos saber que elementos en un vector son mas grandes que 2.
Podríamos hacer lo siguiente:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2MSA8LSAxOjRcbnYxID4gMiJ9</div>

A continuación, mostramos otros ejemplos de operaciones vectorizadas de tipo lógico:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2MSA8LSAxOjRcbnYxID49IDJcbnYyIDwgM1xudjMgPT0gOCJ9</div>

Desde luego, la resta, multiplicación y división son también operaciones vectorizadas:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2MSAtIHYyXG52MSAqIHYyXG52MSAvIHYyIn0=</div>

### Reciclado de Vectores y Repetición {#reciclado-de-vectores-y-repeticion}

En los ejemplos anteriores hemos realizado operaciones aritméticas con vectores
de la misma longitud. No obstante podríamos estar preguntándonos, "¿Qué sucede si
intentamos realizar operaciones en vectores de diferente longitud?".


Si intentamos realizar la suma de un único número (escalar) a un vector, entonces el número
es sumado a cada elemento en el vector, como muestra la [Figura 2]():

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIxOjUgKyAxIn0=</div>

![Vectorización con un escalar](http://i.imgur.com/977D3ug.png)


Cuando sumamos dos vectores de diferente longitud, R reciclará los elementos del vector 
más pequeño para que coincida con el más grande, como podemos ver en la [Figura 3]():

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIxOjIgKyAxOjQifQ==</div>

![Vectorización vectores diferente longitud](http://i.imgur.com/bDKyVRP.png)


Si la longitud del vector más grande no es múltiple con la longitud del vector más
pequeño, R nos lo hará saber mediante un mensaje:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIxOjUgKyAxOjcifQ==</div>


Aunque R nos permita realizar operaciones con vectores de diferente longitud, esto
no significa que nosotros deberíamos hacerlo. Realizar una suma de un valor escalar
a un vector es coherente, pero realizar operaciones con vectores de diferente 
longitud puede llevarnos a errores. Es por eso, que recomendamos crear explícitamente
vectores de la misma longitud antes de operar con ellos.

La función `rep()` es muy útil para esta tarea, permitiéndonos crear un vector con 
elementos repetidos:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJyZXAoMTo1LCAzKVxucmVwKDE6NSwgZWFjaCA9IDMpXG5yZXAoMTo1LCB0aW1lcyA9IDE6NSlcbiJ9</div>

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJyZXAoMTo1LCBsZW5ndGgub3V0ID0gNylcbiMgQWx0ZXJuYXRpdmFtZW50ZSBwb2RlbW9zIGhhY2VybG8gbWVkaWFudGUgcmVwX2xlbiAoZGVzZGUgdjMuMC4wKVxucmVwX2xlbigxOjUsIDcpIn0=</div>

### Selección de Elementos {#seleccion-de-elementos}


En ocasiones queremos acceder a una única parte de un vector, o quizá a un único
elemento. Esto es conocido como _indexing_ (del inglés, indexación) y se realiza
mediante el uso de los corchetes `[]`. Existen cuatro maneras diferentes de elegir
una parte de un vector:

- Mediante un vector numérico de tipo integer. Los integers deben ser todos positivos,
todos negativos, o cero.

 Seleccionar los elementos con integers positivos extrae los elementos de las posiciones indicadas:
  
<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2IDwtIGMoXCJ1bm9cIiwgXCJkb3NcIiwgXCJ0cmVzXCIsIFwiY3VhdHJvXCIsIFwiY2luY29cIilcbnZbYygzLCAyLCA1KV0ifQ==</div>

  Repitiendo una posición, podemos obtener un vector de una longitud más grande que
el vector original:
  
  
<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2W2MoMSwgMSwgNSwgNSwgNSwgMildIn0=</div>

  
  Los valores negativos eliminan los elementos en las posiciones especificadas:
  
    
<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2W2MoLTEsIC0zLCAtNSldIn0=</div>

  
  No podemos mezclar valores positivos y negativos:
  

  
<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2W2MoMSwgLTEpXSJ9</div>


- Por medio de un vector lógico obtenemos todos los valores correspondientes
al valor `TRUE`. Este tipo es útil en conjunción con la funciones de comparación:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2IDwtIGMoMTAsIDMsIE5BLCA1LCA4LCAxLCBOQSlcbiMgRGV2dWVsdmUgdG9kb3MgbG9zIHZhbG9yZXMgcXVlIG5vIHNvbiBOQSBlbiB4XG52WyFpcy5uYSh2KV0ifQ==</div>

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIFRvZG9zIGxvcyB2YWxvcmVzIHBhcmVzIChvIGRlc2Nvbm9jaWRvcykgZW4geFxudlt2ICUlIDIgPT0gMF0ifQ==</div>


- Si hemos dado nombres a los elementos de nuestro vector, podemos seleccionar
sus elementos con un vector de tipo character:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJmcnV0YXMgPC0gYyhtYW56YW5hID0gMSwgcGxhdGFubz0gMiwga2l3aT0zLCBwZXJhPTQsIG5hcmFuamE9NSlcbmZydXRhc1tjKFwicGxhdGFub1wiLCBcIm5hcmFuamFcIildIn0=</div>

- Mediante `v[]`, obtendremos el vector completo:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2IDwtIGMoMTAsIDMsIE5BLCA1LCA4LCAxLCBOQSlcbnZbXSJ9</div>
 
 Esta notación no es muy útil para acceder a vectores, sin embargo nos será de 
 gran ayuda en el acceso a [matrices](../matrices/matrices.Rmd) (y cualquier tipo 
 de estructura multidimensional) puesto que nos permite seleccionar todas las filas 
 o columnas. Por ejemplo, si _x_ es _2D_, `v[1, ]` selecciona la primera fila y todas 
 las columnas, y `v[, -1]` recupera todas las filas y columnas excepto la primera.
  
 
## Resumen {#resumen}

- Los vectores tienen una longitud que podemos conocer o definir mediante la función
`length()`.
- La función `seq()` y sus variantes nos permite crear sucesiones de números.
- Podemos dar nombre a los elementos de un vector en el momento de su creación o
una vez creado mediante la función `names()`.
- Podemos acceder a los elementos de un vector mediante los `[]` y un índice. La
función `rep()` nos permite crear vectores con elementos repetidos.
  
  
