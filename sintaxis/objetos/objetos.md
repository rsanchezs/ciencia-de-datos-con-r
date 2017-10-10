<script src="https://cdn.datacamp.com/datacamp-light-latest.min.js">
</script>

<script type = "text/javascript">
  $(".powered-by-datacamp" ).remove();
</script>







# Objetos

Todo el código R manipula objetos. El _objeto_, es el concepto principal sobre el cual se fundamenta la tecnología orientada a objetos. Un objeto puede ser visto como una entidad que posee atributos y efectúa acciones. Ejemplos de objetos en R incluyen las funciones, [symbols](#symbols) (nombre objetos) e incluso las expresiones. A continuación se muestran algunos ejemplos de objetos:



```r
# Una función es un objeto
function() {x <- 1; y <- 2; x + y}

```



```r
#también su nombre (symbol)
f <- function(x, y){x + y}
f(1, 2)
## [1] 3
```



```r
# incluso las expresiones 
{x <- 1; y <- 2; x + y}
## [1] 3
```


## Symbols {#symbols}

Formalmente, los nombres de las variables en R se designan como _symbol_. Cuando realizamos una asignación de un objeto al nombre de una variable, estamos en realidad asignando el objeto a un symbol. Por ejemplo, la instrucción:



```r
x <- 1
```

asigna el symbol __"x"__ al objeto __"1"__ en el entorno actual.

## Cada Objeto es Miembro de una Clase {#clase}

Todos los objetos en R tienen una clase, la cual define que información contiene y como usarlo. Por ejemplo, la mayoría de números son _numeric_ [(lo veremos en la siguiente sección)](#numeric), y los valores lógicos pertenecen a la clase _logical_. En particular, puesto que R no dispone de un tipo para representar escalares, los _vectores_ de números son numeric y los vectores de valores lógicos son logical. El tipo de dato "más pequeño" en R es un vector.

Podemos encontrar la clase de un objeto mediante la función `class(objeto)`:


<div data-datacamp-exercise data-height="300"
<script type = "text/javascript">
  $(".powered-by-datacamp" ).remove();
</script>
data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2ZWN0b3JfbnVtZXJpY28gPC0gYygxLCAyLCAzLCA0LCA1KVxuY2xhc3ModmVjdG9yX251bWVyaWNvKSJ9
</div>

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJwcmVfZXhlcmNpc2VfY29kZSI6InZlY3Rvcl9udW1lcmljbyA8LSBjKDEsIDIsIDMsIDQsIDUpIiwic2FtcGxlIjoiIyBDcmVhbW9zIHVuIHZlY3RvciBudW1lcmljb1xudmVjdG9yX251bWVyaWNvIDwtIGMoMSwgMiwgMywgNCwgNSlcblxuIyBDb21wcm9iYW1vcyBsYSBjbGFzZSBkZSB1biBvYmpldG8gbWVkaWFudGUgYGNsYXNzKG5vbWJyZV9vYmpldG8pYCIsInNvbHV0aW9uIjoiIyBDcmVhbW9zIHVuIHZlY3RvciBudW1lcmljb1xudmVjdG9yX251bWVyaWNvIDwtIGMoMSwgMiwgMywgNCwgNSlcblxuIyBDb21wcm9iYW1vcyBsYSBjbGFzZSBkZSB1biBvYmpldG8gbWVkaWFudGUgYGNsYXNzKG5vbWJyZV9vYmpldG8pYFxuY2xhc3ModmVjdG9yX251bWVyaWNvKSIsInNjdCI6InRlc3RfZnVuY3Rpb24obmFtZSA9IFwiY2xhc3NcIiwgYXJncyA9IFwieFwiLCBldmFsID0gRkFMU0UsIG5vdF9jYWxsZWRfbXNnID0gXCJVc2EgbGEgZnVuY2lcdTAwZjNuIGNsYXNzKCkgcGFyYSBjb25vY2VyIGxhIGNsYXNlIGRlIHVuIG9iamV0by5cIiwgYXJnc19ub3Rfc3BlY2lmaWVkX21zZyA9IFwiUGFzYSBhIGxhIGZ1bmNpXHUwMGYzbiBjbGFzcygpIGNvbW8gcHJpbWVyIGFyZ3VtZW50byBlbCBvYmpldG9cIixpbmNvcnJlY3RfbXNnID0gXCJ2ZWN0b3JfbnVtZXJpY29cIilcbnN1Y2Nlc3NfbXNnKFwiXHUwMGExRXhjZWxlbnRlLCB5YSBzYWJlbW9zIGNvbW8gY29tcHJvYmFyIGxhIGNsYXNlIGEgbGEgcXVlIHBlcnRlbmVjZSB1biBvYmpldG8hXCIpIn0=</div>







## Cada Objeto tiene un Tipo {#tipo}

Cada objeto en R tiene un tipo. El tipo define como es almacenado el objeto en R. 

Podemos conocer el tipo de objeto con la función `typeof(objeto)`:


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2ZWN0b3JfbnVtZXJpY28gPC0gYygxLCAyLCAzLCA0LCA1KVxudHlwZW9mKHZlY3Rvcl9udW1lcmljbykifQ==</div>

### Comprobar la Clase de un Objeto en **_scripts_**

El uso de la función `class()` es útil para examinar nuestros objetos en un trabajo interactivo con la consola de R, pero si necesitamos comprobar el tipo de un objeto en nuestros _scripts_, es mejor el uso de la función `is()`. En una situación típica, nuestro test se parecerá al siguiente:




```r
if(!is(x, "alguna_clase")) {
  
  # alguna acción correctiva
}

```


La mayoría de las clases tienen su propia función `is.*()`, utilizar esta función es mas efectivo que el uso de la función general `is()`. Por ejemplo:


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJpcy5jaGFyYWN0ZXIoXCJDaWVuY2lhIGRlIERhdG9zIGNvbiBSXCIpIn0=</div>

Podemos ver una lista completa de las funciones `is()` en el paquete `base` mediante la siguiente instrucción:


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJscyhwYXR0ZXJuID0gXCJeaXNcIiwgYmFzZWVudigpKSJ9</div>


## Nombres de los Objetos {#nombres}

Los nombres de los objetos pueden contener letras, números, puntos y guiones bajos, pero no pueden empezar con un número o un punto seguido de un número. Además, no podemos hacer uso de las palabras reservadas del lenguaje como `if` y `for`. La instrucción `?make.names` describe en detalle lo que está y no permitido.

En resumen, los nombres de nuestros objetos :

 - Pueden contener: 
 
      - letras
      - números
      - guión bajo (-)
      - punto (.)
      
 - Deben empezar con una letra.
 - No podemos utilizar las palabras reservadas del lenguaje.

Para la comunidad hispanohablante, cabe mencionar que para que nuestro código sea lo mas portable posible no debemos utilizar acentos y la letra "ñ", es decir, debemos limitarnos a los caracteres de la "a" a la "z" ( y de la"A" a la "Z").

__Ejemplos__:

- ruben
- RUBEN123
- las_variables_pueden_contener_guiones
- las.variables.pueden.contener.puntos
- Ruben_123.0

### Convención para Nombres con Varias Palabras

Puesto que queremos que nuestros objetos tengan nombres descriptivos, necesitaremos una convención para objetos con múltiples palabras. Recomendamos usar el método __snake_case__ dónde separamos las palabras en minúsculas con el guión bajo:

__Ejemplos__:

- yo_uso_snake_case 
- otraGenteUsaCamelCase 
- alguna.gente.usa.puntos 
- Y_otra.Gente.RENUNICAconvención 

