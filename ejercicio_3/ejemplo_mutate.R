
# este ejemplo requiere de un data frame sencillo
library(tidyverse)
set.seed(10)
df = data.frame(label = rep(c("a", "b", "c"), 333
                            ) , n = rnorm(999))
df <- df %>% mutate(nz = n-mean(n), n2 = nz**2)






# uso del case_when, recodificar variables

df = data.frame(label = rep(c("hombre", "mujer", "No contesta"), 333
) , n = rnorm(999), edad = floor(rnorm(999, mean = 50, sd=13)))

# mujer mayor

df <- df %>% mutate(
  mujer_mayor = case_when(
    label == "mujer" & edad > 64 ~ "Sí",
    TRUE ~ "No"
    
  )
)

# mujer o persona mayor

df <- df %>% mutate(
  mujer_o_mayor = case_when(
    label == "mujer" | edad > 64 ~ "Sí",
    TRUE ~ "No"
    
  )
)


# uso de mutates

# segun position
df <- df %>% mutate_at(c("n", "edad"), scale)

# segun conficion
df <- df %>% mutate_if(is.numeric, scale)

# cambiar todo
df2 <- df %>% mutate_all(as.character)

# uso del across
df <- df %>% mutate(across(c(n, edad), round))
df <- df %>% mutate(across(where(is.numeric), round))
df <- df %>% mutate(across(starts_with("mujer"), tolower))
