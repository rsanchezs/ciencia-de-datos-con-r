


<!-- ```{r, include=FALSE} -->
<!-- tutorial::go_interactive() -->
<!-- ``` -->





# Lectura de archivos JSON en R

Para importar archivos [JSON](http://json.org/), primero necesitamos instalar y/o cargar el paquete [jsonlite](https://cran.r-project.org/web/packages/jsonlite/vignettes/json-aaquickstart.html).

## InstalaciÃ³n

Podemos instalar `jsonlite`desde CRAN:


```r
# Instalamos el paquete
install.packages("jsonlite")
```

## Uso

Para importar archivos JSON haremos uso de la funciÃ³n `fromJSON()`:



```r
# Cargamos `rjson`
library(rjson)
```


```r
# Importamos los datos desde un archivo json
fromJSON(txt = "data/Water_Right_Applications.json")
```




# Lectura de archivos XML en R

Si deseamos importar archivos [XML](https://es.wikipedia.org/wiki/Extensible_Markup_Language), una de los mÃ©todos mÃ¡s fÃ¡ciles es mediante el uso del paquete [XML2](https://www.rdocumentation.org/packages/xml2/versions/1.1.1).

## InstalaciÃ³n

Podemos installar `xml2`desde CRAN:


```r
install.packages("xml2")
```

o podemos instalar la versiÃ³n en desarrollo en GitHub, con la ayuda de `devtools`:


```r
install_github("r-lib/xml2")
```

## Uso

Mediante la funciÃ³n `read_xml()` podemos importar archivos XML:


```r
# Cargamos el paquete
library(XML)
# Importamos los datos XML 
read_xml("data/Water_Right_Applications.xml")
```

```
{xml_document}
<response>
[1] <row>\n  <row _address="http://data.wa.gov/resource/_9ubz-5r4b/22293 ...
```


# Lectura de datos de tablas HTML en R

Para importar tablas HTML necesitaremos del paquete [`rvest`](https://www.rdocumentation.org/packages/rvest/versions/0.3.2).

## InstalaciÃ³n 

Para conseguir la Ãºltima versiÃ³n desde CRAN


```r
install.packages("rvest")
```

Para descargar la versiÃ³n en desarrollo desde su repositorio en GitHub:


```r
# install.packages("devtools")
devtools::install_github("hadley/rvest")
```

```
Downloading GitHub repo hadley/rvest@master
from URL https://api.github.com/repos/hadley/rvest/zipball/master
```

```
Installing rvest
```

```
Installing 1 package: httr
```

```
Installing package into 'C:/Users/Ruben/Documents/R/win-library/3.3'
(as 'lib' is unspecified)
```

```
package 'httr' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\Ruben\AppData\Local\Temp\RtmpA9P3nK\downloaded_packages
```

```
"C:/PROGRA~1/R/R-33~1.3/bin/x64/R" --no-site-file --no-environ --no-save  \
  --no-restore --quiet CMD INSTALL  \
  "C:/Users/Ruben/AppData/Local/Temp/RtmpA9P3nK/devtools229c7e6de3c/hadley-rvest-9a51a5d"  \
  --library="C:/Users/Ruben/Documents/R/win-library/3.3" --install-tests 
```

```

```


## Uso


```r
library(rvest)
```


```r
html <- read_html("https://es.wikipedia.org/wiki/Anexo:PaÃ­ses_y_territorios_dependientes_por_poblaciÃ³n")
```

```
Error in open.connection(x, "rb"): HTTP error 404.
```

```r
table <- xml_find_first(html, "//table")
```

```
Error in doc_namespaces(doc): external pointer is not valid
```

```r
df <- (html_table(table))
```

```
Error in eval(expr, envir, enclos): could not find function "html_table"
```

```r
df
```

```
    N.º                País (o territorio dependiente)   Continente(s)
1     1                              China[14]<U+200B>            Asia
2     2                                          India            Asia
3     3                                 Estados Unidos América/Oceanía
4     4                                      Indonesia            Asia
5     5                                       Pakistán            Asia
6     6                                         Brasil         América
7     7                                        Nigeria          África
8     8                                      Bangladés            Asia
9     9                              Rusia[15]<U+200B>     Europa/Asia
10   10                                          Japón            Asia
11   11                                         México         América
12   12                                      Filipinas            Asia
13   13                                         Egipto     África/Asia
14   14                                        Etiopía          África
15   15                                        Vietnam            Asia
16   16                República Democrática del Congo          África
17   17                                       Alemania          Europa
18   18                                           Irán            Asia
19   19                                        Turquía     Asia/Europa
20   20                                      Tailandia            Asia
21   21                                    Reino Unido          Europa
22   22                            Francia[16]<U+200B>          Europa
23   23                                         Italia          Europa
24   24                                      Sudáfrica          África
25   25                                        Myanmar            Asia
26   26                                       Tanzania          África
27   27                                  Corea del Sur            Asia
28   28                                       Colombia         América
29   29                                          Kenia          África
30   30                                         España   Europa/África
31   31                          Argentina[17]<U+200B>         América
32   32                            Ucrania[18]<U+200B>          Europa
33   33                                        Argelia          África
34   34                                          Sudán          África
35   35                                           Irak            Asia
36   36                                        Polonia          Europa
37   37                                         Uganda          África
38   38                                         Canadá         América
39   39                          Marruecos[19]<U+200B>          África
40   40                                 Arabia Saudita            Asia
41   41                                     Uzbekistán            Asia
42   42                                        Malasia            Asia
43   43                                           Perú         América
44   44                                      Venezuela         América
45   45                                          Ghana          África
46   46                                         Angola          África
47   47                                          Nepal            Asia
48   48                                          Yemen            Asia
49   49                                     Afganistán            Asia
50   50                                     Mozambique          África
51   51                                Costa de Marfil          África
52   52                                      Australia         Oceanía
53   53                                          Siria            Asia
54   54                                     Madagascar          África
55   55                                Corea del Norte            Asia
56   56                                        Camerún          África
57   57                 República de China[20]<U+200B>            Asia
58   58                                      Sri Lanka            Asia
59   59                                          Níger          África
60   60                                   Burkina Faso          África
61   61                                           Malí          África
62   62                                        Rumania          Europa
63   63                                     Kazajistán     Asia/Europa
64   64                                         Malaui          África
65   65                                          Chile América/Oceanía
66   66                                      Guatemala         América
67   67                                   Países Bajos          Europa
68   68                                        Ecuador         América
69   69                                         Zambia          África
70   70                                        Camboya            Asia
71   71                                        Senegal          África
72   72                                           Chad          África
73   73                                  Sudán del Sur          África
74   74                                       Zimbabue          África
75   75                                        Somalia          África
76   76                                         Ruanda          África
    Proyecciónexponencial\nde la\npoblación\nal\n1/1/2018[9]<U+200B>
1                                                      1 388 359 000
2                                                      1 353 666 000
3                                                        327 932 000
4                                                        263 306 000
5                                                        211 747 000
6                                                        208 729 000
7                                                        204 240 000
8                                                        172 568 000
9                                                        147 102 000
10                                                       126 597 000
11                                                       124 200 000
12                                                       105 233 000
13                                                        96 660 000
14                                                        95 496 000
15                                                        94 202 000
16                                                        94 127 000
17                                                        83 404 000
18                                                        81 208 000
19                                                        80 903 000
20                                                        67 782 000
21                                                        66 465 000
22                                                        65 095 000
23                                                        60 683 000
24                                                        56 948 000
25                                                        53 898 000
26                                                        52 341 000
27                                                        52 188 000
28                                                        49 639 000
29                                                        47 195 000
30                                                        46 535 000
31                                                        44 287 000
32                                                        42 385 000
33                                                        42 265 000
34                                                        41 410 000
35                                                        39 354 000
36                                                        38 448 000
37                                                        38 277 000
38                                                        36 884 000
39                                                        34 735 000
40                                                        33 370 000
41                                                        32 682 000
42                                                        32 279 000
43                                                        32 002 000
44                                                        31 651 000
45                                                        29 293 000
46                                                        29 282 000
47                                                        29 038 000
48                                                        28 797 000
49                                                        28 128 000
50                                                        27 503 000
51                                                        24 850 000
52                                                        24 764 000
53                                                        24 728 000
54                                                        24 641 000
55                                                        24 312 000
56                                                        23 991 000
57                                                        23 589 000
58                                                        21 573 000
59                                                        20 760 000
60                                                        19 972 000
61                                                        19 615 000
62                                                        19 559 000
63                                                        18 162 000
64                                                        17 643 000
65                                                        17 491 000
66                                                        17 391 000
67                                                        17 170 000
68                                                        16 911 000
69                                                        16 650 000
70                                                        15 647 000
71                                                        15 492 000
72                                                        14 928 000
73                                                        14 470 000
74                                                        13 901 000
75                                                        13 365 000
76                                                        12 079 000
    % del\ntotal\nmun-\ndial Cambio\nmedio\nanual\n(%)[10]<U+200B>
1                      18,34                                  0,50
2                      17,88                                  1,64
3                       4,33                                  0,80
4                       3,48                                  1,18
5                       2,80                                  2,40
6                       2,76                                  0,83
7                       2,70                                  3,23
8                       2,28                                  2,11
9                       1,94                                  0,19
10                      1,67                                 -0,17
11                      1,64                                  1,05
12                      1,39                                  1,72
13                      1,28                                  2,58
14                      1,26                                  2,36
15                      1,24                                  1,07
16                      1,24                                  3,66
17                      1,10                                  0,73
18                      1,07                                  1,26
19                      1,07                                  1,36
20                      0,90                                  0,38
21                      0,88                                  0,82
22                      0,86                                  0,46
23                      0,80                                  0,39
24                      0,75                                  1,54
25                      0,71                                  1,22
26                      0,69                                  2,90
27                      0,69                                  1,00
28                      0,66                                  1,17
29                      0,62                                  2,69
30                      0,61                                  0,10
31                      0,59                                  1,06
32                      0,56                                 -0,40
33                      0,56                                  2,28
34                      0,55                                  3,02
35                      0,52                                  2,57
36                      0,51                                  0,04
37                      0,51                                  3,03
38                      0,49                                  1,06
39                      0,46                                  1,24
40                      0,44                                  2,30
41                      0,43                                  1,75
42                      0,43                                  1,76
43                      0,42                                  1,08
44                      0,42                                  1,33
45                      0,39                                  2,30
46                      0,39                                  3,56
47                      0,38                                  1,41
48                      0,38                                  2,96
49                      0,37                                  1,88
50                      0,36                                  2,70
51                      0,33                                  2,56
52                      0,33                                  1,55
53                      0,33                                  2,45
54                      0,33                                  2,71
55                      0,32                                  0,12
56                      0,32                                  2,65
57                      0,31                                  0,33
58                      0,28                                  1,16
59                      0,27                                  3,86
60                      0,26                                  3,25
61                      0,26                                  3,49
62                      0,26                                 -0,51
63                      0,24                                  1,44
64                      0,23                                  3,19
65                      0,23                                  0,96
66                      0,23                                  2,93
67                      0,23                                  0,53
68                      0,22                                  1,53
69                      0,22                                  2,97
70                      0,21                                  1,59
71                      0,20                                  3,09
72                      0,20                                  3,56
73                      0,19                                  5,95
74                      0,18                                  1,17
75                      0,18                                  2,06
76                      0,16                                  2,61
    Cambio\nabsoluto\nanual\npromedio
1                           6 907 000
2                          22 248 000
3                           2 636 000
4                           3 106 000
5                           5 076 000
6                           1 733 000
7                           6 597 000
8                           3 633 000
9                             279 000
10                           -217 000
11                          1 298 000
12                          1 809 000
13                          2 491 000
14                          2 253 000
15                          1 013 000
16                          3 443 000
17                            608 000
18                          1 024 000
19                          1 101 000
20                            257 000
21                            548 000
22                            302 000
23                            235 000
24                            878 000
25                            660 000
26                          1 515 000
27                            524 000
28                            579 000
29                          1 270 000
30                             45 000
31                            470 000
32                           -168 000
33                            964 000
34                          1 251 000
35                          1 010 000
36                             14 000
37                          1 161 000
38                            393 000
39                            430 000
40                            768 000
41                            571 000
42                            567 000
43                            345 000
44                            421 000
45                            674 000
46                          1 043 000
47                            410 000
48                            852 000
49                            528 000
50                            742 000
51                            636 000
52                            384 000
53                            607 000
54                            669 000
55                             28 000
56                            636 000
57                             78 000
58                            250 000
59                            802 000
60                            649 000
61                            684 000
62                           -100 000
63                            261 000
64                            562 000
65                            168 000
66                            510 000
67                             91 000
68                            259 000
69                            494 000
70                            249 000
71                            479 000
72                            532 000
73                            861 000
74                            162 000
75                            276 000
76                            315 000
    % del\ncambio\nmedio\nabs.\ntotal\nanual
1                                       6,63
2                                      21,36
3                                       2,53
4                                       2,98
5                                       4,87
6                                       1,66
7                                       6,33
8                                       3,49
9                                       0,27
10                                         -
11                                      1,25
12                                      1,74
13                                      2,39
14                                      2,16
15                                      0,97
16                                      3,31
17                                      0,58
18                                      0,98
19                                      1,06
20                                      0,25
21                                      0,53
22                                      0,29
23                                      0,23
24                                      0,84
25                                      0,63
26                                      1,45
27                                      0,50
28                                      0,56
29                                      1,22
30                                      0,04
31                                      0,45
32                                         -
33                                      0,93
34                                      1,20
35                                      0,97
36                                      0,01
37                                      1,11
38                                      0,38
39                                      0,41
40                                      0,74
41                                      0,55
42                                      0,54
43                                      0,33
44                                      0,40
45                                      0,65
46                                      1,00
47                                      0,39
48                                      0,82
49                                      0,51
50                                      0,71
51                                      0,61
52                                      0,37
53                                      0,58
54                                      0,64
55                                      0,03
56                                      0,61
57                                      0,07
58                                      0,24
59                                      0,77
60                                      0,62
61                                      0,66
62                                         -
63                                      0,25
64                                      0,54
65                                      0,16
66                                      0,49
67                                      0,09
68                                      0,25
69                                      0,47
70                                      0,24
71                                      0,46
72                                      0,51
73                                      0,83
74                                      0,16
75                                      0,27
76                                      0,30
    Años\npara\neven-\ntual\ndu-\npli-\nca-\nción[11]<U+200B>
1                                                         140
2                                                          43
3                                                          87
4                                                          59
5                                                          29
6                                                          84
7                                                          22
8                                                          33
9                                                         366
10                                                          -
11                                                         67
12                                                         41
13                                                         27
14                                                         30
15                                                         65
16                                                         19
17                                                         96
18                                                         55
19                                                         51
20                                                        183
21                                                         84
22                                                        150
23                                                        179
24                                                         45
25                                                         57
26                                                         24
27                                                         69
28                                                         60
29                                                         26
30                                                        720
31                                                         66
32                                                          -
33                                                         31
34                                                         23
35                                                         27
36                                                      1 906
37                                                         23
38                                                         65
39                                                         56
40                                                         30
41                                                         40
42                                                         40
43                                                         65
44                                                         52
45                                                         30
46                                                         20
47                                                         49
48                                                         24
49                                                         37
50                                                         26
51                                                         27
52                                                         45
53                                                         29
54                                                         26
55                                                        596
56                                                         26
57                                                        210
58                                                         60
59                                                         18
60                                                         22
61                                                         20
62                                                          -
63                                                         49
64                                                         22
65                                                         73
66                                                         24
67                                                        131
68                                                         46
69                                                         24
70                                                         44
71                                                         23
72                                                         20
73                                                         12
74                                                         60
75                                                         34
76                                                         27
    Censo más\nreciente,\núltima\nestimación\noficial,\nproyección\nde la ONU\no reloj de\npoblación\nnacional
1                                                                                                1 385 929 000
2                                                                                                1 210 854 977
3                                                                                                  326 088 000
4                                                                                                  258 705 000
5                                                                                                  207 774 520
6                                                                                                  208 117 000
7                                                                                                  186 939 800
8                                                                                                  166 221 000
9                                                                                                  146 544 710
10                                                                                                 126 670 000
11                                                                                                 122 273 473
12                                                                                                 100 981 437
13                                                                                                  95 848 000
14                                                                                                  92 206 005
15                                                                                                  92 700 000
16                                                                                                  86 026 000
17                                                                                                  82 800 000
18                                                                                                  79 926 270
19                                                                                                  79 814 871
20                                                                                                  67 653 000
21                                                                                                  65 648 100
22                                                                                                  64 995 000
23                                                                                                  60 525 277
24                                                                                                  55 653 654
25                                                                                                  51 486 253
26                                                                                                  50 142 938
27                                                                                                  51 069 375
28                                                                                                  49 450 000
29                                                                                                  44 156 600
30                                                                                                  46 468 102
31                                                                                                  43 590 368
32                                                                                                  42 456 012
33                                                                                                  40 400 000
34                                                                                                  39 598 700
35                                                                                                  37 883 543
36                                                                                                  38 426 809
37                                                                                                  34 634 650
38                                                                                                  36 591 241
39                                                                                                  33 337 529
40                                                                                                  32 248 123
41                                                                                                  32 120 500
42                                                                                                  32 138 000
43                                                                                                  31 488 625
44                                                                                                  31 028 637
45                                                                                                  28 308 301
46                                                                                                  25 789 024
47                                                                                                  28 431 494
48                                                                                                  24 527 000
49                                                                                                  27 101 365
50                                                                                                  26 423 623
51                                                                                                  22 671 331
52                                                                                                  24 709 000
53                                                                                                  21 377 000
54                                                                                                  22 434 400
55                                                                                                  24 213 510
56                                                                                                  22 179 700
57                                                                                                  23 556 169
58                                                                                                  21 203 000
59                                                                                                  17 138 707
60                                                                                                  19 034 397
61                                                                                                  14 528 662
62                                                                                                  19 759 968
63                                                                                                  18 054 000
64                                                                                                  15 805 000
65                                                                                                  17 373 831
66                                                                                                  16 176 133
67                                                                                                  17 139 856
68                                                                                                  16 864 000
69                                                                                                  15 933 883
70                                                                                                  13 395 682
71                                                                                                  15 256 346
72                                                                                                  11 039 873
73                                                                                                  11 815 700
74                                                                                                  13 061 239
75                                                                                                  12 316 895
76                                                                                                  10 515 973
    Fecha\n(d/mm/aaaa)[12]<U+200B> Tipo[13]<U+200B>
1                       13/10/2017                R
2                        1/03/2011                D
3                       13/10/2017                R
4                             2016                A
5                       15/03/2017                P
6                       13/10/2017                R
7                       21/03/2015                E
8                       15/03/2016                E
9                        1/01/2016                A
10                       1/09/2017                M
11                       1/07/2016                E
12                       1/08/2015                C
13                      13/10/2017                R
14                            2016                E
15                            2016                E
16                       1/07/2015                E
17                      31/12/2016                E
18                      24/09/2016                P
19                      31/12/2016                E
20                       1/07/2017                E
21                      30/06/2016                E
22                       1/09/2017                M
23                      30/04/2017                M
24                       1/07/2016                E
25                      29/03/2014                C
26                            2016                E
27                       1/11/2015                C
28                      13/10/2017                R
29                       1/07/2015                E
30                       1/07/2016                E
31                       1/07/2016                A
32                       1/08/2017                M
33                       1/01/2016                E
34                            2016                A
35                            2016                A
36                      30/06/2016                E
37                      28/08/2014                D
38                       1/04/2017                T
39                       1/09/2014                P
40                            2016                A
41                       1/01/2017                A
42                      13/10/2017                R
43                      30/06/2016                A
44                            2016                A
45                            2016                A
46                      16/05/2014                D
47                            2016                A
48                       1/07/2012                E
49                       1/01/2016                E
50                            2016                A
51                      15/05/2014                D
52                      13/10/2017                R
53                      31/12/2011                E
54                            2014                E
55                            2014                E
56                       1/01/2015                A
57                       1/08/2017                M
58                       1/07/2016                A
59                      10/12/2012                D
60                            2016                E
61                       1/04/2009                D
62                       1/01/2016                E
63                       1/08/2017                M
64                            2014                A
65                      19/04/2017                P
66                       1/07/2015                A
67                      31/08/2017                M
68                      13/10/2017                R
69                            2016                A
70                       3/03/2008                D
71                            2017                E
72                      20/05/2009                D
73                       1/07/2014                E
74                      17/08/2012                D
75                       1/01/2014                E
76                      15/08/2012                D
    Enlace (usualmente oficial) de\nesta última cifra de población
1                                                data.stats.gov.cn
2                                           www.censusindia.gov.in
3                                                   www.census.gov
4                                                    www.bps.go.id
5                                             www.pbscensus.gov.pk
6                                                  www.ibge.gov.br
7                                            www.citypopulation.de
8                                            www.citypopulation.de
9                                                       www.gks.ru
10                                                  www.stat.go.jp
11                                               www.conapo.gob.mx
12                                                  www.psa.gov.ph
13                                               www.capmas.gov.eg
14                                                  www.csa.gov.et
15                                                  www.gso.gov.vn
16                                           www.citypopulation.de
17                                                 www.destatis.de
18                                           www.citypopulation.de
19                                             www.turkstat.gov.tr
20                                           www.citypopulation.de
21                                                  www.ons.gov.uk
22                                                    www.insee.fr
23                                                   demo.istat.it
24                                           cs2016.statssa.gov.za
25                                           www.citypopulation.de
26                                                       nbs.go.tz
27                                           www.citypopulation.de
28                                                 www.dane.gov.co
29                                           www.citypopulation.de
30                                                      www.ine.es
31                                              www.indec.mecon.ar
32                                       database.ukrcensus.gov.ua
33                                                      www.ons.dz
34                                                      cbs.gov.sd
35                                                    cosit.gov.iq
36                                                     stat.gov.pl
37                                                    www.ubos.org
38                                               www.statcan.gc.ca
39                                                      www.hcp.ma
40                                                 www.cdsi.gov.sa
41                                                      www.gov.uz
42                                           www.statistics.gov.my
43                                                 www.inei.gob.pe
44                                                  www.ine.gov.ve
45                                           www.statsghana.gov.gh
46                                                  www.ine.gov.ao
47                                                      cbs.gov.np
48                                           www.citypopulation.de
49                                                      cso.gov.af
50                                                  www.ine.gov.mz
51                                                      www.ins.ci
52                                                  www.abs.gov.au
53                                           www.citypopulation.de
54                                           www.citypopulation.de
55                                                   kp.one.un.org
56                                           www.citypopulation.de
57                                                 eng.stat.gov.tw
58                                           www.statistics.gov.lk
59                                              www.stat-niger.org
60                                                     www.insd.bf
61                                             www.instat-mali.org
62                                           www.citypopulation.de
63                                                 www.stat.gov.kz
64                                                www.nsomalawi.mw
65                                                www.censo2017.cl
66                                                  www.ine.gob.gt
67                                                 statline.cbs.nl
68                                      www.ecuadorencifras.gob.ec
69                                             www.zamstats.gov.zm
70                                                  www.nis.gov.kh
71                                                     www.ansd.sn
72                                           www.citypopulation.de
73                                           www.citypopulation.de
74                                               www.zimstat.co.zw
75                                           www.citypopulation.de
76                                               statistics.gov.rw
 [ reached getOption("max.print") -- omitted 170 rows ]
```



















