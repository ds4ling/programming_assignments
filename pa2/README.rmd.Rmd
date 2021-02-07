---
title: "Programming assignment 2"
author: "Kaylee Fernandez"
date: "Last update:2021-02-04 09:39:43"
output: github_document
github_document:
highlight: kate
keep_md: yes
theme: united
---
```{r}
library(tidyverse)
library(languageR)
ggplot(data = beginningReaders) + geom_point(mapping = aes(x = OrthLength, y = ProportionOfErrors), color = "hot pink") + xlab("Orthographic Length") + ylab("Proportion of Errors") + ggtitle("Scatterplot of the distribution of orthographic length\nand proportion of errors")
ggplot(data = english, aes(x = WrittenFrequency, y = LengthInLetters, fill = WordCategory)) + geom_boxplot() + xlab("Written Frequency") + ylab("Length In Letters") + ggtitle("Boxplot of the distribution of written frequency\nand length in letters by word category") + scale_fill_brewer(palette="BuPu")
ggplot(data = danish) + stat_summary(mapping = aes(x = ResidFamSize, y = LogWordFreq), fun.min = min, fun.max = max, fun = median) + geom_point(data = danish, aes(x = ResidFamSize, y = LogWordFreq), alpha = .1, color = "hot pink") + facet_wrap(~ Sex, nrow = 1)  + xlab("Residualized Morphological Family Size") + ylab("Log Transformed Affix Frequency") + ggtitle("Residualized morphological family size\nand log transformed affix frequency by sex")
```



```{r setup, include=FALSE}
knitr::opts_chunk$set(eval = FALSE, include = FALSE)
ggplot(beginningReaders, aes(x = OrthLength, y = ProportionOfErrors)) +
  geom_point()
```


```{r cars, eval=FALSE, include=FALSE}
summary(cars)
```


```{r pressure, eval=FALSE, include=FALSE}
plot(pressure)
```

