library(dslabs)
library(tidyverse)
data(murders)

#murders %>% ggplot()
#p <- ggplot(data = murders)
#p
#print(p)
#p + geom_point(aes(population/10^6, total))

#p + geom_point(aes(population/10^6, total),size=3) +
 # geom_text(aes(population/10^6, total, label = abb),nudge_x=1)

p<- murders %>% ggplot(aes(population/10^6, total, label = abb)) + geom_point(aes(col=region), size=3) + geom_text(nudge_x = .2)+ scale_x_log10()   + scale_y_log10()+  xlab("Population in millions(log scale)") + ylab("Murder count") +  ggtitle("US Gun Murders in 2010")

p

