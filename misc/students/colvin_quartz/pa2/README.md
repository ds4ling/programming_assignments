---
title: "Programming assignment 2"  
author: "Quartz Colvin"  
date: "Last update: 2025-02-14 23:22:16.728494"  
output:  
  html_document:  
    highlight: kate  
    keep_md: yes  
    theme: united
---



``` r
library("tidyverse")
library("languageR")
```

This is a bivariate scatterplot. 

``` r
ggplot(english) +
  aes(x = RTlexdec, y = RTnaming, color = WordCategory) +
  geom_point() +
  geom_smooth() +
  labs(title = "Lexdec and RTnaming by Word Category")
```

<img src="README_files/figure-html/english-1.png" width="100%" />

This is a boxplot with different fill colors. 

``` r
ggplot(danish) + 
  aes(x = PC1, y = PC2, fill = Affix) +
  geom_boxplot() +
  labs(title = "PC1 and PC2 by Affix")
```

<img src="README_files/figure-html/danish-1.png" width="100%" />


This is a boxplot with a summary and facets. 

``` r
ggplot(dativeSimplified) +
  aes(x = AnimacyOfTheme, y = LengthOfTheme) +
  geom_boxplot() +
  stat_summary(fun = mean, fun.min = min, fun.max = max) +
  facet_grid(. ~ RealizationOfRec) +
  labs(title = "Animacy and Length of Themes")
```

<img src="README_files/figure-html/dativeSimplified-summary-1.png" width="100%" />




