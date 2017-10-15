



<!-- ```{r, include=FALSE} -->
<!-- tutorial::go_interactive() -->
<!-- ``` -->


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
```



```r
# incluso las expresiones 
{x <- 1; y <- 2; x + y}
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



```r
vector_numerico <- c(1, 2, 3, 4, 5)
class(vector_numerico)
```

## Cada Objeto tiene un Tipo {#tipo}

Cada objeto en R tiene un tipo. El tipo define como es almacenado el objeto en R. 

Podemos conocer el tipo de objeto con la función `typeof(objeto)`:



```r
vector_numerico <- c(1, 2, 3, 4, 5)
typeof(vector_numerico)
```

### Comprobar la Clase de un Objeto en **_scripts_**

El uso de la función `class()` es útil para examinar nuestros objetos en un trabajo interactivo con la consola de R, pero si necesitamos comprobar el tipo de un objeto en nuestros _scripts_, es mejor el uso de la función `is()`. En una situación típica, nuestro test se parecerá al siguiente:




```r
if(!is(x, "alguna_clase")) {
  
  # alguna acción correctiva
}

```


La mayoría de las clases tienen su propia función `is.*()`, utilizar esta función es mas efectivo que el uso de la función general `is()`. Por ejemplo:



```r
is.character("Ciencia de Datos con R")
```

Podemos ver una lista completa de las funciones `is()` en el paquete `base` mediante la siguiente instrucción:



```r
ls(pattern = "^is", baseenv())
```


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

