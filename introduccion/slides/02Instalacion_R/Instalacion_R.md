---
title: "Instalación R"
author: "Rubén Sánchez Sancho"
date: "14 de febrero de 2017"
output: 
  ioslides_presentation:
    logo: ./images/logo.png
    transition: faster
    fig_width: 2
    fig_height: 1
---


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

h2 { 
   font-size: 35px; 
   line-height: 65px; 
   letter-spacing: -2px; 
   color: #FFFFFF;} 
</style>

<style>
pre {
  width : 70%;
  padding: 10px 15px 10px 15px;
  left: 0px;
}
</style>

<style>
slides > slide {
  padding: 80px 80px;
}
</style>

## Objetivos 

<div class="note">

En esta sección veremos dónde conseguir R, instalaremos R en nuestro equipo,veremos la interfaz gráfica de R y hablaremos sobre la parte mas importante: la consola de R.
</div>

> - Dónde conseguir R
> - Instalar R
> - Conocer la interfaz gráfica de R (GUI)
> - Consola de R




## Instalación de R

<div class="note">
Actualmente, R está mantenido por un equipo de desarrolladores de alrededor del mundo. Normalmente, hay dos lanzamientos oficiales de R al año, una en Abril y otra en Octubre. El código de este curso ha sido comprobado con la versión 3.3.0, pero si tú tienes una versión anterior o posterior de R instalada, no te preocupes.
</div>

Para descargar R visita el siguiente enlace:

<https://www.r-project.org/>



---

<div class="note">
Selecciona el vínculo __CRAN__, el _comprehensive R archive network_. 

</div>
<img src="./images/install_R_CRAN.png" width="" height=600>





---

<div class="note">
CRAN está compuesto por conjunto de servidores espejo distribuidos alrededor del mundo y que son usados para distribuir R y paquetes R. Busca y selecciona una localización cercana a ti.
</div>


![](./images/CRAN_mirrors.png)

---

<div class="note">
Escoje la plataforma en la que vas a instalar R. 
</div>

![](./images/chose_plataform.png)

---

<div class="note">

Escoje la distribución base.
</div>

![](./images/chose_base.png)

---

<div class="note">

Descarga el programa de instalación en tu equipo, el cual instalará la versión más actualizada de R.
</div>

![](./images/download.png)

---

<div class="note">

Una vez descargado, ejecuta el programa de instalación  y acepta la configuración por defecto del asistente de instalación. Este asistente instalará R en la carpeta de archivos de programa y colacará un acceso directo en el menú Inicio.
</div>

![](./images/install_wizard.png)

## La GUI R

<div class="note">
Cuando abramos R en Windows, veremos la siguiente interfaz gráfica, en la que podemos ver una barra de menús, la barra de herramientas y la consola de R.

</div>

![](./images/GUI.png)


## La consola de R 

<div class="note">
La consola de R es la herramienta más importante para usar R. La consola de R  nos permite introducir comandos en R y ver como el sistema R responde. Los comandos que introducimos en la consola son conocidos como _expresiones_. Una parte del sistema R conocida como _interprete_ leerá las expresiones y responderá con un resultado o un mensaje de error. 


Por defecto R, mostrará un símbolo  mayor que (">") en la consola al principio de línea, lo que nos indica que R esta esperando para que introduzcamos un comando en la consola. Esto es conocido como símbolo del sistema.
</div>

<img src="./images/Diagrama_Flujo_Lenguaje_Interpretado.png" width="500">





## 

Podemos usar R como calculadora



```r
2 + 3
```


```r
4 - 1
```


```r
1 * 2
```



```r
2 ^ 3
```


##
También podemos hacer algebra



```r
a <- 2
b <- 3
a + b
```



```r
A <- 3
a + b - A
```



##

Realizar calculos más sofisticados 


```r
sin(pi / 2)
```



```r
round(3.1415)
```



```r
factorial(3)
```


## Instrucciones de asignación

> -Podemos crear nuevos objetos con el operador de asignación <-

> -Todas las instrucciónes de asignación dónde creamos objetos, tienen la misma forma:

<div class="centered">

__nombre_objeto__ <- _valor_
</div>


## Nombres de los objetos {.build}

 > - Deben empezar con una letra
 > - Pueden contener: 
 
      - letras
      - números
      - guión bajo (-)
      - punto (.)


----
<div class="note">
 Puesto que queremos que nuestros objetos tengan nombres descriptivos, necesitaremos una convención para objetos con múltiples palabras. Yo recomiendo usar el método __snake_case__ dónde separamos las palabras en minísculas con el guión bajo:
</div>

__Ejemplos__:

> - yo_uso_snake_case 
> - otraGenteUsaCamelCase 
> - alguna.gente.usa.puntos 
> - Y_otra.Gente.RENUNICAconvención 

## Workspace {.build}

El _workspace_ (espacio de trabajo) es tu entorno de trabajo en R e incluye los objetos definidos por el usuario.


```r
## Muestra el directorio de trabajo actual
getwd()
```


```r
## Estable el directorio de trabajo
setwd("c:/Documentos/CienciaDatosR")
```


```r
## Lista los objetos en el espacio de trabajo actual
ls()
```


```r
## Muestra los últimos 25 comandos
history()
```

## Scripts R

Archivo de texto con instrucciones R

![](./images/script_example.png)

## Resumen

En esta sección hemos visto:

> - Dónde conseguir R
> - Instalar R
> - La GUI R y su herramienta más importante: la Consola de R
> - Hemos utilizado R como calculadora científica
> - Qué és un objeto y como darles nombres
> - Hemos visto lo que és el espacio de trabajo
> - Hemos creado nuestro primer script
