---
title: "Programming assignment 2"
author: "Kaylee Fernandez"
date: "2025-02-15 21:04:28.341142"
output: 
  html_document:
    highlight: kate
    keep_md: yes
    theme: united
---



## datasets


``` r
summary(beginningReaders)
```

```
##        Word         Subject         LogRT           Trial      
##  mus     :  56   S46    : 180   Min.   :5.545   Min.   :  1.0  
##  poes    :  56   S52    : 177   1st Qu.:7.001   1st Qu.:126.0  
##  sok     :  56   S12    : 174   Median :7.329   Median :242.0  
##  oom     :  55   S63    : 174   Mean   :7.318   Mean   :247.8  
##  plein   :  55   S74    : 172   3rd Qu.:7.657   3rd Qu.:370.0  
##  sprookje:  55   S75    : 171   Max.   :8.294   Max.   :567.0  
##  (Other) :7590   (Other):6875                                  
##    OrthLength      LogFrequency   LogFamilySize    ReadingScore  
##  Min.   : 2.000   Min.   :2.079   Min.   :0.000   Min.   :10.00  
##  1st Qu.: 5.000   1st Qu.:3.584   1st Qu.:1.099   1st Qu.:29.00  
##  Median : 6.000   Median :4.143   Median :1.386   Median :46.00  
##  Mean   : 5.769   Mean   :4.218   Mean   :1.504   Mean   :47.61  
##  3rd Qu.: 7.000   3rd Qu.:4.860   3rd Qu.:1.792   3rd Qu.:65.00  
##  Max.   :11.000   Max.   :7.029   Max.   :3.807   Max.   :96.00  
##                                                                  
##  ProportionOfErrors      PC1                PC2                 PC3          
##  Min.   :0.01754    Min.   :-6.74895   Min.   :-3.571122   Min.   :-3.35566  
##  1st Qu.:0.13793    1st Qu.:-0.85291   1st Qu.:-0.461370   1st Qu.:-0.43199  
##  Median :0.19643    Median : 0.20943   Median :-0.009402   Median :-0.00131  
##  Mean   :0.21607    Mean   : 0.04015   Mean   : 0.000145   Mean   :-0.00295  
##  3rd Qu.:0.29825    3rd Qu.: 1.13255   3rd Qu.: 0.462891   3rd Qu.: 0.41571  
##  Max.   :0.49123    Max.   : 3.38085   Max.   : 4.172695   Max.   : 2.97171  
##                                                                              
##       PC4           
##  Min.   :-3.055159  
##  1st Qu.:-0.405996  
##  Median : 0.005431  
##  Mean   : 0.002121  
##  3rd Qu.: 0.412868  
##  Max.   : 2.926385  
## 
```

``` r
str(beginningReaders)
```

```
## 'data.frame':	7923 obs. of  13 variables:
##  $ Word              : Factor w/ 184 levels "avontuur","baden",..: 1 1 1 1 1 1 1 1 1 1 ...
##  $ Subject           : Factor w/ 59 levels "S10","S12","S13",..: 14 25 23 43 34 26 21 28 39 24 ...
##  $ LogRT             : num  7.41 8.07 6.74 7.02 7.17 ...
##  $ Trial             : int  190 298 172 295 74 446 94 415 342 361 ...
##  $ OrthLength        : int  8 8 8 8 8 8 8 8 8 8 ...
##  $ LogFrequency      : num  4.39 4.39 4.39 4.39 4.39 ...
##  $ LogFamilySize     : num  1.61 1.61 1.61 1.61 1.61 ...
##  $ ReadingScore      : int  39 34 61 66 41 23 28 60 87 39 ...
##  $ ProportionOfErrors: num  0.0877 0.0877 0.0877 0.0877 0.0877 ...
##  $ PC1               : num  -0.427 0.883 -1.008 -0.124 -0.489 ...
##  $ PC2               : num  0.179 -0.591 0.374 0.121 -0.958 ...
##  $ PC3               : num  0.09977 -0.9283 -0.00244 0.76438 0.19308 ...
##  $ PC4               : num  0.1031 -1.6583 -0.0156 0.3885 -1.28 ...
```

``` r
summary(danish)
```

