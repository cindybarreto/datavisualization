read.table("birdsandseeds.txt",header=T)
birdseed=read.table("birdsandseeds.txt",header=T)
attach(birdseed)
library(ggplot2)
library(hrbrthemes)
dispersal<-ggplot(aes(y=seed,x=density,color=sp),data=birdseed)+geom_boxplot()+xlab("Bird Species Density")+ylab("Seeds Density")+theme_ipsum()
dispersal

dispersal2<-ggplot(aes(y=seed,x=density,fill=sp),data=birdseed)+geom_boxplot()+xlab("Bird Species Density")+ylab("Seeds Density")+theme_ipsum()
dispersal2

dispersal3 <- ggplot(data=birdseed, aes(x=density, y=seed, fill=sp))+geom_violin()
dispersal3

dispersal4<-ggplot(data=birdseed, aes(x=density, group=seed, fill=sp))+geom_density(adjust=1.5)+theme_ipsum()+facet_wrap(~sp)+theme(legend.position="none",anel.spacing = unit(0.1, "lines"),axis.ticks.x=element_blank())
dispersal4

read.table("birdsandseeds12-13.txt",header=T)
birdseed1213=read.table("birdsandseeds12-13.txt",header=T)
attach(birdseed1213)

year1<-ggplot(aes(y=seed,x=density,fill=sp),data=birdseed1213)+geom_boxplot()+xlab("Bird Species Density in 2012-2013")+ylab("Seeds Density")+theme_ipsum()
year1

read.table("birdsandseeds13-14.txt",header=T)
birdseed1314=read.table("birdsandseeds13-14.txt",header=T)
attach(birdseed1314)
year2<-ggplot(aes(y=seed,x=density,fill=sp),data=birdseed1314)+geom_boxplot()+xlab("Bird Species Density in 2012-2013")+ylab("Seeds Density")+theme_ipsum()
year2

library(ggpubr)

ggarrange(year1,year2,labels = c("2012-2013", "2013-2014"),ncol = 1, nrow = 2)
