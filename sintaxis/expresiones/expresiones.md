<script src="https://cdn.datacamp.com/datacamp-light-latest.min.js"></script>






# Expresiones y Asignación


El código R está compuesto por una serie de _expresiones_. Ejemplo de expresiones en R incluyen, expresiones aritméticas, [instrucciones de control](../../estructuras_control/estructuras_control.md) (condicionales e iterativas) e instrucciones de asignación. A continuación se muestran ejemplos de expresiones: 



<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjICBFeHByZXNpXHUwMGYzbiBhcml0bVx1MDBlOXRpY2FcbjEyNyAlJSAxMCJ9</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIEluc3RydWNjaVx1MDBmM24gY29uZGljaW9uYWxcbmlmICgxID4gMikgXCJtYXlvclwiIGVsc2UgXCJtZW5vclwiIn0=</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIEluc3RydWNjaVx1MDBmM24gYXNpZ25hY2lcdTAwZjNuXG54IDwtIDEifQ==</div>

## Instrucciones de Asignación {#asignacion}

Podemos crear nuevos objetos con el operador de asignación __<-__. Todas las instrucciones de asignación dónde creamos objetos, tienen la misma forma:

    nombre_objeto <- valor
 

En lenguaje natural podemos traducirlo como a "este objeto asignale el siguiente valor.

## Construcciones para Agrupar Expresiones {#construcciones}

R proporciona diferentes construcciones para agrupar expresiones:

    - punto y coma
    - paréntesis
    - llaves

### Separando Expresiones con punto y coma

Podemos escribir una serie de expresiones en líneas separadas:



```r
x <- 1
y <- 2
z <- 3
```

Alternativamente, podemos colocarlas en la misma línea, separadas por punto y coma:



```r
x <- 1; y <- 2; z <- 3
```

### Paréntesis

La notación con paréntesis devuelve el resultado de evaluar la expresión dentro del paréntesis:


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIoeCA8LSAxKSJ9</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIGVzIGVxdWl2YWxlbnRlXG54IDwtIDFcbnggIn0=</div>

Agrupar expresiones con paréntesis puede ser usado para modificar la prioridad  en los operadores:


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIExhIG11bHRpcGxpY2FjaVx1MDBmM24gdGllbmUgcHJpb3JpZGFkIHNvYnJlIGxhIHN1bWFcbjIgKiA1ICsgMSJ9</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIEVuIGVzdGUgY2Fzbywgc2UgY2FsY3VsYXJcdTAwZTEgcHJpbWVybyBsYSBzdW1hIHkgZGVzcHVcdTAwZTlzIHNlIG11bHRpcGxpY2FyXHUwMGUxXG4yICogKDUgKyAxKSJ9</div>


### Llaves

Las llaves son usadas para evaluar una serie de expresiones (separadas por nuevas líneas o punto y comas) y, nos devolverán el resultado de la última expresión:




<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ7eCA8LSAxOyB5IDwtIDI7IHggKyB5fSJ9</div>

Usado para agrupar un conjunto de expresiones en el cuerpo de una función:


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJmIDwtIGZ1bmN0aW9uKCkge3ggPC0gMTsgeSA8LSAyOyB4ICsgeX1cbmYoKSJ9</div>

