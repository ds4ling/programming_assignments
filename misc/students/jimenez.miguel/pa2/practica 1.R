
library(tidyverse)
library(languageR)

#grafica con speaker y Verbo en Dative
 
library(ggplot2)
library(tidyverse)
library(languageR) data("dative")
  ggplot(dative, aes (x = Speaker, y = Verb )) +
  geom_point()


  #grafica con speaker y Modality en Dative
  
  library(ggplot2)
  library(tidyverse)
  library(languageR)
  ggplot(dative, aes (x = Speaker, y = Modality )) +
    geom_point()
  
  
  #grafica con SemanticClass y Modality en Dative
  data("dative")
  ggplot(dative, aes (x = Speaker, y = Modality )) +
    geom_point()
  
  #grafica con SemanticClass y Modality en Dative
  data("dative")
  ggplot(dative, aes (x = LengthOfTheme, y = Modality )) +
    geom_point()
  #Grafca con beginningReaders 
  
  ggplot(beginningReaders, aes (x = Subject, y = ProportionOfErrors)) +
    geom_point(aes(col=ReadingScore), size = 3) 

  #grafica con SemanticClass y Modality en Dative
  data("dative")
  ggplot(dative, aes (x = LengthOfTheme, y = Modality )) +
    geom_point() +
  stat_summary(size =3, color = 'grey')
