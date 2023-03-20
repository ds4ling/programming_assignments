library(tidyverse)

set.seed(1)

fricatives <- tibble(
  obs = rep(1:20, times = 2),
  phon = rep(c("s", "sh"), each = 20)) %>% 
  mutate(., cog = c(sort(rnorm(20, 5500, 1000)), 
                    sort(rnorm(20, 4000, 800))), 
            skewness = c(sort(rnorm(20, -0.82, 0.35)), 
                         sort(rnorm(20, 0.51, 0.42)))) %>% 
  gather(., measure, val, -obs, -phon) %>% 
  unite(., measure, phon, measure) %>% 
  spread(., measure, val)

write_csv(fricatives, "fricatives.csv")


# answer
fricatives %>% 
  gather(., measure, val, -obs) %>% 
  separate(., measure, into = c('phon', 'measure')) %>% 
  spread(., measure, val) %>% 
  filter(., phon == 's') %>% 
  ggplot(., aes(cog, skewness)) + 
  geom_point()
