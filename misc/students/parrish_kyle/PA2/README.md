Programming assignment 2
================
Kyle Parrish
Last update: 2021-02-10

``` r
# Load libraries 
library(languageR)
library(tidyverse)
```

    ## -- Attaching packages --------------------------------------- tidyverse 1.3.0 --

    ## v ggplot2 3.3.2     v purrr   0.3.4
    ## v tibble  3.0.4     v dplyr   1.0.2
    ## v tidyr   1.1.2     v stringr 1.4.0
    ## v readr   1.4.0     v forcats 0.5.0

    ## -- Conflicts ------------------------------------------ tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

``` r
# assign dfs to objects to familiarize myself
beginningReaders = beginningReaders
danish = danish
dativeSimplified = dativeSimplified
english = english 
spanishFunctionWords = spanishFunctionWords
```

``` r
#bivariate plot

ggplot(data = beginningReaders, aes(x = LogRT, y = ReadingScore, color = OrthLength)) + geom_point(alpha = .1) + geom_smooth(method = "lm", color = "grey35") + xlab("Reading time") + ylab("Reading Score") + ggtitle("Word familiarity and Written Frequency from English data")
```

    ## `geom_smooth()` using formula 'y ~ x'

![](README_files/figure-gfm/unnamed-chunk-2-1.png)<!-- -->
