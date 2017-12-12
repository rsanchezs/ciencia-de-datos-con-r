



# ¿Qué hace un "Científico de Datos" y por qué es una profesión tan Sexy?

En 2012, __Davenport y Patil__ escribían un [influyente artículo](https://hbr.org/2012/10/data-scientist-the-sexiest-job-of-the-21st-century) en la Harvard Business Review en la que exponían que el científico de datos era la profesión más sexy del Siglo XXI. Un profesional que combinando conocimientos de matemáticas, estadística y programación, se encarga de analizar los grandes volúmenes de datos. A diferencia de la estadística tradicional que utilizaba muestras, el científico de datos aplica sus conocimientos estadísticos para resolver problemas de negocio aplicando las nuevas tecnologías, que permiten realizar cálculos que hasta ahora no se podían realizar.

Su visión va más allá del [__Business Inteligence__](https://es.wikipedia.org/wiki/Inteligencia_empresarial), ya que se adentra en el campo del [__Big Data__](https://es.wikipedia.org/wiki/Big_data). Las tecnologías de Big Data empiezan a posibilitar que las empresas las adopten y empiecen a poner en valor el análisis de datos en su día a día. Pero, ahí, es cuando se dan cuenta que necesitan algo más que tecnología. La estadística para la construcción de modelos analíticos, las matemáticas para la formulación de los problemas y su expresión codificada para las máquinas, y, el conocimiento de dominio (saber del área funcional de la empresa que lo quiere adoptar, el sector de actividad económica, etc. etc.), se tornan igualmente fundamentales.


Pero, si esto es tan sexy ¿qué hace el científico de datos? Y sobre todo, ¿qué tiene que ver esto con el Big Data y el Business Intelligence? Para responder a ello, a continuación mostramos la representación en formato de diagrama de Venn que hizo [Drew Conway en](http://drewconway.com/) 2010:

![Diagrama de Venn "Ciencia de Datos"](https://i.imgur.com/CUDp1ey.png)

Como podemos apreciar, se trata de una agregación de tres disciplinas que se deben entender bien en este nuevo paradigma que ha traído el Big Data:

__-Habilidades informáticas:__ Partiendo del hecho de que la mayor parte de los datos con los que deberá trabajar el Científico de Datos  provendrán de fuentes de datos heterogéneas, por lo tanto, deberá tener las habilidades necesarias para poder extraer, ordenar, analizar y manipular estosdatos utilizando distintos lenguajes de programación que le permitan crear los algoritmos necesarios en cada caso concreto.

__-Estadística y matemáticas:__ Una vez extraídos los datos, el Científico de Datos deberá tener los conocimientos matemáticos necesarios para poder interpretarlos y procesarlos mediante las herramientas más adecuadas.

__-Conocimiento del dominio:__ para poder explorar y analizar datos de multitud de orígenes diversos, a menudo inmensos y con estructuras heterogéneas, es necesario conocer el contexto. Los problemas se deben plantear acorde a estas características, para ser capaz de extraer y transmitir recomendaciones en la estrategia empresarial.  Podemos sostener, que la Ciencia de los Datos es más una cuestión de plantear bien los problemas que otra cosa, por lo que saber hacer las preguntas correctas con las personas que conocen bien el dominio de aplicación es fundamental.

Como se ilustra en el diagrama de Venn, el Científico de Datos debe ser competente en las 3 áreas básicas descritas anteriormente. En los subconjuntos en los cuales sólo se tienen 2 habilidades de estas 3 áreas, no estaremos hablando de Ciencia de Datos:

__-Aprendizaje Supervisado:__ Sin tener conocimiento del entorno de trabajo, es probable que no se acaben encontrando resultados útiles o adecuados para el proyecto. El objetivo del Científico de Datos no es demostrar su dominio de las herramientas de informáticas o habilidades en Estadística y matemáticas, sino en aplicar estos conocimientos para generar valor y beneficio a su entorno de trabajo. Es decir, un algoritmo de Machine Learning, por muy sofisticado y complejo que sea, no tiene ningún interés en sí mismo, lo importante es el resultado que se obtenga al utilizarlo con una finalidad concreta.

__-Investigación Tradicional:__ La diferencia entre el científico tradicional y el Científico de Datos, radica en gran parte en las habilidades informáticas y conocimientos en lenguajes de programación que debe tener éste último, que le permitirán poder manejar mucha más información y procesarla más rápidamente.

__-Zona Comprometida:__ Un pseudo-Científico de Datos que no tenga destreza en los campos de la estadísticas y las matemáticas, aunque tenga conocimiento del entorno y habilidades informáticas, es probable que procese los datos incorrectamente o los interprete de forma inadecuada, por lo que los resultados de la investigación no tendrán ninguna validez, lo que implicará obtener unas conclusiones erróneas, que incluso podrían perjudicar a futuros proyectos que se basaran en estos resultados.


Estas tres cuestiones (informática y computación, métodos estadísticos y áreas de aplicación/dominio), también fueron citadas por William S. Cleveland en 2001 en su artículo [“Data Science: An Action Plan for Expanding the Technical Areas of the Field of Statistics“](http://onlinelibrary.wiley.com/doi/10.1111/j.1751-5823.2001.tb00477.x/abstract). Por lo tanto, no es una concepción nueva.

# ¿Que Aprenderás con este Libro?

El objetivo de este libro es proporcionarte unos fundamentos sólidos en la gran mayoría de herramientas. Nuestro modelo de herramientas necesarias en un proyecto típico de Ciencia de Datos es el que se muestra en la siguiente figura:

![Fases Proyecto en Ciencia de Datos](https://i.imgur.com/DO2BKK7.png))

En primer lugar, será _importar_ nuestros datos a R. Con esto queremos decir, que nos encontraremos datos almacenados en archivos, bases de datos, o en una API web, y el objetivo de esta tarea será cargar los datos en un dataframe.

Una vez hemos importado nuestros datos, la siguiente tarea será _"tidy"_ nuestros datos. El objetivo de esta tarea es almacenar nuestros datos en un formato consistente en el que coincida la semántica del conjunto de datos con el medio en que están almacenados. En resumen, nuestros datos estarán en formato tidy cuando, cada variable se encuentre en una columna y cada observación en su propia fila.

A continuación, una tarea común es _transformar_ nuestros datos. Transformar nuestros datos incluye filtrar las observaciones de nuestro interés (como por ejemplo, todo la gente en una ciudad, o todos los datos del último año), creación de nuevas variables resultado del cálculo de funciones de variables existentes (como por ejemplo, calcular la velocidad con la velocidad y tiempo) y, calcular un conjunto de indicadores estadísticos en un resumen (como medias o desviaciones típicas).

Después, visualizaremos y modelaremos nuestros datos. En este libro únicamente trataremos la _visualización_.

La visualización es fundamental en la actividad humana. Un visualización bien hecha nos muestra cosas que no esperábamos, o nos conduce a formularnos nuevas cuestiones en nuestros datos. Además, puede indicarnos que no estamos formulando las cuestiones correctas, o que necesitamos recoger  nuevos datos.

El último paso en la ciencia de datos es la _comunicación_, una parte absolutamente crítica en un proyecto de análisis de datos. Indiscutiblemente, no importa lo bien que hayamos modelado o visualizado nuestros datos, si posteriormente no somos capaces de comunicar nuestros resultados con los demás.



# Instalación de las Herramientas

Para seguir este curso haremos uso de tres herramientas: R, RStudio y la colección de paquetes _tidyverse_.

## Instalación de R

Para descargar R, lo haremos desde CRAN, un conjunto de servidores espejo distribuidos a lo largo del mundo y usado para distribuir R y paquetes R. La forma mas fácil de instalar R es desde https://cloud.r-project.org/.

## Instalación de RStudio

RStudio es un entorno integrado de desarrollo, o IDE, para facilitarnos la tarea de programación. Podemos descargo e instalarlo desde http://www.rstudio.com/download.

![RStudio el IDE para R](https://i.imgur.com/R4GE1R2.png)

## Instalacion del Ecosistema Tidyverse

Además, también necesitamos instalar algunos paquetes R. Un _paquete_ R es una colección de funciones, datos y documentación que amplían las capacidades base de R. El uso de paquetes es una pieza clave para usar R satisfactoriamente. La mayoría de paquetes que aprenderemos en este texto son parte del ecosistema tidyverse. Los paquetes en tidyverse comparten la misma filosofía en el formato de datos y programación, y están diseñados para trabajar de forma conjunta cubriendo todas las tareas en el análisis de un proyecto típico en ciencia de datos.

![Tidyverse para Proyecto Típico Ciencia de Datos](https://i.imgur.com/g07Xz3Z.png)

Podemos instalar el ecosistema tidyverse al completo con tan sólo una única línea de código:


```r
install.packages("tidyverse")
```


Para poder hacer uso de las funciones, objetos y archivos de ayuda del paquete necesitaremos además, cargarlo en la sesión R. Esto lo conseguiremos mediante la ayuda de la función `library()`:


```r
library(tidyverse)
## -- Attaching packages --------------------------------------- tidyverse 1.2.1 --
## v ggplot2 2.2.1     v purrr   0.2.4
## v tibble  1.3.4     v dplyr   0.7.4
## v tidyr   0.7.2     v stringr 1.2.0
## v readr   1.1.1     v forcats 0.2.0
## -- Conflicts ------------------------------------------ tidyverse_conflicts() --
## x dplyr::filter() masks stats::filter()
## x dplyr::lag()    masks stats::lag()
```

