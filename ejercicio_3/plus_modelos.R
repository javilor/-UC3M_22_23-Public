if (!require("pacman")) install.packages("pacman")
pacman::p_load(tidyverse, haven)

df <- haven::read_sav("./data/ESS9e02.sav")
df_swb <- df %>% select( country = cntry, gender = gndr, health, happy)
# adecuamos las variables 
df_swb <- df_swb %>% mutate_at(c("country", "gender"), as.character)
df_swb <- df_swb %>% mutate_at(c("health", "happy"), as.numeric)
# creamos dos modelos, uno con el país y otro sin él como predictor
lm1 <- lm(happy ~ health + gender, df_swb)
lm2 <- lm(happy ~ health + gender + country, df_swb)


# vamos a usar el paquete easystats para hacer nuestros modelos
# puedes aprender más de esta familia de paquetes aquí https://github.com/easystats/easystats
pacman::p_load(easystats)

# por ejemplo, comprobr diversos supuestos
lm1 %>% check_collinearity() 
lm1 %>% check_normality()


# O comprobarlos todos de golpe (en modelos con muchas observaciones
# puede tardar mucho y algunos índices no tener sentido)
lm2 %>% check_model()

#  parametros y su visualización
lm1 %>% model_parameters()
lm1 %>% model_parameters() %>% plot()

lm2 %>% model_parameters()
lm2 %>% model_parameters() %>% plot()


# selección de modelos

test_performance(lm1, lm2)
compare_performance(lm1, lm2)