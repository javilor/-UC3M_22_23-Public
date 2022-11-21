




# este ejemplo requiere de un data frame sencillo
library(tidyverse)
set.seed(10)
df = data.frame(label = rep(c("a", "b", "c", "a", "a", "b", "c", "a", "c"), 111
) , n = rnorm(999), category = rep(c("3","2", "2", "3","2", "2", "2","1", "2"), 111))

df %>% janitor::tabyl(label, category)

f <- factor(c("a", "b", "c", "d"), levels = c("b", "c", "d", "a"))


# fct_reorder cambia el orden de un factor segun la frecuencia de otro

df %>% ggplot(aes(x=label)) + geom_bar() + theme_minimal()

df2 <- df %>% mutate(label = fct_reorder(label, category))

df2 %>% ggplot(aes(x=label)) + geom_bar() + theme_minimal()

# fct_infreq cambia el orden segun la frecuencia del propio factor

df2 <- df %>% mutate(label = fct_infreq(label))
df2 %>% ggplot(aes(x=label)) + geom_bar() + theme_minimal()

# fct_relevel ofrece la opción de un cambio abitrario

df2 <- df %>% mutate(label = fct_relevel(label, c("a") ))
df2 %>% ggplot(aes(x=label)) + geom_bar() + theme_minimal()

df2 <- df %>% mutate(label = fct_relevel(label, c("a", "c") ))
df2 %>% ggplot(aes(x=label)) + geom_bar() + theme_minimal()



