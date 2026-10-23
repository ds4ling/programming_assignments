library("tidyverse")

set.seed(1)

cog <- c(sort(rnorm(50, 5500, 1000)), 
         sort(rnorm(50, 4000, 800)))

skewness <- 1 + ((cog / 1000) * 0.5) + rnorm(100, 0, 0.2)

fricatives <- tibble(
  obs = rep(1:50, times = 2),
  phon = rep(c("s", "sh"), each = 50)
  ) |> 
  mutate(cog = cog, skewness = skewness) |> 
  pivot_longer(
    cols = -c("obs", "phon"), 
    names_to = "measure", 
    values_to = "val"
  ) |> 
  unite(measure, phon, measure) |> 
  pivot_wider(names_from = "measure", values_from = "val")

write_csv(fricatives, "fricatives.csv")


fricatives %>% 
  gather(., measure, val, -obs) %>% 
  separate(., measure, into = c('phon', 'measure')) |> 
  group_by(measure) |> 
  mutate(std = (val - mean(val)) / sd(val)) |> 
  ggplot() + 
  aes(x = phon, y = std, fill = measure) + 
  geom_boxplot()

# answer
fricatives %>% 
  gather(., measure, val, -obs) %>% 
  separate(., measure, into = c('phon', 'measure')) %>% 
  spread(., measure, val) %>% 
  filter(., phon == 's') %>% 
  ggplot(., aes(cog, skewness)) + 
  geom_point()
