library(tidyverse)

# crear el data frame o tibble 
df <- tibble(género = rep(c("h", "m"), 5), alumnos = 1:10, altura = 160:169 ) 

# seleccionamos los casos "m"
df.mujeres <- df %>% filter(género == "m")

# restamos la meida a la altura 
df.altos <- df %>%  mutate(dif = altura - mean(altura))

# agrupamos por género
df <- df %>% group_by(género)
df
# usando la agrupación anterior, hacemos la media por grupo 
df.medias <- df %>% summarise(m = mean(altura))

# seleccionamos las columnas de interés
df <- df %>% select(género, altura)

# ordenamos según la altura
df <- df %>% arrange(altura)
df

# convertimos la columna género   
df <-df %>% mutate(género =  case_when(
  género == "h" ~ "hombre",
  género == "m" ~ "mujer"
))


# convertimos valores con ifelse
df <- df %>% mutate(altos = ifelse(altura < 165, "bajo", "alto" ))
df

# hacemos una regresión 
modelo <- lm(altura ~ género, data = df)
summary(modelo)

library(ggplot2)

ggplot(df, aes(x =  altura)) + 
  geom_boxplot() +
  facet_grid(~género) + theme_bw()


ggplot(df, aes(x =  género, y = altura)) + 
  geom_dotplot() 







