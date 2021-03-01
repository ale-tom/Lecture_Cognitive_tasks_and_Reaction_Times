library(cerebroViz)
library(tidyverse)
a<-cerebroEx %>%as.data.frame() %>% select('12 pcw')   %>% as.matrix()

rownames(a)[c(1,2)] = c("CNG",'TL')
a[1] = 0.5
a[2] = -0.5
a = as.matrix(a[1:2,])


cerebroViz(a,timePoint = 1, palette = c("cornflowerblue", "antiquewhite", "coral"),  
           filePrefix = "ACC",clamp =0.1,legend = FALSE,regLabel = TRUE)


rownames(a)[c(1,2)] = c("FL",'CNG')
a[1] = -0.5
a[2] = +0.5
a = as.matrix(a[1:2,])


cerebroViz(a,timePoint = 1, palette = c("cornflowerblue", "antiquewhite", "coral"),  
           filePrefix = "FL",clamp =0.1,legend = FALSE,regLabel = TRUE)


matrix(c("CB", "THA", "CBC", "MD"), ncol=2 ) -> cnm
