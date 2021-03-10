library(ggplot2)
library(hrbrthemes)

read.table("birdsandmonogyna.txt",header=T)
birdab=read.table("birdsandmonogyna.txt",header=T)
attach(birdab)
abundancemonogyna<-ggplot(aes(y=abundance,x=Cmonogyna,color=sp),data=birdab)+geom_boxplot()+geom_jitter(width = 0.15,alpha=0.5)+ylab("Crataegus monogyna Abundance")+xlab("Bird Species Abundance")+theme(legend.position = "right")+coord_flip()
abundancemonogyna

abundancemonogyna2<-ggplot(aes(y=abundance,x=Cmonogyna,fill=sp),data=birdab)+geom_boxplot()+geom_jitter(width = 0.15,alpha=0.5)+ylab("Crataegus monogyna Abundance")+xlab("Bird Species Abundance")+theme(legend.position = "right")+coord_flip()
abundancemonogyna2

read.table("birdsandaquifolium.txt",header=T)
birdab2=read.table("birdsandaquifolium.txt",header=T)
attach(birdab2)

abundanceaquifolium<-ggplot(aes(y=abundance,x=Iaquifolium,color=sp),data=birdab2)+geom_boxplot()+geom_jitter(width = 0.15,alpha=0.5)+ylab("Ilex aquifolium Abundance")+xlab("Bird Species Abundance")+theme(legend.position = "right")+coord_flip()
abundanceaquifolium

abundanceaquifolium2<-ggplot(aes(y=abundance,x=Iaquifolium,fill=sp),data=birdab2)+geom_boxplot()+geom_jitter(width = 0.15,alpha=0.5)+ylab("Ilex aquifolium Abundance")+xlab("Bird Species Abundance")+theme(legend.position = "right")+coord_flip()
abundanceaquifolium2