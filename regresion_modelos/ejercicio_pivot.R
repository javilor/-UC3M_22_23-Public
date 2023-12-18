
library(tidyverse)
data <- tibble(id = c("id1", "id2"), 
               r1 = c(1,2) , 
               r2 = c(3,4))
data <- as.data.frame(data)

class(data)



# Convierte en longer el objeto data para acabar teniendo tres columnas
# id respuesta y puntuacion
data_longer <- data %>% pivot_(
)


data_longer


# Convierte el objeto data_longer en uno wide de nuevo

data_wider <- data_ %>% 
  pivot_wider()
data_wider
data
