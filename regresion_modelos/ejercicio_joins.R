set.seed(314)

pacman::p_load(tidylog)
data_r <- tibble(id = paste0("id", 1:10), 
                 r1 = sample(1:5, 10,  replace = TRUE) , 
                 r2 = sample(1:5, 10, replace = TRUE))
data_r



data_h <- tibble(id = paste0("id", 1:9), 
                 happy =  sample(1:5, 9, replace = TRUE))
data_h

# Prueba los diferentes joins y observa las consecuencias

# full join
data <-  _join( )
data

# left join con el data_h en primer lugar
data <-  _join( )
data

# left join con el data_r en primer lugar
data <-  _join( )
data

# Anti
data <-  _join( )
data

# Full
data <-  _join( )
data

