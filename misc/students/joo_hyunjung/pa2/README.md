Programming assignment 2
================
Hyunjung Joo
Last update: 2023-02-08

``` r
library("languageR")
library("tidyverse")
```

``` r
danish %>%
  ggplot() +
  aes(x = LogRT, y = LogWordFreq) + 
  geom_point() + 
  labs(x = "Log RT", y = "Log Word Frequency", title = "A scatterplot using Danish dataset") + 
  theme(axis.title=element_text(size=15),
        plot.title=element_text(size=17, face="bold", hjust = 0.5))
```

![](README_files/figure-gfm/a%20bivariate%20scatterplot-1.png)<!-- -->

``` r
dativeSimplified %>%
  ggplot() +
  aes(x = AnimacyOfTheme, y = LengthOfTheme, fill = RealizationOfRec) + 
  geom_boxplot() +
  labs(x = "Animacy of Theme", y = "Length of Theme", title = "A boxplot using DativeSimplified dataset") + 
  theme(axis.title=element_text(size=15),
        axis.text.x = element_text(size=13), 
        axis.text.y = element_text(size=11),
        plot.title=element_text(size=17, face="bold", hjust = 0.5))
```

![](README_files/figure-gfm/a%20boxplot-1.png)<!-- -->

``` r
english %>%
  ggplot() +
  aes(x = Voice, y = FrequencyInitialDiphone, fill = Voice) + 
  facet_grid(.~ WordCategory) + 
  stat_summary(fun.data = mean_se, geom = "pointrange", 
               pch = 21, size = 0.7) +
  labs(x = "Voice", y = "Frequency of Initial Diphone", title = "A plot with pointrange and spread using English dataset",  caption = "Mean +/- SE") + 
  theme(axis.title=element_text(size=14),
        axis.text.x = element_text(size=13), 
        axis.text.y = element_text(size=11),
        strip.text.x = element_text(size=15),
        plot.caption = element_text(size=10),
        plot.title=element_text(size=16, face="bold", hjust = 0.5))
```

![](README_files/figure-gfm/other%20plot-1.png)<!-- -->
