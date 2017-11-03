

# Paquetes

Los paquetes en R son colecciones de funciones y conjunto de datos desarrollados
por la comunidad. Estos incrementan la potencialidad de R mejorando las funcionalidades base en R, o añadiendo de nuevas. Por ejemplo, en el campo de Ciencia de los Datos cuando trabajamos con `data.frames`, probablemente usaremos los paquetes `dplyr` o `data.table`, dos de los paquetes mas populares en la comunidad.

Supongamos que, deseamos realizar un procesamiento de lenguaje natural de textos en Coreano, extrayendo datos meteorológicos desde Internet, con toda seguridad existen paquetes en R para efectuar el análisis. Actualmente, el repositorio oficial [CRAN](https://cran.r-project.org/) recoge cerca de 10.000 paquetes publicados y, además existen muchos mas publicados en Internet.

## Objetivos

Después de leer este capítulo, deberíamos:

- Conocer lo básico del los paquetes en R: [que son los paquetes](#que-es-un-paquete) y porqué deberíamos incorporar su uso en el trabajo con R y [dónde encontrarlos](#que-son-los-repositorios).
- Ser capaces de instalar y usar paquetes: cómo podemos [instalar paquetes](#como-instalar-un-paquete-r) desde CRAN, servidores espejo CRAN, Bioconductor o GitHub. Además, aprenderemos el uso de la función `install.packages()`, la manera de [actualizarlos](#actualizar-eliminar-y-comprobar-paquetes-instalados), [eliminarlos](#actualizar-eliminar-y-comprobar-paquetes-instalados), etc. Así mismo, estudiaremos las diferentes [interfaces](#interfaces-graficas-para-la-instalacion-de-paquetes) para su instalación, [carga](#carga-de-paquetes) y [descarga](#como-descargar-un-paquete) en el entorno de trabajo. Por último, aprenderemos la [diferéncia entre un paquete y una libreria](#diferencia-entre-un-paquete-y-una-libreria).
- Por otro lado, veremos como utilizar la documentación, los archivos DESCRIPTION y [otras fuentes de documentación](#diferentes-fuentes-de-documentacion-y-ayuda).
- Por último, comentaremos cómo escoger el [paquete correcto](#escoger-el-paquete-correcto-para-nuestro-analisis) para nuestro análisis.


## ¿Qué es un Paquete? {#que-es-un-paquete}

Antes de examinar que son los paquetes, permitidme introducir algunas definiciones. Un paquete es el modo apropiado de organizar nuestro trabajo, si lo que deseamos, es compartirlo con otros usuarios. Tipicamente, un paquete incluye código (no solamente código R), documentación para el uso del paquete y funciones que incluye y conjunto de datos.

La información básica sobre un paquete es proporcionada en el archivo [DESCRIPTION](https://cran.r-project.org/doc/manuals/r-release/R-exts.html#The-DESCRIPTION-file), en el que encontraremos que utilidad tiene el paquete, el autor, la versión, fecha, tipo de licéncia y las dependencias del paqutete.

No sólo encontraremos el archivo DESCRIPTION en repositorios como CRAN sino también podemos acceder a la descripción del paquete desde R con la función `packageDescription("package")`, mediante la documentación del paquete con la ayuda de `help(package = "stats")` o en línia (del inglés, online) en el repositorio del paquete.

Por ejemplo, para acceder a la documentación del paquete `stats` lo haríamos del siguiente modo:


```r
> packageDescription("stats")
> help(package = "stats")
```

## ¿Qué son los Repositorios? {#que-son-los-repositorios}

Un repositorio es el lugar dónde están alojados los paquetes y desde el cuál podemos descargarlos. Aunque nosotros o nuestra organización disponga de un repositorio local, usualmente los paquetes son accesible online para todo el mundo. Los repositorios mas populares de paquete R son:

- [CRAN](https://cran.r-project.org/): el cual es el repositorio oficial compuesto de un conjunto de servidores web y ftp mantenidos por la comunidad R a lo largo de todo el mundo. Está coordinado por la fundación R, y para que un paquete pueda ser publicado en el mismo, necesita pasar por diferentes pruebas para asegurar que el paquete cumple con las políticas de CRAN. Podemo encontrar mas detalles al respecto en el siguiente [enlace](https://cran.r-project.org/web/packages/policies.html).

- [Bioconductor](https://www.bioconductor.org/): se trata de un repositorio específico para bioinformática. Como CRAN, tiene sus propias [políticas de publicacions y procesos de revisión](https://www.bioconductor.org/developers/package-submission/), disponiendo de una comunidad muy activa que proporciona numerosas conferéncias y encuentros a lo largo del año.

- [Github](https://github.com/): a pesar que no es específico para R, github es con toda seguridad el repositorio mas popular para la publicación de projectos __open source__ (del inglés, código abierto). Su popularidad procede del espacio ilimitado que proporciona para el alojamiento de projectos open source, la integración con git (un software de control de versiones) y, la facilidad de compartir y colaborar con otras personas. Se podría objetar que a pesar de que no proporciona procesos de control, sin embargo, será uno de los repositorios que utilizemos con más frecuéncia siempre y cuándo conozcamos la persona/s que publica el paquete. 


## ¿Cómo Instalar un Paquete R? {#como-instalar-un-paquete-r}

### Instalación de Paquetes desde Cran

La forma de instalar un paquete R depende de dónde este localizado. Con esto queremos decir que, dependerá del repositorio en dónde este publicado. La forma mas común es usar el repositorio CRAN, sirva de ejemplo la siguiente instrucción para la instalación del paquete `vioplot`:


```r
> install.packages("vioplot")
```

Después de ejecutar la instrucción anterior recibiremos una serie de mensajes en nuestra pantalla. Esto depende del sistema operativo que usemos, las dependencias y si el paquete es instalado correctamente.

Pasemos a analizar la salida por pantalla de la instalación de `vioplot`, algunos de los mensajes que podemos encontrarnos son los siguientes:

El mensaje anterior nos indica el directorio donde será instalado nuestro paquete, podemos indicar un directorio diferente mediante el parámetro `lib`.

La información previa nos indica el origen y el tamaño del paquete. Obviamente dependerá del servidor espejo CRAN que hayamos seleccionado.

Estos son los mensajes de la instalación, el código fuente, ayuda, tests y finalmente un mensaje indicándo que la instalación se ha realizado satisfactoriamente.

La última pieza de información nos indica en que directorio se encuentran los archivos originales del paquete. Esta información no es relevante para el uso del paquete, puesto que estos son copiados por defecto en una carpeta temporal.

Hay que mencionar, además que si deseamos instalar mas de un paquete a la vez, tan sólo tenemos que pasar como primer argumento a la función`install.packages()` un vector de caracteres:


```r
> install.packages("vioplot", "MASS")
```

### Instalación de Paquetes desde Servidores Espejo de CRAN


Como hemos mencionado CRAN es una red de servidores (cada uno de ellos conocidos como "mirror", del inglés espejo), así pues tenemos la posibilidad de especificar el servidor que deseamos utilizar. En RStudio, el __mirror__ será seleccionado por defecto.

Ahora bien, también tenemos la posibilidad de seleccionar el mirror mediante la función `chooseCRANmirror()`, o directamente dentro de la función `install.packages()` por medio del argumento `repos`. En el siguiente [enlace](https://cran.r-project.org/mirrors.html) o con la ayuda de la función `getCRANmirrors()` podemos obtener una lista de los mirros disponibles.


Spanish National Research Network, Madrid 

El siguiente ejemplo sirve para usar el mirror de la Red Nacional Española de Investigación (Madrid):


```r
> install.packages("vioplot", repos = "https://cran.rediris.es/")
```

### Instalación de Paquetes Bioconductor

En el caso de Bioconductor, el modo estandard de instalar un paquete es ejecutar el siguiente script:


```r
> source("https://bioconductor.org/biocLite.R")
```

La instrucción anterior instalará en nuestro equipo las funciones necesarias para la instalación de paquetes bioconductor, como por ejemplo la función `biocLite()`. Si deseamos instalar los paquetes básicos de Biocondutor, podemos hacerlo de la manera siguiente:


```
Error in biocLite(): could not find function "biocLite"
```

No obstante, si solamente estamos interesados en uno o varios paquetes en particular, podemos hacerlo como se muestra a continuación:


```r
> biocLite(c("GenomicFeatures", "AnnotationDbi"))
```


### Instalación de Paquetes con `devtools`

Como hemos visto hasta ahora, cada repositorio tiene su forma particular de instalar un paquete, en el caso de que regularmente utilizemos diferentes fuentes en la instalación de nuestros paquetes este método puede llegar a convertirse en una labor un poco pesada. Un modo mas eficiente es mediante el uso del paquete `devtools` que nos simplificará esta tarea, puesto que contiene funciones especificas para cada repositorio, incluyendo CRAN.

En primer lugar, tendremos que instalar el paquete `devtools` como hemos visto en un apartado anterior:


```r
> install.packages("devtools")
```

Una vez que tenemos instalado `devtools`, haremos uso de las funciones para la instalación de otros paquetes. Las opciones son las siguientes:

- `install_bioc()` desde [Bioconductor](https://www.bioconductor.org/),
- `install_bitbucket()` desde [Bitbucket](https://bitbucket.org/),
- `install_cran()` desde [CRAN](https://cran.r-project.org/index.html),
- `install_git()`desde un repositorio [git](https://git-scm.com/),
- `install_github()` desde [GitHub](https://github.com/),
- `install_local()` desde un archivo alojado en nuestro equipo,
- `install_svn()` desde un repositorio [SVN](https://subversion.apache.org/),
- `install_url()` desde una URL, y
- `install_version()` para una versión específica del un paquete de CRAN.

Por ejemplo, para instalar el [paquete babynames](https://github.com/hadley/babynames) desde su repositorio github podemos hacerlo como mostramos a continuación:


```r
> devtools::install_github("hadley/babynames")
```


## Actualizar, Eliminar y Comprobar Paquetes Instalados {#actualizar-eliminar-y-comprobar-paquetes-instalados}

En esta sección, encontraremos unas pocas funciones que nos permitirán la gestión de la colección de paquetes instalados en nuestro equipo.

- Para comprobar que paquetes tenemos instalados en nuestro equipo, usaremos:


```r
> installed.packages()
```

- Si nuesto objetivo es eliminar un paquete, podemos hacerlo como en el siguiente ejemplo:


```r
> remove.packages("vioplot")
```

- Para comprobar que paquetes necesitan ser actualizados usaremos:


```r
> old.packages()
```

- A su vez para actualizar todos los paquetes lo haremos mediante una llamada a la función:


```r
> update.packages()
```

- Sin embargo, para actualizar un solo paquete, usaremos de nuevo la instrucción:


```r
> install.packages("vioplot")
```


## Interfaces Gráficas para la Instalación de Paquetes {#interfaces-graficas-para-la-instalacion-de-paquetes} 

En RStudio en Tools -> Install Package se nos abrirá un cuadro de dialogo para introducir el paquete que deseamos instalar:

![Instalación Paquetes RStudio](http://i.imgur.com/d0emwzd.png)


## Carga de Paquetes {#carga-de-paquetes}

Una vez tenemos instalado un paquete, estamos en disposición de hacer uso de sus funciones. Si tan solo necesitamos hacer un uso esporádico de unas pocas funciones o datos del paquete podemos acceder con la notación `nombrepaquete::nombrefuncion()`. Por ejemplo, siguiendo con el ejemplo anterior del paquete `babynames`, para explorar uno de sus datasets podemos hacer uso de la siguiente instrucción:


```r
> babynames::births
```

__RECUERDA__ que para acceder a las funciones y conjuntos de datos que contiene un paquete, podemos hacerlo mediante:


```r
> help(package = "babynames")
```


Por otro lado, si hacemos un uso intensivo de un paquete, la forma mas eficiente de trabajar es cargándolo en memoria. Esto lo conseguiremos mediante el uso de la función `library()`.

Después de cargar el paquete en memoria, ya no será necesario hacer uso de la notación `nombrepaquete::funcion()`, y podremos hacer uso de sus funciones y datos como cualquier paquete base de R:


```r
> births
```

__NOTA:__ que el argumento de la función `install.packages()` es un vector de tipo caracte y requiere de los nombres de los paquetes entrecomillados, mientras que la función `library()` accepta tanto un vector de tipo caracter como el nombre sin comillas.

De manera semejante, podemos hacer uso de la función `require()` para cargar un paquete en memoria, sin embargo la diferencia es que no lanzará un error si el paquete no está instalado. Es por eso, que recomendamos hacer uso de esta función con precaución. 


## Cómo Cargar Varios Paquetes al mismo Tiempo {#como-cargar-varios-paquetes-al-mismo-tiempo}

A pesar de que podemos pasar como argumento un vector de caracteres a la función `install.packages()` para instalar varios paquetes de una sola vez, en el caso de la función `library()`, esto no es posible.

## Cómo Descargar un Paquete {#como-descargar-un-paquete}

Para descargar de la memoria un cierto paquete podemos hacer uso de la función `detach`. Su uso es el siguiente:


```r
> detach("babynames", unload = TRUE)
```


## Diferencia entre un Paquete y una Libreria {#diferencia-entre-un-paquete-y-una-libreria}

En el caso de la función `library()`, en muchas ocasiones existe la confusión entre un paquete y una libreria, y podemos encontrarnos con gente llamando "librerias" a los paquetes.

Una cosa es la función `library()` usada para cargar un paquete, y que se refiere al lugar en dónde el paquete es localizado, habitualmente una carpeta en nuestro ordenador, y otra un paquete que es una colección de funciones y datos empaquetados de forma conveniente.

Dicho de otra manera, y en palabras de [Hadley Wickham](#http://hadley.nz/), científico de datos en RStudio, y creador de la gran mayoría de paquetes del ecosistema [tidyverse](#http://tidyverse.org/):

![Diferencia entre Paquete y Libreria](http://i.imgur.com/qADz3s3.png)

De igual manera, para recordar la diferencia es ejecutar la función `library()` sin argumentos. Esto nos proporcionará una lista de paquetes instalados en diferentes librerias en nuestro ordenador:


```r
> library()
```


## Diferentes Fuentes de Documentación y Ayuda 

## Escoger el Paquete Correcto para Nuestro Análisis 

































