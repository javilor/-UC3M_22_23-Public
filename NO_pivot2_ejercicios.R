
library(tidyverse)
data <- tibble(id = c("id1", "id2"), 
               r1 = c(1,2) , 
               r2 = c(3,4))
data <- as.data.frame(data)

class(data)



# Convierte en longer el objeto data para acabar teniendo tres columnas
# id respuesta y puntuacion
data_longer <- data %>% pivot_longer(
  cols = c("r1", "r2", "r3"), 
  names_to = "respuesta",
  values_to = "valor")


data_longer


# Convierte el objeto data_longer en uno wide de nuevo

data_wider <- data_longer %>% 
  pivot_wider(names_from = "respuesta",
                value_from = "valor")
data_wider
data
