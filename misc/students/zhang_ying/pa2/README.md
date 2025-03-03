---
title: "Programming assignment 2"  
author: "Ying Zhang"  
date: "Last update: 2025-02-17 11:08:25.888599"  
output:  
  html_document:  
    highlight: kate  
    keep_md: yes  
    theme: united
---

``` r
library("languageR")
library("tidyverse")
```


``` r
danish |> 
  ggplot() +
  aes(x = ResidFamSize, y = ResidSemRating)+
  geom_point()+
  ggtitle("the scatterplot - Danish")
```

![](README_files/figure-html/unnamed-chunk-2-1.png)<!-- -->


``` r
dativeSimplified |> 
  ggplot() +
  aes(x = AnimacyOfTheme, y = LengthOfTheme, fill = RealizationOfRec) +
  geom_boxplot() +
  scale_fill_manual(values = c("NP" = "yellow", "PP" = "cyan")) +
  ggtitle("the boxplot - dativeSimplified")
```

![](README_files/figure-html/unnamed-chunk-3-1.png)<!-- -->


``` r
dativeSimplified |> 
  ggplot() +
  aes(x = AnimacyOfTheme, y = LengthOfTheme, fill = RealizationOfRec) +
  geom_boxplot() +
  ggtitle("the boxplot - dativeSimplified")
```

![](README_files/figure-html/unnamed-chunk-4-1.png)<!-- -->


``` r
english |> 
  ggplot() +
  aes(x = Voice, y = FrequencyInitialDiphone, fill = Voice)+
  geom_boxplot() +
  stat_summary(
    fun.data = mean_sdl) +
  facet_wrap(~Frication) +
   ggtitle("English")
```

![](README_files/figure-html/unnamed-chunk-5-1.png)<!-- -->

