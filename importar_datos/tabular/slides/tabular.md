---
title: "Importar Datos Tabulares"
author: "Rubén Sánchez Sancho"
date: "22 de Octubre de 2017"
output: ioslides_presentation
logo: ./logo.png
highlight: TRUE
incremental: TRUE
widescreen : TRUE
---
<style>
h2 { 
   font-size: 36px; 
   line-height: 65px; 
   letter-spacing: -2px; 
   color: #FFFFFF;
} 
</style>

<style>
h3 {
  font-size: 30px;
  letter-spacing: -1px;
  line-height: 2;
  font-weight: inherit;
  color: #797979;
  padding: 0px;
}
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
slides > slide {
  font-size: 22px;
  padding: 40px 60px 50px 100px;
}
</style>

<style>
pre {
  width : 100%;
  padding: 10px 15px 10px 15px;
  left: 0px;
  background-color: #2A3137;
}
</style>

<!-- <style> -->
<!-- pre { -->
<!--   width : 100%; -->
<!--   padding: 10px 15px 10px 15px; -->
<!--   left: 0px; -->
<!--   background-color: #7E7E7E; -->
<!--   color:white; -->
<!-- } -->
<!-- </style> -->

<style>
code {
  font-size: 95%;
  font-family: 'Source Code Pro', 'Courier New', monospace;
  color: white;

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

<style>
table.rmdtable {
  width: 15%;
  border-collapse: -moz-initial;
  border-collapse: initial;
  border-spacing: 2px;
  border-bottom: 1px solid #797979;
}
</style>

<style>
table.rmdtable tr > td:first-child, table th {
  font-weight: 600;
  color: #515151;
}
</style>

<style>
table.rmdtable td, table th {
  font-size: 14px;
  padding: 1em 0.5em;
}
</style>






## Lectura de Archivos de Texto y Excel | Con el paquete {.build}

 


```r
# Instalamos el ecosistema tidyverse
install.packages("tidyverse")
```



```r
# Cargamos la libreria
library(tidyverse)
```



```r
# Alternativamente, podemos cargar unicamente `readr`
library(readr)
```



