```
##     Subject             Word          Affix          LogRT      
##  2s08   : 155   appetitlig:  22   est    : 217   Min.   :6.100  
##  2s02   : 154   baroner   :  22   isk    : 217   1st Qu.:6.643  
##  2s11   : 154   bF8jning  :  22   et     : 216   Median :6.748  
##  2s18   : 154   blokere   :  22   ede    : 215   Mean   :6.770  
##  2s21   : 154   blomster  :  22   hed    : 215   3rd Qu.:6.873  
##  2s10   : 153   bryggeri  :  22   er     : 214   Max.   :7.752  
##  (Other):2402   (Other)   :3194   (Other):2032                  
##       PC1               PC2             PrevError         Rank          
##  Min.   :-6.3661   Min.   :-7.30414   CORRECT:3182   Min.   :-1.689590  
##  1st Qu.:-0.3934   1st Qu.:-0.46991   ERROR  : 144   1st Qu.:-0.882087  
##  Median : 0.1915   Median : 0.01951                  Median :-0.001174  
##  Mean   : 0.0000   Mean   : 0.00000                  Mean   : 0.000000  
##  3rd Qu.: 0.6469   3rd Qu.: 0.48517                  3rd Qu.: 0.850375  
##  Max.   : 2.1024   Max.   : 5.65189                  Max.   : 1.738628  
##                                                                         
##  Sex      ResidSemRating       ResidFamSize        LogWordFreq   
##  F:1972   Min.   :-3.550223   Min.   :-5.284262   Min.   :0.000  
##  M:1354   1st Qu.:-1.065771   1st Qu.:-0.826234   1st Qu.:3.466  
##           Median : 0.282918   Median : 0.065899   Median :4.860  
##           Mean   : 0.004871   Mean   : 0.007872   Mean   :4.898  
##           3rd Qu.: 1.339696   3rd Qu.: 0.919535   3rd Qu.:6.196  
##           Max.   : 2.523988   Max.   : 3.178727   Max.   :9.736  
##                                                                  
##   LogAffixFreq        LogCUP          LogUP        LogCUPtoEnd   
##  Min.   : 9.066   Min.   :5.565   Min.   :5.037   Min.   :0.000  
##  1st Qu.:11.004   1st Qu.:5.994   1st Qu.:5.478   1st Qu.:4.078  
##  Median :12.416   Median :6.129   Median :5.659   Median :4.898  
##  Mean   :12.000   Mean   :6.131   Mean   :5.661   Mean   :4.173  
##  3rd Qu.:13.395   3rd Qu.:6.267   3rd Qu.:5.849   3rd Qu.:5.236  
##  Max.   :14.060   Max.   :6.525   Max.   :6.170   Max.   :5.805  
## 
```

``` r
str(danish)
```

```
## 'data.frame':	3326 obs. of  16 variables:
##  $ Subject       : Factor w/ 22 levels "2s01","2s02",..: 14 17 15 4 6 11 12 21 10 3 ...
##  $ Word          : Factor w/ 156 levels "appetitlig","arkiv",..: 1 1 1 1 1 1 1 1 1 1 ...
##  $ Affix         : Factor w/ 16 levels "bar","ede","en",..: 13 13 13 13 13 13 13 13 13 13 ...
##  $ LogRT         : num  6.45 6.84 6.84 6.83 6.8 ...
##  $ PC1           : num  0.544 1.129 0.655 -1.26 0.167 ...
##  $ PC2           : num  -0.233 -0.486 0.247 -2.433 0.443 ...
##  $ PrevError     : Factor w/ 2 levels "CORRECT","ERROR": 1 1 1 1 1 1 1 1 1 1 ...
##  $ Rank          : num  1.129 -0.838 -0.757 0.85 0.102 ...
##  $ Sex           : Factor w/ 2 levels "F","M": 2 2 2 2 1 2 1 1 2 2 ...
##  $ ResidSemRating: num  -1.23 -1.23 -1.23 -1.23 -1.23 ...
##  $ ResidFamSize  : num  -1.6 -1.6 -1.6 -1.6 -1.6 ...
##  $ LogWordFreq   : num  2.94 2.94 2.94 2.94 2.94 ...
##  $ LogAffixFreq  : num  13.4 13.4 13.4 13.4 13.4 ...
##  $ LogCUP        : num  6.46 6.46 6.46 6.46 6.46 ...
##  $ LogUP         : num  5.32 5.32 5.32 5.32 5.32 ...
##  $ LogCUPtoEnd   : num  4.3 4.3 4.3 4.3 4.3 ...
```

