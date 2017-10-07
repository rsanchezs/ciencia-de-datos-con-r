---
title: "Estructuras de datos"
author: "Rubén Sánchez Sancho"
date: "14 de febrero de 2017"
output:
  ioslides_presentation:
    highlight: monochrome
    widescreen: yes
logo: ./logo.png
---


<style>
h2 { 
   font-size: 36px; 
   line-height: 65px; 
   letter-spacing: -2px; 
   color: #FFFFFF;} 
</style>

<style>
.title-slide {
  background-color: #8BBB27;
}
</style>

<style>
slides > slide.backdrop {
  background:#262D35;
}
</style>

<style>
pre {
  width : 50%;
  padding: 10px 15px 10px 15px;
  left: 0px;
  background-color: #2A3137;
}
</style>

<style>
.prettyprint {
  background-color: #c4c6c6;
}
</style>

<style> 
slides > slide:not(.nobackground):before {
  margin: 40px 5px;
}
</style>

<style>
table.rmdtable th { 
   color: #515151; 
   background: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(40%, #CED815), color-stop(80%, #989e1d)) no-repeat; 
   background: -webkit-linear-gradient(top, #CED815 40%, #989e1d 80%) no-repeat; 
   background: -moz-linear-gradient(top, #CED815 40%, #989e1d 80%) no-repeat; 
   background: -o-linear-gradient(top, #CED815 40%, #989e1d 80%) no-repeat; 
   background: linear-gradient(top, #CED815 40%, #989e1d 80%) no-repeat; 
 } 
</style>

## Estructuras de datos {.flexbox .vcenter}

<div class="note">
Este capítulo resume las estructuras de datos más importantes en R. Las colecciones
o conjunto de datos en R se organizan por su dimensión (1º, 2º, o varias dimensiones)
y si son homogéneas (todos los objetos deben ser del mismo tipo) o heterogéneas (
el contenido puede ser de diferentes tipos). A continuación mostramos los cinco tipos
de datos más usados en el análisis de datos:  
</div>



|  | **Homogénea** | **Heterogénea** |
| :---: | :---: | :---: |
| **1** | Vector atómico | Lista |
| **2** | Matriz | Data frame |
| **n** | Array |  |          | 



## Sintaxis de Acceso a los Elementos {.smaller}

<div class="note">
Además, analizaremos la sintaxis de R para acceder a las estructuras de datos. Como veremos
podemos seleccionar un único elemento o varios elementos mediante el uso de la notación de índices que proporciona R. Asimismo aprenderemos a elegir elementos por localización dentro de una estructura o por nombre. 
</div>

| **Sintaxis** | **Objetos** | **Descripción** |
| :--- | :--- | :--- |
| __`x[i]`__ | Vectores, Listas | Selecciona elementos del objeto _x_, descritos en _i_. _i_ puede ser un vector de tipo integer, chararacter (de nombres de los objetos) o lógico. Cuando es usado con listas, devuelve una lista. Cuando es usado en vectores devuelve un vector. |
| __`x[[i]]`__ | Listas | Devuelve un único elemento de _x_ que se encuentra en la posición _i_. _i_ puede ser un vector de tipo integer o character de longitud 1. |
| __`x$n`__ | Listas, Dataframes | Devuelve un objeto con nombre _n_ del objeto _x_. |
| __`[i, j`__] | Matrices | Devuelve el objeto de la fila _i_ y columna _j_. _i_ y _j_ pueden ser un vector de tipo integer o chararacter (de nombres de los objetos) |


## Objetivos

<div class="note">
  Después de visualizar esta serie de video, deberíamos:
</div>


> - Conocer las principales estructuras de datos que proporciona R.
> - Ser capaces de crear las distintas colecciones en R.
> - Saber manipular las diferentes conjuntos de datos que aporta R.

