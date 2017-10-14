# Conexión a Postgres
library(DBI)
db <- dbConnect(RPostgres::Postgres(), user, pass, ...)

# Conexión a MySQL
db <- dbConnect(RMySQL::MySQL(), user, pass, ...)

# Conexión a SQLite
db <- dbConnect(RSQLite::SQLite(), dbname = "data/database.sqlite")

# Importar Datos de SQLite
dbListTables(db)
dbGetQuery(db, "SELECT * FROM packages")

# Desconexión
dbDisconnect(db)