``` r
summary(dativeSimplified)
```

```
##  RealizationOfRec      Verb        AnimacyOfRec   AnimacyOfTheme
##  NP:555           give   :403   animate  :822   animate  :  6   
##  PP:348           sell   :130   inanimate: 81   inanimate:897   
##                   pay    : 66                                   
##                   offer  : 49                                   
##                   send   : 33                                   
##                   cost   : 32                                   
##                   (Other):190                                   
##  LengthOfTheme   
##  Min.   :0.0000  
##  1st Qu.:0.6931  
##  Median :1.6094  
##  Mean   :1.4982  
##  3rd Qu.:2.0794  
##  Max.   :3.6376  
## 
```

``` r
str(dativeSimplified)
```

```
## 'data.frame':	903 obs. of  5 variables:
##  $ RealizationOfRec: Factor w/ 2 levels "NP","PP": 1 1 1 1 1 1 1 1 1 1 ...
##  $ Verb            : Factor w/ 65 levels "accord","allocate",..: 19 23 23 23 36 23 38 9 59 23 ...
##  $ AnimacyOfRec    : Factor w/ 2 levels "animate","inanimate": 1 1 1 1 1 1 1 1 1 1 ...
##  $ AnimacyOfTheme  : Factor w/ 2 levels "animate","inanimate": 2 2 2 2 2 2 2 2 2 2 ...
##  $ LengthOfTheme   : num  2.64 1.1 2.56 1.61 1.1 ...
```

``` r
summary(english)
```

