
# Instalación de Paquetes desde Cran



```r
install.packages("tidyverse")
```



# Instalación de Varios Paquetes a la vez desde Cran



```r
install.packages("tidyverse", "devtools")
```




# Instalación de Paquetes con `devtools`



```r
# Instalación del paquete devtools
install.packages("devtools")
```


```r
# Carga del paquete en memoria
library(devtools)
```



```r
# Instalación de la última versión en desarrollo de`tidyverse`
# desde su repositorio github
install_github("hadley/tidyverse")
```


# Carga de paquetes en la Sesión R


```r
library(devtools)
```


```r
install_github("hadley/tidyverse")
```

```
## Downloading GitHub repo hadley/tidyverse@master
## from URL https://api.github.com/repos/hadley/tidyverse/zipball/master
```

```
## Installing tidyverse
```

```
## Installing 1 package: rlang
```

```
## Installing package into 'C:/Users/Ruben/Documents/R/win-library/3.4'
## (as 'lib' is unspecified)
```

```
## package 'rlang' successfully unpacked and MD5 sums checked
## 
## The downloaded binary packages are in
## 	C:\Users\Ruben\AppData\Local\Temp\RtmpyKFHtX\downloaded_packages
```

```
## "D:/Ruben/Documents/R-3.4.2/bin/x64/R" --no-site-file --no-environ  \
##   --no-save --no-restore --quiet CMD INSTALL  \
##   "C:/Users/Ruben/AppData/Local/Temp/RtmpyKFHtX/devtools1fd44f8874c2/tidyverse-tidyverse-3769ff2"  \
##   --library="C:/Users/Ruben/Documents/R/win-library/3.4" --install-tests
```

```
## 
```


# Descarga de Paquetes


```r
detach("devtools", unload = TRUE )
```

```
## Error in detach("devtools", unload = TRUE): invalid 'name' argument
```


# Comprobar Paquetes Instalados


```r
installed.packages()
```

