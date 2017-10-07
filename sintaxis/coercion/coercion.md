<script src="https://cdn.datacamp.com/datacamp-light-latest.min.js"></script>






# Coerción


La _coerción_ es una característica de los lenguajes de programación que permite, implícita o explícitamente, convertir un elemento de un tipo de datos en otro, sin tener en cuenta la comprobación de tipos.


## Coerción Implícita {#implicita}

Cuando llamamos a una función con un argumento de un tipo erróneo, R intentará convertir los elementos de un tipo de datos en otro, sin tener en cuenta la comprobación de tipos. Por ejemplo, supongamos que definimos un vector `v` como en el ejemplo:



<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2IDwtIGMoMSwgMiwgMywgNCwgNSlcbnYifQ==</div>



<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ0eXBlb2YodikifQ==</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJjbGFzcyh2KSJ9</div>

Si cambiamos el segundo elemento del vector con la palabra "coercion". R cambiará la clase del objeto a `character` y todos los elementos del vector a `char` como podemos ver en el siguiente ejemplo:



<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2WzJdIDwtIFwiY29lcmNpb25cIiJ9</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ0eXBlb2YodikifQ==</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJjbGFzcyh2KSJ9</div>


Cuando un vector lógico es convertido a un integer o double, `TRUE` es cambiado a
1 y `FALSE` a 0:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2IDwtIGMoRkFMU0UsIFRSVUUsIEZBTFNFKVxuYXMubnVtZXJpYyh2KSJ9</div>


![Coerción](http://i.imgur.com/QrmSoIc.png)



A continuación se muestra un resumen de las reglas para la coerción:


- Los valores lógicos son transformados a números: `TRUE` será cambiado a __1__ y `FALSE` a __O__.
- Los valores son convertidos al tipo más simple.
- El orden es: logical < integer < numeric < complex < character < list.
- Los objetos de tipo `raw` no son convertidos a otros tipos.
- Los atributos de los objetos son borrados cuando un objeto es cambiado de un tipo a otro.


## Coerción Explícita {#explicita}

Los objetos pueden ser convertidos en otro tipo de foma explícita mediante el uso
de la función `as.()*`

__Ejemplos__


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2IDwtIGMoMSwgMiwgMywgNCwgNSlcbmNsYXNzKHYpIn0=</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJhcy5sb2dpY2FsKHYpIn0=</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJhcy5jaGFyYWN0ZXIodikifQ==</div>



En ocasiones, la conversión no puede ser llevada a cabo, en este caso R devuelve [_NA_.](#na)


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2IDwtIGMoXCJhXCIsIFwiYlwiLCBcImNcIilcbmFzLm51bWVyaWModikifQ==</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJhcy5sb2dpY2FsKHYpIn0=</div>


En resumen, la mayoría de las funciones producen un error cuando el tipo de datos que esperan no coincide con los que pasamos como argumentos. En esta situación tenemos dos posibilidades:



* Comprobar el tipo de datos utilizando las funciones `is.*()`, que nos responden con un valor lógico.
* Forzar el tipo de datos deseados coercionando, para lo cual podemos utilizar funciones del tipo `as.*()`, que fuerzan el tipo de datos.



A continuación se muestra una lista con los tipos más importantes que se pueden comprobar o forzar:



| Tipo | Comprobación | Coerción |
| :--- | :--- | :--- |
| array | \`is.array\(\)\` | \`as.array\(\)\` |
| character | \`is.character\(\)\` | \`as.character\(\)\` |
| complex | \`is.complex\(\)\` | \`as.complex\(\)\` |
| double | \`is.double\(\)\` | \`as.double\(\)\` |
| factor | \`is.factor\(\)\` | \`as.factor\(\)\` |
| integer | \`is.integer\(\)\` | \`as.integer\(\)\` |
| list | \`is.list\(\)\` | \`as.list\(\)\` |
| logical | \`is.logical\(\)\` | \`as.logical\(\)\` |
| matrix | \`is.matrix\(\)\` | \`as.matrix\(\)\` |
| NA | \`is.na\(\)\` | \`as.na\(\)\` |
| NaN | \`is.nan\(\)\` | \`as.nan\(\)\` |
| NULL | \` is.null\(\)\` | \`as.null\(\)\` |
| numeric | \`is.numeric\(\)\` | \`as.numeric\(\)\` |
| vector | \`is.vector\(\)\` | \`as.vector\(\)\` |

_ Tabla 1: Comprobación y coerción de los tipos más importantes_
 

Podemos ver una lista completa de todas las funciones `is.()` en el paquete `base` mediante:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJscyhwYXR0ZXJuID0gXCJeaXNcIiwgYmFzZWVudigpKSJ9</div>


Asimismo, para obtener las funciones `as.*()` podemos hacerlo mediante la siguiente instrucción:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJscyhwYXR0ZXJuID0gXCJeYXNcIiwgYmFzZWVudigpKSJ9</div>