```
##     RTlexdec        RTnaming      Familiarity         Word      AgeSubject  
##  Min.   :6.205   Min.   :6.022   Min.   :1.100   arm    :   4   old  :2284  
##  1st Qu.:6.426   1st Qu.:6.149   1st Qu.:3.000   barge  :   4   young:2284  
##  Median :6.550   Median :6.342   Median :3.700   bark   :   4               
##  Mean   :6.550   Mean   :6.323   Mean   :3.796   bear   :   4               
##  3rd Qu.:6.653   3rd Qu.:6.490   3rd Qu.:4.570   beef   :   4               
##  Max.   :7.188   Max.   :6.696   Max.   :6.970   bind   :   4               
##                                                  (Other):4544               
##  WordCategory WrittenFrequency WrittenSpokenFrequencyRatio   FamilySize    
##  N:2904       Min.   : 0.000   Min.   :-6.55393            Min.   :0.6931  
##  V:1664       1st Qu.: 3.761   1st Qu.:-0.07402            1st Qu.:1.0986  
##               Median : 4.832   Median : 0.68118            Median :1.7918  
##               Mean   : 5.021   Mean   : 0.67763            Mean   :1.8213  
##               3rd Qu.: 6.247   3rd Qu.: 1.44146            3rd Qu.:2.3026  
##               Max.   :11.357   Max.   : 5.63071            Max.   :5.5175  
##                                                                            
##  DerivationalEntropy InflectionalEntropy NumberSimplexSynsets
##  Min.   :0.00000     Min.   :0.0000      Min.   :0.000       
##  1st Qu.:0.03932     1st Qu.:0.7442      1st Qu.:1.099       
##  Median :0.41097     Median :1.0982      Median :1.609       
##  Mean   :0.54089     Mean   :1.1186      Mean   :1.708       
##  3rd Qu.:0.89323     3rd Qu.:1.6325      3rd Qu.:2.197       
##  Max.   :5.20728     Max.   :2.4514      Max.   :4.357       
##                                                              
##  NumberComplexSynsets LengthInLetters     Ncount       MeanBigramFrequency
##  Min.   :0.000        Min.   :2.000   Min.   : 0.000   Min.   : 5.390     
##  1st Qu.:0.000        1st Qu.:4.000   1st Qu.: 2.000   1st Qu.: 8.100     
##  Median :1.386        Median :4.000   Median : 5.000   Median : 8.559     
##  Mean   :1.568        Mean   :4.342   Mean   : 6.266   Mean   : 8.490     
##  3rd Qu.:2.565        3rd Qu.:5.000   3rd Qu.: 9.000   3rd Qu.: 8.973     
##  Max.   :6.111        Max.   :7.000   Max.   :22.000   Max.   :10.283     
##                                                                           
##  FrequencyInitialDiphone    ConspelV        ConspelN         ConphonV    
##  Min.   : 4.143          Min.   : 0.00   Min.   : 0.000   Min.   : 0.00  
##  1st Qu.:11.277          1st Qu.: 6.00   1st Qu.: 4.519   1st Qu.:10.00  
##  Median :12.023          Median :11.00   Median : 5.710   Median :16.00  
##  Mean   :11.963          Mean   :11.71   Mean   : 5.605   Mean   :18.26  
##  3rd Qu.:12.697          3rd Qu.:17.00   3rd Qu.: 6.997   3rd Qu.:24.00  
##  Max.   :14.654          Max.   :32.00   Max.   :10.492   Max.   :66.00  
##                                                                          
##     ConphonN       ConfriendsV     ConfriendsN         ConffV      
##  Min.   : 0.000   Min.   : 0.00   Min.   : 0.000   Min.   :0.0000  
##  1st Qu.: 5.268   1st Qu.: 4.00   1st Qu.: 4.159   1st Qu.:0.0000  
##  Median : 6.340   Median :10.00   Median : 5.487   Median :0.0000  
##  Mean   : 6.318   Mean   :10.42   Mean   : 5.265   Mean   :0.4109  
##  3rd Qu.: 7.491   3rd Qu.:15.00   3rd Qu.: 6.642   3rd Qu.:0.6931  
##  Max.   :10.600   Max.   :31.00   Max.   :10.303   Max.   :3.3322  
##                                                                    
##      ConffN           ConfbV           ConfbN       NounFrequency     
##  Min.   : 0.000   Min.   :0.0000   Min.   : 0.000   Min.   :    0.00  
##  1st Qu.: 0.000   1st Qu.:0.6931   1st Qu.: 0.000   1st Qu.:   28.75  
##  Median : 0.000   Median :1.3863   Median : 4.143   Median :  108.00  
##  Mean   : 1.308   Mean   :1.5570   Mean   : 3.890   Mean   :  600.19  
##  3rd Qu.: 1.386   3rd Qu.:2.5649   3rd Qu.: 6.242   3rd Qu.:  424.75  
##  Max.   :10.347   Max.   :4.1897   Max.   :10.600   Max.   :35351.00  
##                                                                       
##  VerbFrequency      CV       Obstruent       Frication          Voice     
##  Min.   :     0.0   C:4446   cont:1068   burst    :1840   voiced   :2060  
##  1st Qu.:     0.0   V: 122   obst:3500   frication:1660   voiceless:2508  
##  Median :    30.0                        long     :  88                   
##  Mean   :   881.0                        short    : 980                   
##  3rd Qu.:   164.2                                                         
##  Max.   :242066.0                                                         
##                                                                           
##  FrequencyInitialDiphoneWord FrequencyInitialDiphoneSyllable CorrectLexdec  
##  Min.   : 3.091              Min.   : 3.367                  Min.   : 1.00  
##  1st Qu.: 9.557              1st Qu.:10.000                  1st Qu.:27.00  
##  Median :10.517              Median :10.972                  Median :29.00  
##  Mean   :10.359              Mean   :10.789                  Mean   :27.05  
##  3rd Qu.:11.320              3rd Qu.:11.703                  3rd Qu.:30.00  
##  Max.   :13.925              Max.   :13.930                  Max.   :30.00  
## 
```

``` r
str(english)
```

