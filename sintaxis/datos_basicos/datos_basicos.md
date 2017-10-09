<script src="https://cdn.datacamp.com/datacamp-light-latest.min.js"></script>






# Datos Básicos en R

R proporciona cuatro tipos básicos de datos, también conocidos como vectores atómicos.

- logical
- numeric 
- integer
- character

## Logical {#logical}

El tipo _logical_ es la forma que tiene R para los datos binarios. Usados en test lógicos son conocidos como valores boleanos y toman los valores **TRUE** y **FALSE**. TRUE y FALSE pueden ser abreviados con las T y F en mayúsculas respectivamente. Sin embargo, recomendamos utilizar la versión completa de TRUE y FALSE. 


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIzIDwgNCJ9</div>

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJjbGFzcyhUUlVFKSJ9</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJjbGFzcyhUKSJ9</div>


Es posible construir condiciones lógicas utilizando los operadores `&`, `|` y `!` (en lenguaje formal, $$y$$, $$o$$ y $$no$$ respectivamente). La comparación de valores se lleva a cabo mediante `==` (es igual a) y `!=` (es distinto de):

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJhIDwtIDJcbmIgPC0gNFxuYSA9PSBiICMgXHUwMGJmZXMgaWd1YWwgYSBiPyJ9</div>



<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJhICE9IGIgIyBcdTAwYmZlcyBhIGRpc3RpbmRvIGRlIGI/In0=</div>

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIoYSA8MykgJiAoYiA8IDUpICAjIFx1MDBiZmVzIGEgbWVub3IgcXVlIDMgeSBiIG1lbm9yIHF1ZSAzPyJ9</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIoYSA8IDEpIHwgKGIgPCAzKSAgIyBcdTAwYmZlcyBhIG1lbm9yIHF1ZSAxIG8gYiBtZW5vciBxdWUgMz8ifQ==</div>

A continuación se muestran los operadores de comparación y lógicos en R:

|  | ?Comparision |
| :---: | :--- |
| &lt; | Menor que |
| &gt; | Mayor que |
| == | Igual a |
| &lt;= | Menor que o igual a |
| &gt;= | Mayor que o igual a |
| != | Distinto a |
| %in% | Pertenece a |
| is.na\(\) | Es el valor NA? |
| !is.na\(\) | Valores distintos a NA |
_Tabla 1: Operadores de comparación_


|  | ?base::Logic |
| :---: | :--- |
| & | y \(boleano\) |
| &#124; | o \(boleano\) |
| ! | no |
| any | Cualquiera verdadero |
| all | Todos verdaderos |
_Tabla 2: Operadores lógicos_

Para mas información sobre la sintaxis de los operadores y su precedencia consultar la
documentación R: 

<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiIjIFNpbnRheGlzIGRlIGNvbXBhcmFjaVx1MDBmM25cbj9Db21wYXJpc29uXG4jIE9wZXJhZG9yZXMgbFx1MDBmM2dpY29zXG4/YmFzZTo6TG9naWMifQ==</div>



## Numeric {#numeric}

Para representar los números reales R proporciona el tipo _numeric_. Podemos realizar toda clase de operaciones con ellos como por ejemplo sumas, restas, multiplicaciones, divisiones y utilizarlos en el amplio catálogo de funciones matemáticas con las que cuenta R:


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJtaV9hbHR1cmFfZW5fY20gPC0gMTgwXG5taV9hbHR1cmFfZW5fY20ifQ==</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJtaV9wZXNvIDwtIDc5LjVcbm1pX3Blc28ifQ==</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJJTUMgPC0gbWlfcGVzbyAvIG1pX2FsdHVyYV9lbl9jbSBeIDJcbklNQyJ9</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJyb3VuZChtaV9wZXNvKSJ9</div>

## Integer {#integer}

Un tipo especial de numeric es el _integer_. Este es el modo de representar los números enteros en R. Para especificar que un número es entero, debemos añadir la letra L en mayúscula como sufijo.


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJtaV9lZGFkIDwtIDQwTFxubWlfZWRhZCJ9</div>

En el ejemplo anterior, no podemos apreciar la diferencia entre el número real y el número entero.Sin embargo, con la función `class()` podemos comprobar esta diferencia:



<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJjbGFzcyg0MCkifQ==</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJjbGFzcyg0MEwpIn0=</div>

En lugar de preguntar por la clase de una variable mediante la función `class()`, podemos utilizar las funciones `is.*()` para comprobar si un objeto es realmente de un cierto tipo. Por ejemplo, para comprobar si una variable es numeric, usaremos la función `is.numeric()`:


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJpcy5udW1lcmljKDQwKSJ9</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJpcy5udW1lcmljKDQwTCkifQ==</div>

Para comprobar si una variable es integer, usaremos la función `is.integer()`:


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJpcy5pbnRlZ2VyKDQwKSJ9</div>


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJpcy5pbnRlZ2VyKDQwTCkifQ==</div>

Como podemos ver en el ejemplo anterior los números reales son numeric, pero no todos los numeric son enteros.

## Character {#character}

Cualquier dato alfanumérico (o cadenas, _strings_ en inglés; todo aquello que no sea un número es una cadena) será
interpretado por R como _character_. Por ejemplo:


<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJcIkNpZW5jaWEgZGUgRGF0b3MgY29uIFJcIiJ9</div>



## Otros Tipos de Datos Básicos {#otros_tipos}

Por último, cabe señalar que existen otros tipos de datos básicos en R, como el _double_ que es un tipo numérico de doble precisión. El _complex_ para números complejos y el _raw_ para almacenar bytes.Sin embargo, no los trataremos en este curso puesto que raramente se utilizan en el análisis de datos

- Double (doble precisión)
- Complex (números complejos)
- Raw (almacenar bytes)