```
##                Package         
## assertthat     "assertthat"    
## babynames      "babynames"     
## backports      "backports"     
## base64enc      "base64enc"     
## BH             "BH"            
## bibtex         "bibtex"        
## bindr          "bindr"         
## bindrcpp       "bindrcpp"      
## bitops         "bitops"        
## broom          "broom"         
## callr          "callr"         
## caTools        "caTools"       
## cellranger     "cellranger"    
## cli            "cli"           
## clipr          "clipr"         
## colorspace     "colorspace"    
## crayon         "crayon"        
## curl           "curl"          
## data.table     "data.table"    
## DBI            "DBI"           
## dbplyr         "dbplyr"        
## devtools       "devtools"      
## dichromat      "dichromat"     
## digest         "digest"        
## dplyr          "dplyr"         
## evaluate       "evaluate"      
## forcats        "forcats"       
## formatR        "formatR"       
## ggplot2        "ggplot2"       
## git2r          "git2r"         
## githubinstall  "githubinstall" 
## glue           "glue"          
## gtable         "gtable"        
## haven          "haven"         
## highr          "highr"         
## hms            "hms"           
## htmltools      "htmltools"     
## httr           "httr"          
## jsonlite       "jsonlite"      
## knitcitations  "knitcitations" 
## knitr          "knitr"         
## labeling       "labeling"      
## lazyeval       "lazyeval"      
## lubridate      "lubridate"     
## magrittr       "magrittr"      
## markdown       "markdown"      
## memoise        "memoise"       
## mime           "mime"          
## mnormt         "mnormt"        
## modelr         "modelr"        
## munsell        "munsell"       
## openssl        "openssl"       
## pkgconfig      "pkgconfig"     
## plogr          "plogr"         
## plyr           "plyr"          
## praise         "praise"        
## proto          "proto"         
## psych          "psych"         
## purrr          "purrr"         
## R6             "R6"            
## RColorBrewer   "RColorBrewer"  
## Rcpp           "Rcpp"          
##                LibPath                                      Version   
## assertthat     "C:/Users/Ruben/Documents/R/win-library/3.4" "0.2.0"   
## babynames      "C:/Users/Ruben/Documents/R/win-library/3.4" "0.3.0"   
## backports      "C:/Users/Ruben/Documents/R/win-library/3.4" "1.1.1"   
## base64enc      "C:/Users/Ruben/Documents/R/win-library/3.4" "0.1-3"   
## BH             "C:/Users/Ruben/Documents/R/win-library/3.4" "1.65.0-1"
## bibtex         "C:/Users/Ruben/Documents/R/win-library/3.4" "0.4.2"   
## bindr          "C:/Users/Ruben/Documents/R/win-library/3.4" "0.1"     
## bindrcpp       "C:/Users/Ruben/Documents/R/win-library/3.4" "0.2"     
## bitops         "C:/Users/Ruben/Documents/R/win-library/3.4" "1.0-6"   
## broom          "C:/Users/Ruben/Documents/R/win-library/3.4" "0.4.2"   
## callr          "C:/Users/Ruben/Documents/R/win-library/3.4" "1.0.0"   
## caTools        "C:/Users/Ruben/Documents/R/win-library/3.4" "1.17.1"  
## cellranger     "C:/Users/Ruben/Documents/R/win-library/3.4" "1.1.0"   
## cli            "C:/Users/Ruben/Documents/R/win-library/3.4" "1.0.0"   
## clipr          "C:/Users/Ruben/Documents/R/win-library/3.4" "0.4.0"   
## colorspace     "C:/Users/Ruben/Documents/R/win-library/3.4" "1.3-2"   
## crayon         "C:/Users/Ruben/Documents/R/win-library/3.4" "1.3.4"   
## curl           "C:/Users/Ruben/Documents/R/win-library/3.4" "3.0"     
## data.table     "C:/Users/Ruben/Documents/R/win-library/3.4" "1.10.4-3"
## DBI            "C:/Users/Ruben/Documents/R/win-library/3.4" "0.7"     
## dbplyr         "C:/Users/Ruben/Documents/R/win-library/3.4" "1.1.0"   
## devtools       "C:/Users/Ruben/Documents/R/win-library/3.4" "1.13.4"  
## dichromat      "C:/Users/Ruben/Documents/R/win-library/3.4" "2.0-0"   
## digest         "C:/Users/Ruben/Documents/R/win-library/3.4" "0.6.12"  
## dplyr          "C:/Users/Ruben/Documents/R/win-library/3.4" "0.7.4"   
## evaluate       "C:/Users/Ruben/Documents/R/win-library/3.4" "0.10.1"  
## forcats        "C:/Users/Ruben/Documents/R/win-library/3.4" "0.2.0"   
## formatR        "C:/Users/Ruben/Documents/R/win-library/3.4" "1.5"     
## ggplot2        "C:/Users/Ruben/Documents/R/win-library/3.4" "2.2.1"   
## git2r          "C:/Users/Ruben/Documents/R/win-library/3.4" "0.19.0"  
## githubinstall  "C:/Users/Ruben/Documents/R/win-library/3.4" "0.2.1"   
## glue           "C:/Users/Ruben/Documents/R/win-library/3.4" "1.1.1"   
## gtable         "C:/Users/Ruben/Documents/R/win-library/3.4" "0.2.0"   
## haven          "C:/Users/Ruben/Documents/R/win-library/3.4" "1.1.0"   
## highr          "C:/Users/Ruben/Documents/R/win-library/3.4" "0.6"     
## hms            "C:/Users/Ruben/Documents/R/win-library/3.4" "0.3"     
## htmltools      "C:/Users/Ruben/Documents/R/win-library/3.4" "0.3.6"   
## httr           "C:/Users/Ruben/Documents/R/win-library/3.4" "1.3.1"   
## jsonlite       "C:/Users/Ruben/Documents/R/win-library/3.4" "1.5"     
## knitcitations  "C:/Users/Ruben/Documents/R/win-library/3.4" "1.0.8"   
## knitr          "C:/Users/Ruben/Documents/R/win-library/3.4" "1.17"    
## labeling       "C:/Users/Ruben/Documents/R/win-library/3.4" "0.3"     
## lazyeval       "C:/Users/Ruben/Documents/R/win-library/3.4" "0.2.0"   
## lubridate      "C:/Users/Ruben/Documents/R/win-library/3.4" "1.7.1"   
## magrittr       "C:/Users/Ruben/Documents/R/win-library/3.4" "1.5"     
## markdown       "C:/Users/Ruben/Documents/R/win-library/3.4" "0.8"     
## memoise        "C:/Users/Ruben/Documents/R/win-library/3.4" "1.1.0"   
## mime           "C:/Users/Ruben/Documents/R/win-library/3.4" "0.5"     
## mnormt         "C:/Users/Ruben/Documents/R/win-library/3.4" "1.5-5"   
## modelr         "C:/Users/Ruben/Documents/R/win-library/3.4" "0.1.1"   
## munsell        "C:/Users/Ruben/Documents/R/win-library/3.4" "0.4.3"   
## openssl        "C:/Users/Ruben/Documents/R/win-library/3.4" "0.9.7"   
## pkgconfig      "C:/Users/Ruben/Documents/R/win-library/3.4" "2.0.1"   
## plogr          "C:/Users/Ruben/Documents/R/win-library/3.4" "0.1-1"   
## plyr           "C:/Users/Ruben/Documents/R/win-library/3.4" "1.8.4"   
## praise         "C:/Users/Ruben/Documents/R/win-library/3.4" "1.0.0"   
## proto          "C:/Users/Ruben/Documents/R/win-library/3.4" "1.0.0"   
## psych          "C:/Users/Ruben/Documents/R/win-library/3.4" "1.7.8"   
## purrr          "C:/Users/Ruben/Documents/R/win-library/3.4" "0.2.4"   
## R6             "C:/Users/Ruben/Documents/R/win-library/3.4" "2.2.2"   
## RColorBrewer   "C:/Users/Ruben/Documents/R/win-library/3.4" "1.1-2"   
## Rcpp           "C:/Users/Ruben/Documents/R/win-library/3.4" "0.12.13" 
##                Priority     
## assertthat     NA           
## babynames      NA           
## backports      NA           
## base64enc      NA           
## BH             NA           
## bibtex         NA           
## bindr          NA           
## bindrcpp       NA           
## bitops         NA           
## broom          NA           
## callr          NA           
## caTools        NA           
## cellranger     NA           
## cli            NA           
## clipr          NA           
## colorspace     NA           
## crayon         NA           
## curl           NA           
## data.table     NA           
## DBI            NA           
## dbplyr         NA           
## devtools       NA           
## dichromat      NA           
## digest         NA           
## dplyr          NA           
## evaluate       NA           
## forcats        NA           
## formatR        NA           
## ggplot2        NA           
## git2r          NA           
## githubinstall  NA           
## glue           NA           
## gtable         NA           
## haven          NA           
## highr          NA           
## hms            NA           
## htmltools      NA           
## httr           NA           
## jsonlite       NA           
## knitcitations  NA           
## knitr          NA           
## labeling       NA           
## lazyeval       NA           
## lubridate      NA           
## magrittr       NA           
## markdown       NA           
## memoise        NA           
## mime           NA           
## mnormt         NA           
## modelr         NA           
## munsell        NA           
## openssl        NA           
## pkgconfig      NA           
## plogr          NA           
## plyr           NA           
## praise         NA           
## proto          NA           
## psych          NA           
## purrr          NA           
## R6             NA           
## RColorBrewer   NA           
## Rcpp           NA           
##                Depends                                          
## assertthat     NA                                               
## babynames      "R (>= 2.10)"                                    
## backports      "R (>= 3.0.0)"                                   
## base64enc      "R (>= 2.9.0)"                                   
## BH             NA                                               
## bibtex         "R (>= 3.0.2)"                                   
## bindr          NA                                               
## bindrcpp       NA                                               
## bitops         NA                                               
## broom          NA                                               
## callr          NA                                               
## caTools        "R (>= 2.2.0)"                                   
## cellranger     "R (>= 3.0.0)"                                   
## cli            "R (>= 2.10)"                                    
## clipr          NA                                               
## colorspace     "R (>= 2.13.0), methods"                         
## crayon         NA                                               
## curl           "R (>= 3.0.0)"                                   
## data.table     "R (>= 3.0.0)"                                   
## DBI            "R (>= 3.0.0), methods"                          
## dbplyr         "R (>= 3.1.2)"                                   
## devtools       "R (>= 3.0.2)"                                   
## dichromat      "R (>= 2.10), stats"                             
## digest         "R (>= 2.4.1)"                                   
## dplyr          "R (>= 3.1.2)"                                   
## evaluate       "R (>= 3.0.2)"                                   
## forcats        "R (>= 2.10)"                                    
## formatR        "R (>= 3.0.2)"                                   
## ggplot2        "R (>= 3.1)"                                     
## git2r          "R (>= 3.0.2), methods"                          
## githubinstall  NA                                               
## glue           "R (>= 3.0.0)"                                   
## gtable         "R (>= 2.14)"                                    
## haven          "R (>= 3.1.0)"                                   
## highr          "R (>= 3.0.2)"                                   
## hms            NA                                               
## htmltools      "R (>= 2.14.1)"                                  
## httr           "R (>= 3.0.0)"                                   
## jsonlite       "methods"                                        
## knitcitations  "R (>= 3.0)"                                     
## knitr          "R (>= 3.1.0)"                                   
## labeling       NA                                               
## lazyeval       "R (>= 3.1.0)"                                   
## lubridate      "methods, R (>= 3.0.0)"                          
## magrittr       NA                                               
## markdown       "R (>= 2.11.1)"                                  
## memoise        NA                                               
## mime           NA                                               
## mnormt         "R (>= 2.2.0)"                                   
## modelr         "R (>= 3.1.0)"                                   
## munsell        NA                                               
## openssl        NA                                               
## pkgconfig      NA                                               
## plogr          NA                                               
## plyr           "R (>= 3.1.0)"                                   
## praise         NA                                               
## proto          NA                                               
## psych          "R (>= 2.10)"                                    
## purrr          "R (>= 3.1)"                                     
## R6             "R (>= 3.0)"                                     
## RColorBrewer   "R (>= 2.0.0)"                                   
## Rcpp           "R (>= 3.0.0)"                                   
##                Imports                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
## assertthat     "tools"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
## babynames      "tibble"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
## backports      "utils"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
## base64enc      NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
## BH             NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
## bibtex         "stringr, utils"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
## bindr          NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
## bindrcpp       "Rcpp, bindr"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
## bitops         NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
## broom          "plyr, dplyr, tidyr, psych, stringr, reshape2, nlme, methods"                                                                                                                                                                                                                                                                                                                                                                                                                                          
## callr          NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
## caTools        "bitops"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
## cellranger     "rematch, tibble"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
## cli            "assertthat, crayon, methods"                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
## clipr          "utils"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
## colorspace     "graphics, grDevices"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
## crayon         "grDevices, methods, utils"                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
## curl           NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
## data.table     "methods"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
## DBI            NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
## dbplyr         "assertthat, DBI (>= 0.5), dplyr (>= 0.5.0.9004), glue,\nmethods, purrr, rlang (>= 0.1.0), tibble (>= 1.3.0.9007), R6,\nutils"                                                                                                                                                                                                                                                                                                                                                                         
## devtools       "httr (>= 0.4), utils, tools, methods, memoise (>= 1.0.0),\nwhisker, digest, rstudioapi (>= 0.2.0), jsonlite, stats, git2r\n(>= 0.11.0), withr"                                                                                                                                                                                                                                                                                                                                                        
## dichromat      NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
## digest         NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
## dplyr          "assertthat, bindrcpp (>= 0.2), glue (>= 1.1.1), magrittr,\nmethods, pkgconfig, rlang (>= 0.1.2), R6, Rcpp (>= 0.12.7),\ntibble (>= 1.3.1), utils"                                                                                                                                                                                                                                                                                                                                                     
## evaluate       "methods, stringr (>= 0.6.2)"                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
## forcats        "tibble, magrittr"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
## formatR        NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
## ggplot2        "digest, grid, gtable (>= 0.1.1), MASS, plyr (>= 1.7.1),\nreshape2, scales (>= 0.4.1), stats, tibble, lazyeval"                                                                                                                                                                                                                                                                                                                                                                                        
## git2r          "graphics, utils"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
## githubinstall  "curl, data.table, devtools, httr, jsonlite, utils"                                                                                                                                                                                                                                                                                                                                                                                                                                                    
## glue           "methods"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
## gtable         "grid"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
## haven          "Rcpp (>= 0.11.4), readr (>= 0.1.0), hms, tibble, forcats (>=\n0.2.0)"                                                                                                                                                                                                                                                                                                                                                                                                                                 
## highr          NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
## hms            "methods"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
## htmltools      "utils, digest, Rcpp"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
## httr           "jsonlite, mime, curl (>= 0.9.1), openssl (>= 0.8), R6"                                                                                                                                                                                                                                                                                                                                                                                                                                                
## jsonlite       NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
## knitcitations  "RefManageR (>= 0.8.2), digest, httr (>= 0.3), methods, utils"                                                                                                                                                                                                                                                                                                                                                                                                                                         
## knitr          "evaluate (>= 0.10), digest, highr, markdown, stringr (>= 0.6),\nyaml, methods, tools"                                                                                                                                                                                                                                                                                                                                                                                                                 
## labeling       NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
## lazyeval       NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
## lubridate      "stringr, Rcpp (>= 0.11),"                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
## magrittr       NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
## markdown       "utils, mime (>= 0.3)"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
## memoise        "digest (>= 0.6.3)"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
## mime           "tools"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
## mnormt         NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
## modelr         "magrittr, purrr (>= 0.2.2), lazyeval (>= 0.2.0), tibble,\nbroom, dplyr, tidyr (>= 0.6.0)"                                                                                                                                                                                                                                                                                                                                                                                                             
## munsell        "colorspace, methods"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
## openssl        NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
## pkgconfig      "utils"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
## plogr          NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
## plyr           "Rcpp (>= 0.11.0)"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
## praise         NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
## proto          NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
## psych          "mnormt,parallel,stats,graphics,grDevices,methods,foreign,lattice,nlme"                                                                                                                                                                                                                                                                                                                                                                                                                                
## purrr          "magrittr (>= 1.5), rlang (>= 0.1), tibble"                                                                                                                                                                                                                                                                                                                                                                                                                                                            
## R6             NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
## RColorBrewer   NA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
## Rcpp           "methods, utils"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
##                LinkingTo                                            
## assertthat     NA                                                   
## babynames      NA                                                   
## backports      NA                                                   
## base64enc      NA                                                   
## BH             NA                                                   
## bibtex         NA                                                   
## bindr          NA                                                   
## bindrcpp       "Rcpp, plogr"                                        
## bitops         NA                                                   
## broom          NA                                                   
## callr          NA                                                   
## caTools        NA                                                   
## cellranger     NA                                                   
## cli            NA                                                   
## clipr          NA                                                   
## colorspace     NA                                                   
## crayon         NA                                                   
## curl           NA                                                   
## data.table     NA                                                   
## DBI            NA                                                   
## dbplyr         NA                                                   
## devtools       NA                                                   
## dichromat      NA                                                   
## digest         NA                                                   
## dplyr          "Rcpp (>= 0.12.0), BH (>= 1.58.0-1), bindrcpp, plogr"
## evaluate       NA                                                   
## forcats        NA                                                   
## formatR        NA                                                   
## ggplot2        NA                                                   
## git2r          NA                                                   
## githubinstall  NA                                                   
## glue           NA                                                   
## gtable         NA                                                   
## haven          "Rcpp"                                               
## highr          NA                                                   
## hms            NA                                                   
## htmltools      "Rcpp"                                               
## httr           NA                                                   
## jsonlite       NA                                                   
## knitcitations  NA                                                   
## knitr          NA                                                   
## labeling       NA                                                   
## lazyeval       NA                                                   
## lubridate      "Rcpp,"                                              
## magrittr       NA                                                   
## markdown       NA                                                   
## memoise        NA                                                   
## mime           NA                                                   
## mnormt         NA                                                   
## modelr         NA                                                   
## munsell        NA                                                   
## openssl        NA                                                   
## pkgconfig      NA                                                   
## plogr          NA                                                   
## plyr           "Rcpp"                                               
## praise         NA                                                   
## proto          NA                                                   
## psych          NA                                                   
## purrr          NA                                                   
## R6             NA                                                   
## RColorBrewer   NA                                                   
## Rcpp           NA                                                   
##                Suggests                                                                                                                                                                                                                                                                                                                                                                         
## assertthat     "testthat"                                                                                                                                                                                                                                                                                                                                                                       
## babynames      NA                                                                                                                                                                                                                                                                                                                                                                               
## backports      NA                                                                                                                                                                                                                                                                                                                                                                               
## base64enc      NA                                                                                                                                                                                                                                                                                                                                                                               
## BH             NA                                                                                                                                                                                                                                                                                                                                                                               
## bibtex         "testthat"                                                                                                                                                                                                                                                                                                                                                                       
## bindr          "testthat"                                                                                                                                                                                                                                                                                                                                                                       
## bindrcpp       "testthat"                                                                                                                                                                                                                                                                                                                                                                       
## bitops         NA                                                                                                                                                                                                                                                                                                                                                                               
## broom          "knitr, boot, survival, gam, glmnet, lfe, Lahman, MASS, sp,\nmaps, maptools, multcomp, testthat, lme4, zoo, lmtest, plm,\nbiglm, ggplot2, nnet, geepack, AUC, ergm, network,\nstatnet.common, xergm, btergm, binGroup, Hmisc, bbmle, gamlss,\nrstan, rstanarm, brms, coda, gmm, Matrix, ks, purrr, orcutt,\nmgcv, lmodel2, poLCA, mclust, covr, lsmeans, betareg, robust,\nakima"
## callr          "covr, testthat"                                                                                                                                                                                                                                                                                                                                                                 
## caTools        "MASS, rpart"                                                                                                                                                                                                                                                                                                                                                                    
## cellranger     "covr, testthat (>= 1.0.0), knitr, rmarkdown"                                                                                                                                                                                                                                                                                                                                    
## cli            "covr, mockery, testthat, withr"                                                                                                                                                                                                                                                                                                                                                 
## clipr          "rstudioapi (>= 0.5), testthat"                                                                                                                                                                                                                                                                                                                                                  
## colorspace     "datasets, stats, utils, KernSmooth, MASS, kernlab, mvtnorm,\nvcd, dichromat, tcltk, shiny, shinyjs"                                                                                                                                                                                                                                                                             
## crayon         "mockery, rstudioapi, testthat, withr"                                                                                                                                                                                                                                                                                                                                           
## curl           "testthat (>= 1.0.0), knitr, jsonlite, rmarkdown, magrittr,\nhttpuv, webutils"                                                                                                                                                                                                                                                                                                   
## data.table     "bit64, knitr, nanotime, chron, ggplot2 (>= 0.9.0), plyr,\nreshape, reshape2, testthat (>= 0.4), hexbin, fastmatch, nlme,\nxts, gdata, GenomicRanges, caret, curl, zoo, plm, rmarkdown,\nparallel"                                                                                                                                                                               
## DBI            "blob, covr, hms, knitr, magrittr, rprojroot, rmarkdown,\nRSQLite (>= 1.1-2), testthat, xml2"                                                                                                                                                                                                                                                                                    
## dbplyr         "covr, knitr, Lahman (>= 3.0-1), nycflights13, rmarkdown,\nRSQLite (>= 1.0.0), RMySQL, RPostgreSQL, testthat"                                                                                                                                                                                                                                                                    
## devtools       "curl (>= 0.9), crayon, testthat (>= 1.0.2), BiocInstaller,\nRcpp (>= 0.10.0), MASS, rmarkdown, knitr, hunspell (>= 2.0),\nlintr (>= 0.2.1), bitops, roxygen2 (>= 5.0.0), evaluate,\nrversions, covr, gmailr (> 0.7.0)"                                                                                                                                                          
## dichromat      NA                                                                                                                                                                                                                                                                                                                                                                               
## digest         "knitr, rmarkdown"                                                                                                                                                                                                                                                                                                                                                               
## dplyr          "bit64, covr, dbplyr, dtplyr, DBI, ggplot2, hms, knitr, Lahman\n(>= 3.0-1), mgcv, microbenchmark, nycflights13, rmarkdown,\nRMySQL, RPostgreSQL, RSQLite, testthat, withr"                                                                                                                                                                                                       
## evaluate       "testthat, lattice, ggplot2"                                                                                                                                                                                                                                                                                                                                                     
## forcats        "ggplot2, testthat, covr"                                                                                                                                                                                                                                                                                                                                                        
## formatR        "codetools, shiny, testit, rmarkdown, knitr"                                                                                                                                                                                                                                                                                                                                     
## ggplot2        "covr, ggplot2movies, hexbin, Hmisc, lattice, mapproj, maps,\nmaptools, mgcv, multcomp, nlme, testthat (>= 0.11.0), quantreg,\nknitr, rpart, rmarkdown, svglite"                                                                                                                                                                                                                 
## git2r          "getPass"                                                                                                                                                                                                                                                                                                                                                                        
## githubinstall  "testthat, ggplot2, lubridate, knitr, rmarkdown"                                                                                                                                                                                                                                                                                                                                 
## glue           "testthat, covr, magrittr"                                                                                                                                                                                                                                                                                                                                                       
## gtable         "testthat, covr"                                                                                                                                                                                                                                                                                                                                                                 
## haven          "testthat, knitr, rmarkdown, covr"                                                                                                                                                                                                                                                                                                                                               
## highr          "knitr, testit"                                                                                                                                                                                                                                                                                                                                                                  
## hms            "testthat, lubridate"                                                                                                                                                                                                                                                                                                                                                            
## htmltools      "markdown, testthat"                                                                                                                                                                                                                                                                                                                                                             
## httr           "httpuv, jpeg, knitr, png, testthat (>= 0.8.0), readr, xml2,\nrmarkdown, covr"                                                                                                                                                                                                                                                                                                   
## jsonlite       "httr, curl, plyr, testthat, knitr, rmarkdown, R.rsp, sp"                                                                                                                                                                                                                                                                                                                        
## knitcitations  "testthat, knitr (>= 1.6)"                                                                                                                                                                                                                                                                                                                                                       
## knitr          "formatR, testit, rgl (>= 0.95.1201), codetools, rmarkdown,\nhtmlwidgets (>= 0.7), webshot, tikzDevice (>= 0.10), png, jpeg,\nXML, RCurl, DBI (>= 0.4-1), tibble"                                                                                                                                                                                                                
## labeling       NA                                                                                                                                                                                                                                                                                                                                                                               
## lazyeval       "knitr, rmarkdown (>= 0.2.65), testthat, covr"                                                                                                                                                                                                                                                                                                                                   
## lubridate      "testthat, knitr, covr"                                                                                                                                                                                                                                                                                                                                                          
## magrittr       "testthat, knitr"                                                                                                                                                                                                                                                                                                                                                                
## markdown       "knitr, RCurl"                                                                                                                                                                                                                                                                                                                                                                   
## memoise        "testthat, aws.s3, httr, covr"                                                                                                                                                                                                                                                                                                                                                   
## mime           NA                                                                                                                                                                                                                                                                                                                                                                               
## mnormt         NA                                                                                                                                                                                                                                                                                                                                                                               
## modelr         "testthat, ggplot2, covr, compiler"                                                                                                                                                                                                                                                                                                                                              
## munsell        "ggplot2, testthat"                                                                                                                                                                                                                                                                                                                                                              
## openssl        "testthat, digest, knitr, rmarkdown, jsonlite, jose"                                                                                                                                                                                                                                                                                                                             
## pkgconfig      "covr, testthat, disposables (>= 1.0.3)"                                                                                                                                                                                                                                                                                                                                         
## plogr          "Rcpp"                                                                                                                                                                                                                                                                                                                                                                           
## plyr           "abind, testthat, tcltk, foreach, doParallel, itertools,\niterators, covr"                                                                                                                                                                                                                                                                                                       
## praise         "testthat"                                                                                                                                                                                                                                                                                                                                                                       
## proto          "testthat, covr"                                                                                                                                                                                                                                                                                                                                                                 
## psych          "GPArotation, lavaan, sem, lme4,Rcsdp, graph, Rgraphviz"                                                                                                                                                                                                                                                                                                                         
## purrr          "covr, dplyr (>= 0.4.3), knitr, rmarkdown, testthat"                                                                                                                                                                                                                                                                                                                             
## R6             "knitr, microbenchmark, pryr, testthat, ggplot2, scales"                                                                                                                                                                                                                                                                                                                         
## RColorBrewer   NA                                                                                                                                                                                                                                                                                                                                                                               
## Rcpp           "RUnit, inline, rbenchmark, knitr, rmarkdown, pinp, pkgKitten\n(>= 0.1.2)"                                                                                                                                                                                                                                                                                                       
##                Enhances                                                  
## assertthat     NA                                                        
## babynames      NA                                                        
## backports      NA                                                        
## base64enc      "png"                                                     
## BH             NA                                                        
## bibtex         NA                                                        
## bindr          NA                                                        
## bindrcpp       NA                                                        
## bitops         NA                                                        
## broom          NA                                                        
## callr          NA                                                        
## caTools        NA                                                        
## cellranger     NA                                                        
## cli            NA                                                        
## clipr          NA                                                        
## colorspace     NA                                                        
## crayon         NA                                                        
## curl           NA                                                        
## data.table     NA                                                        
## DBI            NA                                                        
## dbplyr         NA                                                        
## devtools       NA                                                        
## dichromat      NA                                                        
## digest         NA                                                        
## dplyr          NA                                                        
## evaluate       NA                                                        
## forcats        NA                                                        
## formatR        NA                                                        
## ggplot2        "sp"                                                      
## git2r          NA                                                        
## githubinstall  NA                                                        
## glue           NA                                                        
## gtable         NA                                                        
## haven          NA                                                        
## highr          NA                                                        
## hms            NA                                                        
## htmltools      "knitr"                                                   
## httr           NA                                                        
## jsonlite       NA                                                        
## knitcitations  NA                                                        
## knitr          NA                                                        
## labeling       NA                                                        
## lazyeval       NA                                                        
## lubridate      "chron, fts, timeSeries, timeDate, tis, tseries, xts, zoo"
## magrittr       NA                                                        
## markdown       NA                                                        
## memoise        NA                                                        
## mime           NA                                                        
## mnormt         NA                                                        
## modelr         NA                                                        
## munsell        NA                                                        
## openssl        NA                                                        
## pkgconfig      NA                                                        
## plogr          NA                                                        
## plyr           NA                                                        
## praise         NA                                                        
## proto          NA                                                        
## psych          NA                                                        
## purrr          NA                                                        
## R6             NA                                                        
## RColorBrewer   NA                                                        
## Rcpp           NA                                                        
##                License                                      
## assertthat     "GPL-3"                                      
## babynames      "CC0"                                        
## backports      "GPL-2"                                      
## base64enc      "GPL-2 | GPL-3"                              
## BH             "BSL-1.0"                                    
## bibtex         "GPL (>= 2)"                                 
## bindr          "MIT + file LICENSE"                         
## bindrcpp       "MIT + file LICENSE"                         
## bitops         "GPL (>= 2)"                                 
## broom          "MIT + file LICENSE"                         
## callr          "MIT + file LICENSE"                         
## caTools        "GPL-3"                                      
## cellranger     "MIT + file LICENSE"                         
## cli            "MIT + file LICENSE"                         
## clipr          "GPL-3"                                      
## colorspace     "BSD_3_clause + file LICENSE"                
## crayon         "MIT + file LICENSE"                         
## curl           "MIT + file LICENSE"                         
## data.table     "GPL-3 | file LICENSE"                       
## DBI            "LGPL (>= 2)"                                
## dbplyr         "MIT + file LICENSE"                         
## devtools       "GPL (>= 2)"                                 
## dichromat      "GPL-2"                                      
## digest         "GPL (>= 2)"                                 
## dplyr          "MIT + file LICENSE"                         
## evaluate       "MIT + file LICENSE"                         
## forcats        "GPL-3"                                      
## formatR        "GPL"                                        
## ggplot2        "GPL-2 | file LICENSE"                       
## git2r          "GPL-2"                                      
## githubinstall  "MIT + file LICENSE"                         
## glue           "MIT + file LICENSE"                         
## gtable         "GPL-2"                                      
## haven          "MIT + file LICENSE"                         
## highr          "GPL"                                        
## hms            "GPL-3"                                      
## htmltools      "GPL (>= 2)"                                 
## httr           "MIT + file LICENSE"                         
## jsonlite       "MIT + file LICENSE"                         
## knitcitations  "MIT + file LICENSE"                         
## knitr          "GPL"                                        
## labeling       "MIT + file LICENSE | Unlimited"             
## lazyeval       "GPL-3"                                      
## lubridate      "GPL-2"                                      
## magrittr       "MIT + file LICENSE"                         
## markdown       "GPL-2"                                      
## memoise        "MIT + file LICENSE"                         
## mime           "GPL"                                        
## mnormt         "GPL-2 | GPL-3"                              
## modelr         "GPL-3"                                      
## munsell        "MIT + file LICENSE"                         
## openssl        "MIT + file LICENSE"                         
## pkgconfig      "MIT + file LICENSE"                         
## plogr          "MIT + file LICENSE"                         
## plyr           "MIT + file LICENSE"                         
## praise         "MIT + file LICENSE"                         
## proto          "GPL-2"                                      
## psych          "GPL (>= 2)"                                 
## purrr          "GPL-3 | file LICENSE"                       
## R6             "MIT + file LICENSE"                         
## RColorBrewer   "Apache License 2.0"                         
## Rcpp           "GPL (>= 2)"                                 
##                License_is_FOSS License_restricts_use OS_type MD5sum
## assertthat     NA              NA                    NA      NA    
## babynames      NA              NA                    NA      NA    
## backports      NA              NA                    NA      NA    
## base64enc      NA              NA                    NA      NA    
## BH             NA              NA                    NA      NA    
## bibtex         NA              NA                    NA      NA    
## bindr          NA              NA                    NA      NA    
## bindrcpp       NA              NA                    NA      NA    
## bitops         NA              NA                    NA      NA    
## broom          NA              NA                    NA      NA    
## callr          NA              NA                    NA      NA    
## caTools        NA              NA                    NA      NA    
## cellranger     NA              NA                    NA      NA    
## cli            NA              NA                    NA      NA    
## clipr          NA              NA                    NA      NA    
## colorspace     NA              NA                    NA      NA    
## crayon         NA              NA                    NA      NA    
## curl           NA              NA                    NA      NA    
## data.table     NA              NA                    NA      NA    
## DBI            NA              NA                    NA      NA    
## dbplyr         NA              NA                    NA      NA    
## devtools       NA              NA                    NA      NA    
## dichromat      NA              NA                    NA      NA    
## digest         NA              NA                    NA      NA    
## dplyr          NA              NA                    NA      NA    
## evaluate       NA              NA                    NA      NA    
## forcats        NA              NA                    NA      NA    
## formatR        NA              NA                    NA      NA    
## ggplot2        NA              NA                    NA      NA    
## git2r          NA              NA                    NA      NA    
## githubinstall  NA              NA                    NA      NA    
## glue           NA              NA                    NA      NA    
## gtable         NA              NA                    NA      NA    
## haven          NA              NA                    NA      NA    
## highr          NA              NA                    NA      NA    
## hms            NA              NA                    NA      NA    
## htmltools      NA              NA                    NA      NA    
## httr           NA              NA                    NA      NA    
## jsonlite       NA              NA                    NA      NA    
## knitcitations  NA              NA                    NA      NA    
## knitr          NA              NA                    NA      NA    
## labeling       NA              NA                    NA      NA    
## lazyeval       NA              NA                    NA      NA    
## lubridate      NA              NA                    NA      NA    
## magrittr       NA              NA                    NA      NA    
## markdown       NA              NA                    NA      NA    
## memoise        NA              NA                    NA      NA    
## mime           NA              NA                    NA      NA    
## mnormt         NA              NA                    NA      NA    
## modelr         NA              NA                    NA      NA    
## munsell        NA              NA                    NA      NA    
## openssl        NA              NA                    NA      NA    
## pkgconfig      NA              NA                    NA      NA    
## plogr          NA              NA                    NA      NA    
## plyr           NA              NA                    NA      NA    
## praise         NA              NA                    NA      NA    
## proto          NA              NA                    NA      NA    
## psych          NA              NA                    NA      NA    
## purrr          NA              NA                    NA      NA    
## R6             NA              NA                    NA      NA    
## RColorBrewer   NA              NA                    NA      NA    
## Rcpp           NA              NA                    NA      NA    
##                NeedsCompilation Built  
## assertthat     "no"             "3.4.2"
## babynames      NA               "3.4.2"
## backports      "yes"            "3.4.1"
## base64enc      "yes"            "3.4.1"
## BH             "no"             "3.4.1"
## bibtex         "yes"            "3.4.2"
## bindr          "no"             "3.4.2"
## bindrcpp       "yes"            "3.4.2"
## bitops         "yes"            "3.4.1"
## broom          "no"             "3.4.0"
## callr          "no"             "3.4.2"
## caTools        "yes"            "3.4.2"
## cellranger     "no"             "3.4.2"
## cli            "no"             "3.4.2"
## clipr          "no"             "3.4.2"
## colorspace     "yes"            "3.4.2"
## crayon         "no"             "3.4.2"
## curl           "yes"            "3.4.2"
## data.table     "yes"            "3.4.2"
## DBI            "no"             "3.4.2"
## dbplyr         "no"             "3.4.2"
## devtools       "yes"            "3.4.2"
## dichromat      NA               "3.4.1"
## digest         "yes"            "3.4.2"
## dplyr          "yes"            "3.4.2"
## evaluate       "no"             "3.4.2"
## forcats        "no"             "3.4.2"
## formatR        "no"             "3.4.2"
## ggplot2        "no"             "3.4.2"
## git2r          "yes"            "3.4.2"
## githubinstall  "no"             "3.4.2"
## glue           "yes"            "3.4.2"
## gtable         "no"             "3.4.2"
## haven          "yes"            "3.4.2"
## highr          "no"             "3.4.2"
## hms            "no"             "3.4.2"
## htmltools      "yes"            "3.4.2"
## httr           "no"             "3.4.2"
## jsonlite       "yes"            "3.4.2"
## knitcitations  "no"             "3.4.2"
## knitr          "no"             "3.4.2"
## labeling       "no"             "3.4.1"
## lazyeval       "yes"            "3.4.2"
## lubridate      "yes"            "3.4.2"
## magrittr       "no"             "3.4.2"
## markdown       "yes"            "3.4.2"
## memoise        "no"             "3.4.2"
## mime           "yes"            "3.4.1"
## mnormt         "yes"            "3.4.1"
## modelr         "no"             "3.4.2"
## munsell        "no"             "3.4.2"
## openssl        "yes"            "3.4.2"
## pkgconfig      "no"             "3.4.2"
## plogr          "no"             "3.4.2"
## plyr           "yes"            "3.4.2"
## praise         "no"             "3.4.2"
## proto          "no"             "3.4.2"
## psych          "no"             "3.4.2"
## purrr          "yes"            "3.4.2"
## R6             "no"             "3.4.2"
## RColorBrewer   "no"             "3.4.1"
## Rcpp           "yes"            "3.4.2"
##  [ reached getOption("max.print") -- omitted 64 rows ]
```