```
## 'data.frame':	4568 obs. of  36 variables:
##  $ RTlexdec                       : num  6.54 6.4 6.3 6.42 6.45 ...
##  $ RTnaming                       : num  6.15 6.25 6.14 6.13 6.2 ...
##  $ Familiarity                    : num  2.37 4.43 5.6 3.87 3.93 3.27 3.73 5.67 3.1 4.43 ...
##  $ Word                           : Factor w/ 2197 levels "ace","act","add",..: 467 2124 1838 1321 1302 1347 434 468 15 1632 ...
##  $ AgeSubject                     : Factor w/ 2 levels "old","young": 2 2 2 2 2 2 2 2 2 2 ...
##  $ WordCategory                   : Factor w/ 2 levels "N","V": 1 1 1 1 1 1 1 1 1 1 ...
##  $ WrittenFrequency               : num  3.91 4.52 6.51 5.02 4.89 ...
##  $ WrittenSpokenFrequencyRatio    : num  1.022 0.35 2.089 -0.526 -1.045 ...
##  $ FamilySize                     : num  1.39 1.39 1.61 1.95 2.2 ...
##  $ DerivationalEntropy            : num  0.141 0.427 0.062 0.43 0.359 ...
##  $ InflectionalEntropy            : num  0.0211 0.942 1.4434 0 1.7539 ...
##  $ NumberSimplexSynsets           : num  0.693 1.099 2.485 1.099 2.485 ...
##  $ NumberComplexSynsets           : num  0 0 1.95 2.64 2.48 ...
##  $ LengthInLetters                : int  3 5 6 4 4 4 4 3 3 5 ...
##  $ Ncount                         : int  8 5 0 8 3 9 6 13 3 3 ...
##  $ MeanBigramFrequency            : num  7.04 9.54 9.88 8.31 7.94 ...
##  $ FrequencyInitialDiphone        : num  12 12.6 13.3 12.1 11.9 ...
##  $ ConspelV                       : int  10 20 10 5 17 19 10 13 1 7 ...
##  $ ConspelN                       : num  3.74 7.87 6.69 6.68 4.76 ...
##  $ ConphonV                       : int  41 38 13 6 17 21 13 7 11 14 ...
##  $ ConphonN                       : num  8.84 9.78 7.04 3.83 4.76 ...
##  $ ConfriendsV                    : int  8 20 10 4 17 19 10 6 0 7 ...
##  $ ConfriendsN                    : num  3.3 7.87 6.69 3.53 4.76 ...
##  $ ConffV                         : num  0.693 0 0 0.693 0 ...
##  $ ConffN                         : num  2.71 0 0 6.63 0 ...
##  $ ConfbV                         : num  3.5 2.94 1.39 1.1 0 ...
##  $ ConfbN                         : num  8.83 9.61 5.82 2.56 0 ...
##  $ NounFrequency                  : int  49 142 565 150 170 125 582 2061 144 522 ...
##  $ VerbFrequency                  : int  0 0 473 0 120 280 110 76 4 86 ...
##  $ CV                             : Factor w/ 2 levels "C","V": 1 1 1 1 1 1 1 1 2 1 ...
##  $ Obstruent                      : Factor w/ 2 levels "cont","obst": 2 2 2 2 2 2 2 2 1 2 ...
##  $ Frication                      : Factor w/ 4 levels "burst","frication",..: 1 2 2 1 1 1 1 1 3 2 ...
##  $ Voice                          : Factor w/ 2 levels "voiced","voiceless": 1 2 2 2 2 2 1 1 1 2 ...
##  $ FrequencyInitialDiphoneWord    : num  10.13 9.05 12.42 10.05 11.8 ...
##  $ FrequencyInitialDiphoneSyllable: num  10.41 9.15 13.13 11 12.16 ...
##  $ CorrectLexdec                  : int  27 30 30 30 26 28 30 28 25 29 ...
```

``` r
summary(spanishFunctionWords)
```

