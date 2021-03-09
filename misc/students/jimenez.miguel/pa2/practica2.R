library(ggplot2)
library(tidyverse)
library(languageR)

ggplot(beginningReaders, aes (x = ReadingScore, y = ProportionOfErrors)) +
  geom_point(aes(col=ReadingScore), size = 1) 


library(ggplot2)
library(tidyverse)
library(languageR)

ggplot(beginningReaders, aes (x = ReadingScore, y = ProportionOfErrors)) +
  geom_point(aes(col=ReadingScore), size = 1) 

#Plot with Statsummary
ggplot(beginningReaders, aes (x = ReadingScore, y = ProportionOfErrors)) +
  geom_point(aes(col=ReadingScore), size = 1) 

?dative
