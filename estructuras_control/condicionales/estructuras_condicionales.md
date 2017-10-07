<script src="https://cdn.datacamp.com/datacamp-light-latest.min.js"></script>






# Estructuras Condicionales

Las estructuras condicionales permiten la ejecución condicional de bloques de código.
La instrucción `if`, que en inglés tiene el mismo significado que nuestro "si" condicional,
permite evaluar una expresión y, sobre la base de su resultado (verdadero o falso), ejecutar
o no la instrucción o el bloque que le sigue. Es decir, si el resultado de la expresión es
verdadero, ejecuta el código. En caso contrario, el programa sigue su curso normal.

A continuación, mostramos el [diagrama](https://i.imgur.com/KhwkQbf.png) de flujo de `if`. En términos de diagramas de flujo, los rectángulos significan la realización de un proceso, en otras palabras la ejecución de un bloque de instrucciones. Por otro lado, los rombos son conocidos como símbolos de decisión, es decir se corresponden a preguntas cuyas respuestas únicamente tienen dos posibles respuestas, concretamente, TRUE (T) o FALSE (F).

![Diagrama de Flujo If](https://i.imgur.com/KhwkQbf.png)

La instrucción __`if`__ toma un valor lógico (en realidad, un vector lógico de longitud uno)
y ejecuta la siguiente instrucción sólo si el valor es __`TRUE`__:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJpZiAoVFJVRSkge1xuICBtZXNzYWdlKFwiRXMgdmVyZGFkZXJvLCBzZSBlamVjdXRhcmEgbGEgaW5zdHJ1Y2Npb24uXCIpXG59In0=</div>

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJpZiAoRkFMU0UpIHtcbiAgbWVzc2FnZShcIkVzIGZhbHNvLCBubyBzZSBlamVjdXRhcmEgbGEgaW5zdHJ1Y2Npb24uXCIpXG59ICAifQ==</div>


En el caso que pasemos valores desconocidos (`NA`) a `if`, R lanzará un error:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJpZiAoTkEpIHtcbiAgbWVzc2FnZShcIkxvcyB2YWxvcmVzIGRlc2Nvbm9jaWRvcyBsYW56YW4gdW4gZXJyb3JcIilcbn0ifQ==</div>

Si nos encontramos ante esta situación, deberíamos comprobarlo mediante la función `is.na()`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJpZiAoaXMubmEoTkEpKSB7XG4gIG1lc3NhZ2UoXCJFbCB2YWxvciBlcyBkZXNjb25vY2lkby5cIilcbn0gICJ9</div>

Desde luego, en nuestro código en pocas ocasiones pasaremos los valores
`TRUE` y `FALSE` a la instrucción `if`. En su lugar, pasaremos una variable o
expresión. En el siguiente ejemplo, `runif(1)` genera un número de forma aleatoria
entre 0 y 1. Si el valor es mayor que `0.5`, entonces el mensaje será mostrado:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJpZiAocnVuaWYoMSkgPiAwLjUpIHtcbiAgbWVzc2FnZShcIkVzdGUgbWVuc2FqZSBhcGFyZWNlIGNvbiB1biA1MCUgZGUgcHJvYmFiaWxpZGFkLlwiKVxufSJ9</div>


Si pretendemos ejecutar un bloque de instrucciones, podemos envolverlo entre paréntesis:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ4IDwtIDNcbmlmICh4IDwgMikge1xuICB5IDwtIDIgKiB4XG4gIHogPC0gMyAqIHlcbn0ifQ==</div>


__Recuerda__ que para que nuestro código sea lo mas legible posible, algunas [guías de estilo](../../sintaxis/guia_estilo/guia_estilo.md) 
recomiendan el uso de paréntesis, incluso si sólo queremos ejecutar condicionalmente
una sentencia.

El siguiente paso en complejidad en la sintaxis de `if` es incluir la cláusula `else`. Seguidamente se muestra el [diagrama de flujo](https://i.imgur.com/6HAkO6A.png) de `if-else`:

![Diagrama de Flujo if-else](https://i.imgur.com/6HAkO6A.png)


El código después de un `else` se ejecuta sólo si la condición en `if` es `FALSE`:


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJpZiAoRkFMU0UpIHtcbiAgbWVzc2FnZShcIkVzdGUgYmxvcXVlIG5vIHNlIGVqZWN1dGEuLi5cIilcbn0gZWxzZSB7XG4gIG1lc3NhZ2UoXCJwZXJvIGVzdGUgc2kgbG8gaGFyXHUwMGUxXCIpXG59In0=</div>


Podemos definir múltiples condiciones combinando `if` y `else` repetidamente, este tipo de estructura se utiliza para probar __condiciones mutuamente excluyentes__. 

A continuación se muestra el [diagrama de flujo]((https://i.imgur.com/9dn41o5.png) de un `if-else` anidado. Como podemos observar se puden plantear múltiples condiciones simultáneamente: si se cumple la condición 1 se ejecuta el bloque de intrucciones 1. En caso contrario se comprueba la condición 2; si es cierta se ejecuta el bloque de sentencias 2, y así sucesivamente hasta __n__ condiciones. Si ninguna de ellas se cumple se ejecuta el bloque de instrucciones de `else`:

![Diagrama de Flujo If-Else Anidados](https://i.imgur.com/9dn41o5.png)

El siguiente ejemplo nos sirve para mostrar el anidamiento de instrucciones `if-else`. Pongamos el caso que deseamos crear un algoritmo que nos calcule la [medida de tendencia central](https://es.wikipedia.org/wiki/Medidas_de_tendencia_central) que deseemos, el siguiente fragmento de código podría ser una posible solución:





<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIENyZWFtb3MgdW5hIG11ZXN0cmEgZGUgMjAgb2JzZXJ2YWNpb25lcyBkZWwgMSBhbCAxMDAgZW5cbiMgZWwgcXVlIHNlIHB1ZWRlbiByZXBldGlyIGhhc3RhIDIgb2JzZXJ2YWNpb25lc1xuKG11ZXN0cmEgPC0gc2FtcGxlKDE6MTAwLCAyMCwgMikpXG5cbiMjIENyZWFtb3MgdW5hIHZhcmlhYmxlIGluZGljYW5kbyBsYSBtZWRpZGEgZGUgdGVuZGVuY2lhIGNlbnRyYWxcbiMjIHF1ZSBxdWVyZW1vcyBjYWxjdWxhclxuY2VudHJhbGl6YWNpb24gPC0gXCJtb2RhXCJcblxuXG4jIyBDcmVhbW9zIHVuIGFsZ29yaXRtbyBwYXJhIGNhbGN1bGFyIGxhIHRlbmRlbmNpYSBjZW50cmFsIHF1ZVxuIyMgZGVzZWVtb3NcbmlmIChjZW50cmFsaXphY2lvbiA9PSBcIm1vZGFcIikge1xuICAgbWVkaWEgPSBtZWFuKG11ZXN0cmEpXG4gICBtZXNzYWdlKFwiTGEgbWVkaWEgZXMgXCIsIGFzLmNoYXJhY3RlcihtZWRpYSkpXG59IGVsc2UgaWYgKGNlbnRyYWxpemFjaW9uID09IFwibWVkaWFuYVwiKSB7XG4gICBtZWRpYW5hID0gbWVkaWFuKG11ZXN0cmEpXG4gICBtZXNzYWdlKFwiTGEgbWVkaWFuYSBlcyBcIiwgYXMuY2hhcmFjdGVyKG1lZGlhbmEpKVxufSBlbHNlIGlmIChjZW50cmFsaXphY2lvbiA9PSBcIm1vZGFcIikge1xuICAgbW9kYSA9IG1sdihtdWVzdHJhLCBtZXRob2QgPSBcIm1mdlwiKVxuICAgbWVzc2FnZShcIkxhIG1vZGEgZXMgXCIsIGFzLmNoYXJhY3Rlcihtb2RhKSlcbn0gZWxzZSB7XG4gIG1lc3NhZ2UoXCJFc3RlIGFsZ29yaXRtbyBzb2xhIGNhbGN1bGEgbGEgbWVkaWEsXG4gICAgICAgICAgbWVkaWFuYSwgbW9kYVwiKVxufVxuIn0=</div>

## __`If`__ Vectorizado

La instrucción `if` estándar acepta en la condición lógica un único valor lógico. Si pasamos un vector lógico con una longitud
mayor que uno, R nos lo indicará mediante un __warning__ indicándonos que hemos introducido múltiples opciones, pero que 
únicamente la primera será utilizada:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJpZiAoYyhUUlVFLCBGQUxTRSkpIHtcbiAgbWVzc2FnZShcImRvcyBjb25kaWNpb25lc1wiKVxufSJ9</div>

Puesto que muchas de las operaciones en R son vectorizadas, R nos proporciona la función `ifelse`. La función `ifelse` toma tres argumentos. El primer argumento es un vector lógico de condiciones. El segundo es un vector que contiene los valores que
serán devueltos cuando el primer vector es `TRUE`. El tercero contiene los valores que serán devueltos cuando el primer vector
es `FALSE`.

#### Uso

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJzdHIoaWZlbHNlKSJ9</div>


#### Argumentos

```{}
test: un objeto que pueda ser coercionado a un tipo lógico
yes:  devuelve los valores `TRUE` en los elementos de `test`
no:   devuelve los valores `FALSE` de `test` 
```

En el siguiente ejemplo, la función `rbinom` genera
números aleatorios de un distribución binomial simulando el lanzamiento de una moneda:


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJpZmVsc2UocmJpbm9tKG4gPSAxMCwgc2l6ZSA9IDEsIHByb2IgPSAwLjUpLFxuICAgICAgIFwiY2FyYVwiLCBcImNydXpcIikifQ==</div>

No obstante, `if(test) yes else no` es mucho mas eficiente y preferible a `ifelse(test, yes, no)` cuando `test` es decir, la
condición lógica se trata de una expresión cuya longitud sea un vector de longitud igual a 1.



## Selección Múltiple con `switch()`

El código con muchas clausulas `else` puede hacer nuestro código difícil de leer. En estas circunstancias, podemos hacer uso de la función `switch()`, con la que conseguiremos un código mas legible y fácil de mantener. 

Para comprender mejor su funcionamiento pasemos a examinar el [diagrama de flujo]((https://i.imgur.com/MwHdBC2.png)) de la función `switch()`:

![Diagrama de Flujo switch()](https://i.imgur.com/MwHdBC2.png))


Esta función permite ejecutar una de entre varias acciones en función del valor de una expresión. Es una alternativa a los `if-else` anidados cuando se compara la misma expresión con diferentes valores.

El caso más común toma como primer argumento una expresión que devuelve un string, seguido por varios argumentos con nombre que proporcionan el resultado cuando el nombre coincida con el primer argumento. Cuando se encuentra la primera coincidencia, se ejecuta el bloque de instrucciones y se sale de función. Si no se encuentra ninguna coincidencia con ningún valor, se ejecuta el bloque de sentencias del argumento por defecto.

#### Uso

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJzdHIoc3dpdGNoKSJ9</div>

#### Argumentos

```{}
EXPR:  una expresión que evalua un string
... :  una lista con alternativas. Estas alternativas se les dará nombre, 
excepto a aquella que sea usada como valor por defecto.

```

Una alternativa al ejemplo presentado en el apartado anterior mediante la función `swith()` es la siguiente:




<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJcbiMgQ3JlYW1vcyB1bmEgbXVlc3RyYSBkZSAyMCBvYnNlcnZhY2lvbmVzIGRlbCAxIGFsIDEwMCBlblxuIyBlbCBxdWUgc2UgcHVlZGVuIHJlcGV0aXIgaGFzdGEgMiBvYnNlcnZhY2lvbmVzXG4obXVlc3RyYSA8LSBzYW1wbGUoMToxMDAsIDIwLCAyKSlcblxuXG4jQ2FsY3VsYW1vcyBsYSBtZWRpYSBkZSBsYSBtdWVzdHJhXG4oc3dpdGNoKFxuICBcIm1lZGlhXCIsXG4gIG1lZGlhID0gbWVhbihtdWVzdHJhKSxcbiAgbWVkaWFuYSA9IG1lZGlhbihtdWVzdHJhKSxcbiAgbW9kYSA9IG1sdihtdWVzdHJhLCBtZXRob2QgPSBcIm1mdlwiKVxuKSlcbiJ9</div>

Si ningún nombre coincide, entonces `switch` devuelve `NULL`:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIEludGVudGFtb3MgY2FsY3VsYXIgbGEgZGVzdmlhY2lcdTAwZjNuIHRcdTAwZWRwaWNhXG4oc3dpdGNoKFxuICBcImRlc3ZpYWNpb25fdGlwaWNhXCIsXG4gIG1lZGlhID0gbWVhbih4KSxcbiAgbWVkaWFuYSA9IG1lZGlhbih4KSxcbiAgbW9kYSA9IG1sdih4LCBtZXRob2QgPSBcIm1mdlwiKVxuICApKSJ9</div>

En este escenario, podemos proporcionar un argumento por defecto sin nombre que `switch()` devolverá cuando no coincida ningún otro:

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIEludGVudGFtb3MgY2FsY3VsYXIgbGEgZGVzdmlhY2lcdTAwZjNuIHRcdTAwZWRwaWNhXG4oc3dpdGNoKFxuICBcImRlc3ZpYWNpb25fdGlwaWNhXCIsXG4gIG1lZGlhID0gbWVhbih4KSxcbiAgbWVkaWFuYSA9IG1lZGlhbih4KSxcbiAgbW9kYSA9IG1sdih4LCBtZXRob2QgPSBcIm1mdlwiKSxcbiAgXCJTb2xvIHNlIHB1ZWRlIGNhbGN1bGFyIGxhIG1lZGlhLCBtZWRpYW5hIHkgbW9kYVwiXG4gICkpIn0=</div>

[if]:https://i.imgur.com/KhwkQbf.png
[if-else]:https://i.imgur.com/6HAkO6A.png
[if-else-anidados]:(https://i.imgur.com/9dn41o5.png