```
##    X14458gll          X14463gll          X14459gll          X14464gll       
##  Min.   :0.000000   Min.   :0.000000   Min.   :0.000000   Min.   :0.000000  
##  1st Qu.:0.000000   1st Qu.:0.000000   1st Qu.:0.001151   1st Qu.:0.001015  
##  Median :0.002331   Median :0.001876   Median :0.003452   Median :0.002030  
##  Mean   :0.008334   Mean   :0.008333   Mean   :0.008333   Mean   :0.008333  
##  3rd Qu.:0.008159   3rd Qu.:0.006567   3rd Qu.:0.008055   3rd Qu.:0.006091  
##  Max.   :0.099068   Max.   :0.120075   Max.   :0.097814   Max.   :0.123858  
##    X14460gll          X14465gll          X14461gll          X14466gll       
##  Min.   :0.000000   Min.   :0.000000   Min.   :0.000000   Min.   :0.000000  
##  1st Qu.:0.000000   1st Qu.:0.000667   1st Qu.:0.000617   1st Qu.:0.000649  
##  Median :0.001219   Median :0.002000   Median :0.002158   Median :0.001947  
##  Mean   :0.008333   Mean   :0.008333   Mean   :0.008333   Mean   :0.008333  
##  3rd Qu.:0.006246   3rd Qu.:0.006000   3rd Qu.:0.006319   3rd Qu.:0.005353  
##  Max.   :0.146252   Max.   :0.113333   Max.   :0.131936   Max.   :0.085659  
##    X14462gll          X14472gll          X14467gll          X14473gll       
##  Min.   :0.000000   Min.   :0.000000   Min.   :0.000000   Min.   :0.000000  
##  1st Qu.:0.001157   1st Qu.:0.000659   1st Qu.:0.000649   1st Qu.:0.001247  
##  Median :0.002313   Median :0.001978   Median :0.002270   Median :0.003117  
##  Mean   :0.008333   Mean   :0.008333   Mean   :0.008334   Mean   :0.008333  
##  3rd Qu.:0.008097   3rd Qu.:0.006757   3rd Qu.:0.004540   3rd Qu.:0.007481  
##  Max.   :0.090226   Max.   :0.096902   Max.   :0.129702   Max.   :0.086035  
##    X14474gll          X14475gll          X14476gll       
##  Min.   :0.000000   Min.   :0.000000   Min.   :0.000000  
##  1st Qu.:0.001363   1st Qu.:0.000679   1st Qu.:0.000642  
##  Median :0.002045   Median :0.002038   Median :0.002569  
##  Mean   :0.008333   Mean   :0.008333   Mean   :0.008333  
##  3rd Qu.:0.006135   3rd Qu.:0.005435   3rd Qu.:0.005138  
##  Max.   :0.124744   Max.   :0.129755   Max.   :0.116249
```

``` r
str(spanishFunctionWords)
```

```
## 'data.frame':	120 obs. of  15 variables:
##  $ X14458gll: num  0.00816 0.00233 0.00233 0.00699 0.0035 ...
##  $ X14463gll: num  0.000938 0.00469 0.001876 0.016886 0 ...
##  $ X14459gll: num  0 0.0023 0.0023 0.02186 0.00345 ...
##  $ X14464gll: num  0.00102 0.00203 0.00203 0.01421 0.00203 ...
##  $ X14460gll: num  0.000609 0 0.007922 0.013406 0.000609 ...
##  $ X14465gll: num  0.000667 0.002 0.002667 0.016 0.001333 ...
##  $ X14461gll: num  0.000617 0.004316 0.003083 0.021578 0.003083 ...
##  $ X14466gll: num  0.002596 0.000649 0.002596 0.013628 0.001947 ...
##  $ X14462gll: num  0.00347 0.000578 0.002313 0.009832 0.000578 ...
##  $ X14472gll: num  0.000659 0.003955 0.003296 0.015821 0.000659 ...
##  $ X14467gll: num  0.00259 0.00259 0.00195 0.01816 0 ...
##  $ X14473gll: num  0.00499 0.00187 0.00187 0.0106 0.00312 ...
##  $ X14474gll: num  0.002045 0.001363 0.000682 0.019087 0.002727 ...
##  $ X14475gll: num  0.000679 0.002038 0.003397 0.012908 0.000679 ...
##  $ X14476gll: num  0 0.00321 0.00321 0.01798 0.00193 ...
```

# beginningReaders dataset

<img src="README_files/figure-html/Proportion of errors by log frequency-1.png" width="100%" />

# english dataset

<img src="README_files/figure-html/RT naming by age of subject (young vs. old)-1.png" width="100%" />


# danish dataset

<img src="README_files/figure-html/Log RT (correct vs. incorrect) in males vs females-1.png" width="100%" />

