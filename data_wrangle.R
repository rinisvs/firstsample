library(dplyr)
library(tidyverse)
library(dslabs)


data(murders)
murders<- mutate(murders,rate=total/population*100000)
head(murders)

filter(murders,rate <0.71)
grades <- data.frame(names =c("anu","joji"), exam1 =c("99","98"), exam2 =c("98","99"))
grades

