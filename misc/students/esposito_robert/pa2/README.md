---
title: "Programming assignment 2" 
author: "Robert Esposito" 
date: "Last update: 2023-02-10"
output: 
  html_document:
    highlight: kate 
    keep_md: yes
    theme: "united"
---


```r
## install.packages('languageR')

library('languageR')
library('tidyverse')
```

```
## ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.2 ──
## ✔ ggplot2 3.4.0      ✔ purrr   1.0.1 
## ✔ tibble  3.1.8      ✔ dplyr   1.0.10
## ✔ tidyr   1.2.1      ✔ stringr 1.5.0 
## ✔ readr   2.1.3      ✔ forcats 0.5.2 
## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
## ✖ dplyr::filter() masks stats::filter()
## ✖ dplyr::lag()    masks stats::lag()
```

```r
library('reshape2')
```

```
## 
## Attaching package: 'reshape2'
## 
## The following object is masked from 'package:tidyr':
## 
##     smiths
```



```r
?beginningReaders
?danish
?dativeSimplified
?english
?spanishFunctionWords
?spanishMeta
```


```r
beginningReaders
english
dativeSimplified
danish
spanishFunctionWords
spanishMeta
```


```r
beginningReaders %>%
  ggplot() + 
  aes(x=LogFrequency,y=ProportionOfErrors) +
  geom_point() +
  labs(x="frequency of word",y="proportion of errors",title="Proportion of Errors by Word Frequency")
```

![](README_files/figure-html/plot-1-1.png)<!-- -->


```r
danish %>%
  ggplot() +
  aes(x=Sex,y=LogRT,fill=Sex) +
  geom_boxplot()
```

![](README_files/figure-html/plot-2-1.png)<!-- -->


```r
english %>%
  ggplot() +
  aes(x=Voice,y=RTnaming) +
  geom_violin() +
  facet_grid(~ AgeSubject) +
  stat_summary(fun.y="mean")
```

```
## Warning: The `fun.y` argument of `stat_summary()` is deprecated as of ggplot2 3.3.0.
## ℹ Please use the `fun` argument instead.
```

```
## Warning: Removed 2 rows containing missing values (`geom_segment()`).
## Removed 2 rows containing missing values (`geom_segment()`).
```

![](README_files/figure-html/plot-3-1.png)<!-- -->

