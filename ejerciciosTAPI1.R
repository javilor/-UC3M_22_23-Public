
################# Talleres de Análisis Político I. Sesión 1 #################
update.packages(ask = F)
library(pacman)

# Vamos a poner orden en un nuevo proyecto --------------------------------
p_load(devtools,prodigenr,r4np)

# Prodigenr
library(prodigenr)
setup_project(path = "~/TAPI")

# # r4np
# Alternativamente, una vez ya hemos creado el proyecto de R
create_project_folder()


# Crear una función en R --------------------------------------------------

## Una función con un argumento

# Creamos una función que nos devuelva la mitad del valor indicado
funcionmitad <- #Nombre de la nueva función
  function(x){ # Indicar que creamos una función con un argumento "x"
    y <- x/2 # fórmula para la función
    return(y) # indicar cual debe ser el output de la función
}

funcionmitad(37)

## Una función con dos argumentos

# Una función para obtener un texto combinado con una cifra
funciontexto <- #Nombre de la nueva función
  function(x,t){ # Indicar que creamos una función con dos argumentos: "x" y "t"
    y <- x/2 # Primer paso de la función: calcular la mitad del valor del número (argumento "x")
    z <- paste0(t," ",y) # Segundo paso de la función, obtener el texto usando el argumento "t"
    return(z)
}

funciontexto(4,"El valor es")

# Equivalente
funciontexto(x=4,t="El valor es")
funciontexto(t="El valor es", x=4)

# No funciona. ¿Por qué?
funciontexto("El valor es", 4)


# TIDYVERSE ---------------------------------------------------------------


# Pipes --------------------------------------------------------------------

# Queremos redondear el cálculo de una media entre tres valores

mean(c(1,5,10)) # 5.33333333

# Opción 1:
round(mean(c(1,5,10)), digits = 2)

# Opción 2:
mean(c(1,5,10)) |> round(digits = 2)

# Opción 3:
x <- c(1,5,10)
x |> mean() |> round(digits = 2)


# Importar datos en R -----------------------------------------------------

# Cargaremos los mismos datos usando paquetes distintos
# CSV
qog_csv <- read_csv("https://www.qogdata.pol.gu.se/data/qog_std_cs_jan23.csv")

# Excel
library(readxl)
qog_xlsx <- read_xlsx("https://www.qogdata.pol.gu.se/data/qog_std_cs_jan23.xlsx") # da problemas, fichero corrompido


# Importar de formatos de otros programas
library(haven)
qog_sav <- read_sav("https://www.qogdata.pol.gu.se/data/qog_std_cs_jan23.sav")
qog_dta <- read_dta("https://www.qogdata.pol.gu.se/data/qog_std_cs_jan23_stata14.dta")