# Eliminar un Paquete


```r
remove.packages(pkgs = "devtools")
```

```
## Removing package from 'C:/Users/Ruben/Documents/R/win-library/3.4'
## (as 'lib' is unspecified)
```




# Comprobar que Paquetes pueden ser Actualizados


```r
old.packages()
```

```
##            Package      LibPath                                     
## glue       "glue"       "C:/Users/Ruben/Documents/R/win-library/3.4"
## lazyeval   "lazyeval"   "C:/Users/Ruben/Documents/R/win-library/3.4"
## openssl    "openssl"    "C:/Users/Ruben/Documents/R/win-library/3.4"
## rmarkdown  "rmarkdown"  "C:/Users/Ruben/Documents/R/win-library/3.4"
## stringi    "stringi"    "C:/Users/Ruben/Documents/R/win-library/3.4"
## tidyselect "tidyselect" "C:/Users/Ruben/Documents/R/win-library/3.4"
## withr      "withr"      "C:/Users/Ruben/Documents/R/win-library/3.4"
## Matrix     "Matrix"     "D:/Ruben/Documents/R-3.4.2/library"        
## mgcv       "mgcv"       "D:/Ruben/Documents/R-3.4.2/library"        
##            Installed Built   ReposVer
## glue       "1.1.1"   "3.4.2" "1.2.0" 
## lazyeval   "0.2.0"   "3.4.2" "0.2.1" 
## openssl    "0.9.7"   "3.4.2" "0.9.9" 
## rmarkdown  "1.7"     "3.4.2" "1.8"   
## stringi    "1.1.5"   "3.4.1" "1.1.6" 
## tidyselect "0.2.2"   "3.4.2" "0.2.3" 
## withr      "2.0.0"   "3.4.2" "2.1.0" 
## Matrix     "1.2-11"  "3.4.2" "1.2-12"
## mgcv       "1.8-20"  "3.4.2" "1.8-22"
##            Repository                            
## glue       "https://cran.rstudio.com/src/contrib"
## lazyeval   "https://cran.rstudio.com/src/contrib"
## openssl    "https://cran.rstudio.com/src/contrib"
## rmarkdown  "https://cran.rstudio.com/src/contrib"
## stringi    "https://cran.rstudio.com/src/contrib"
## tidyselect "https://cran.rstudio.com/src/contrib"
## withr      "https://cran.rstudio.com/src/contrib"
## Matrix     "https://cran.rstudio.com/src/contrib"
## mgcv       "https://cran.rstudio.com/src/contrib"
```


