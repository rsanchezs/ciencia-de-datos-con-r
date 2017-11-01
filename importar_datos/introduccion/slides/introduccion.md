---
title: "Importar Datos:Introducción"
author: "Rubén Sánchez Sancho"
date: "13 de Octubre de 2017"
output: 
  ioslides_presentation:
    df_print: tibble
  
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





## Objetivos


```r
library(EDAWR)
```

```
## Error in library(EDAWR): there is no package called 'EDAWR'
```



```r
storms
```

```
## # A tibble: 10,010 x 13
##     name  year month   day  hour   lat  long              status category
##    <chr> <dbl> <dbl> <int> <dbl> <dbl> <dbl>               <chr>    <ord>
##  1   Amy  1975     6    27     0  27.5 -79.0 tropical depression       -1
##  2   Amy  1975     6    27     6  28.5 -79.0 tropical depression       -1
##  3   Amy  1975     6    27    12  29.5 -79.0 tropical depression       -1
##  4   Amy  1975     6    27    18  30.5 -79.0 tropical depression       -1
##  5   Amy  1975     6    28     0  31.5 -78.8 tropical depression       -1
##  6   Amy  1975     6    28     6  32.4 -78.7 tropical depression       -1
##  7   Amy  1975     6    28    12  33.3 -78.0 tropical depression       -1
##  8   Amy  1975     6    28    18  34.0 -77.0 tropical depression       -1
##  9   Amy  1975     6    29     0  34.4 -75.8      tropical storm        0
## 10   Amy  1975     6    29     6  34.0 -74.8      tropical storm        0
## # ... with 10,000 more rows, and 4 more variables: wind <int>,
## #   pressure <int>, ts_diameter <dbl>, hu_diameter <dbl>
```





