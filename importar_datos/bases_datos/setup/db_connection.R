conn <- dbConnect(driver,
                  user = "ruben",
                  password = "1234",
                  db = "sakila")


# # Conexión por medio de OBDC
# library(DBI)
# con <- dbConnect(odbc::odbc(), "MySQL")


# library(DBI)
# con <- dbConnect(odbc::odbc(), .connection_string = "Driver={MySQL ODBC 5.3 Unicode Driver};user = ruben;
#                  password = 1234;
#                  db =sakila")