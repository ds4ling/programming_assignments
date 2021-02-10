Programming assignment 2
================
Jiawei Shao
Last updated 2021-02-10 15:59:08

``` r
# A bivariate scatterplot
library(languageR)
library(tidyverse)
```

    ## ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.0 ──

    ## ✓ ggplot2 3.3.3     ✓ purrr   0.3.4
    ## ✓ tibble  3.0.6     ✓ dplyr   1.0.3
    ## ✓ tidyr   1.1.2     ✓ stringr 1.4.0
    ## ✓ readr   1.4.0     ✓ forcats 0.5.1

    ## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

``` r
beginningReaders %>% 
  ggplot() +
    aes(x = LogRT, y = ReadingScore ) + 
      geom_jitter() +
        labs(x = "LogRT", y = "ReadingScore", title = "beginningReaders-ReadingScore as a function of LogRT")
```

![](README_files/figure-gfm/plot%201%20bivariate%20scatterplot-1.png)<!-- -->

``` r
# A boxplot with different fill colors
library(languageR)
library(tidyverse)
  danish %>% 
  ggplot() +
    aes(x = Sex, y = LogRT, fill = Sex ) + 
      geom_boxplot() +
        labs(x = "Sex", y = "LogRT", title = "danish-LogRT as a function of Sex")
```

![](README_files/figure-gfm/plot%202%20boxplot%20with%20different%20fill%20colors-1.png)<!-- -->

``` r
# A plot of your choice that includes a stat_summary and a facet.
library(languageR)
library(tidyverse)
  english %>% 
    ggplot() +
    aes(x = AgeSubject, y = CorrectLexdec, color = AgeSubject) + 
    geom_jitter(alpha = 0.3) +
    stat_summary(fun.data = mean_se, color = "black", geom = "pointrange") +
    facet_grid (WordCategory ~ .)+
    labs(x = "AgeSubject", y = "CorrectLexdec", 
         caption = "Mean +/- SE", title = "english-SE of CorrectLexdec comparison bewteen age groups")
```

![](README_files/figure-gfm/plot%20of%20choice-1.png)<!-- -->