# Actualizar todos los Paquetes


```r
update.packages()
```

```
## glue :
##  Version 1.1.1 installed in C:/Users/Ruben/Documents/R/win-library/3.4 
##  Version 1.2.0 available at https://cran.rstudio.com
## lazyeval :
##  Version 0.2.0 installed in C:/Users/Ruben/Documents/R/win-library/3.4 
##  Version 0.2.1 available at https://cran.rstudio.com
## openssl :
##  Version 0.9.7 installed in C:/Users/Ruben/Documents/R/win-library/3.4 
##  Version 0.9.9 available at https://cran.rstudio.com
## cancelled by user
```


# Actualizar sólo un Paquete


```r
install.packages("tidyverse")
```

```
## Installing package into 'C:/Users/Ruben/Documents/R/win-library/3.4'
## (as 'lib' is unspecified)
```

```
## package 'tidyverse' successfully unpacked and MD5 sums checked
## 
## The downloaded binary packages are in
## 	C:\Users\Ruben\AppData\Local\Temp\RtmpyKFHtX\downloaded_packages
```





# Consultar Ayuda de un Paquete


```r
help("devtools")
```

```
## Warning in read.dcf(file.path(p, "DESCRIPTION"), c("Package", "Version")):
## cannot open compressed file 'C:/Users/Ruben/Documents/R/win-library/3.4/
## devtools/DESCRIPTION', probable reason 'No such file or directory'
```

```
## Warning in find.package(if (is.null(package)) loadedNamespaces() else
## package, : there is no package called 'devtools'
```

```
## No documentation for 'devtools' in specified packages and libraries:
## you could try '??devtools'
```


# Consultar la Ayuda de la Funciones de un Paquete


```r
help(install_github, package = "devtools")
```

```
## Warning in read.dcf(file.path(p, "DESCRIPTION"), c("Package", "Version")):
## cannot open compressed file 'C:/Users/Ruben/Documents/R/win-library/3.4/
## devtools/DESCRIPTION', probable reason 'No such file or directory'
```

```
## Error in find.package(if (is.null(package)) loadedNamespaces() else package, : there is no package called 'devtools'
```

















