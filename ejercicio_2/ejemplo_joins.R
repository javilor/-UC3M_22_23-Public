set.seed(314)

pacman::p_load(tidylog)
data_r <- tibble(id = paste0("id", 1:10), 
                 r1 = sample(1:5, 10,  replace = TRUE) , 
                 r2 = sample(1:5, 10, replace = TRUE))
data_r



data_h <- tibble(id = paste0("id", 1:9), 
                    happy =  sample(1:5, 9, replace = TRUE))
data_h


data <- inner_join(data_r, data_h)
data


data <- left_join(data_r, data_h)
data

data <- left_join(data_h, data_r)
data

data <- anti_join(data_r, data_h)
data

data <- full_join(data_r, data_h)
data

