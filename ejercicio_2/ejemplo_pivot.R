
library(tidyverse)
data <- tibble(id = c("id1", "id2"), 
               r1 = c(1,2) , 
               r2 = c(3, 4))
data <- as.data.frame(data)

class(data)

data_longer <- data %>% pivot_longer(cols = c(r1, r2),
                                     names_to = "pregunta", 
                                     values_to = "puntuacion")

data_longer




data_longer <- data %>% pivot_longer(cols = c(r1, r2), 
                                     names_to="respuesta",
                                     values_to = "puntuacion")
data_longer

#####

data_wider <- data_longer %>% pivot_wider(names_from = "respuesta",
                                          values_from = "puntuacion")
data_wider
data
 