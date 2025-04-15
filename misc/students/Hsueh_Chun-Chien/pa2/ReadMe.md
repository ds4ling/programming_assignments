---
title: "Programming assignment 2"  
author: "ChunChien Hsueh"  
date: "Last update: 2025-02-17 10:08:19.058524"  
output:  
  html_document:  
    highlight: kate  
    keep_md: yes  
    theme: united
---


``` r
library('languageR')
```

```
## Warning: package 'languageR' was built under R version 4.4.2
```

``` r
library(ggplot2)
```

```
## Warning: package 'ggplot2' was built under R version 4.4.2
```

``` r
#beginningReaders
# 1. Bivariate scatterplot (using beginningReaders)
ggplot(beginningReaders, aes(x = Word, y = LogRT)) +
  geom_point(color = "blue", alpha = 0.6) +
  labs(title = "Bivariate Scatterplot", x = "Word", y = "LogRT") +
  theme_minimal()
```

![](ReadMe_files/figure-html/unnamed-chunk-2-1.png)<!-- -->

``` r
#danish
# 2. Boxplot with different fill colors (using danish)
ggplot(danish, aes(x = Affix, y = LogRT, fill = Affix)) +
  geom_boxplot() +
  labs(title = "Boxplot with Different Fill Colors", x = "Affix", y = "LogRT") +
  theme_minimal()
```

![](ReadMe_files/figure-html/unnamed-chunk-3-1.png)<!-- -->

``` r
#dativeSimplified
# 3. Plot with stat_summary and facet (using dativeSimplified)
ggplot(dativeSimplified, aes(x = Verb, y = LengthOfTheme)) +
  stat_summary(fun = mean, geom = "point", color = "red", size = 3) +
  facet_wrap(~ AnimacyOfRec) +
  labs(title = "Plot with stat_summary and Facet", x = "Verb", y = "LengthOfTheme") +
  theme_minimal()
```

![](ReadMe_files/figure-html/unnamed-chunk-4-1.png)<!-- -->

