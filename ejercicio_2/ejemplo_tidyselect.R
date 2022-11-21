#####

data <- tibble(id = c("id1", "id2"), r1 = c(1,2) , r2 = c(3, 4))
data

data_longer <- data %>% pivot_longer(cols = c(r1, r2))
data_longer

ggplot(data_longer, aes(x = name, y = value, color = name)) +
  geom_point(size = 5) + theme_bw()

#####

data <- tibble(id = c("id1", "id2"), 
               r1 = c(1 , 2) , 
               r2 = c(3, 4), 
               r3 = c(4, 5))
data

isTRUE(!TRUE)


data_longer <- data %>% pivot_longer(cols = !id)
data_longer

data_longer <- data %>% pivot_longer(cols = c(r1:r3))
data_longer

data_longer <- data %>% pivot_longer(cols = contains("r"))
data_longer


data_longer <- data %>% pivot_longer(cols = num_range("r", 1:3))
data_longer

data_longer <- data %>% pivot_longer(cols = 2:4)
data_longer

vars = c("r1","r2", "r3")
data_longer <- data %>% pivot_longer(cols = any_of(vars))
data_longer

data_longer <- data %>% pivot_longer(cols = where(is.numeric))
data_longer
                                     
ggplot(data_longer, aes(x = name, y = value, color = name)) +
  geom_point(size = 5) + theme_bw()

#####