read.table("tachycinetaivm.txt",header=T)
dataviz2=read.table("tachycinetaivm.txt",header=T)
attach(dataviz2)
library(ggplot2)
library(hrbrthemes)
hatchgrowth<-ggplot(aes(y=growthratemass,x=hatchdate,color=Treatment),data=dataviz2)+geom_point(size=3)+xlab("Hatching date (year)")+ylab("Growth rate of mass (g/day)")+theme_ipsum()
hatchgrowth

read.table("tachycinetaivm_pca.txt",header=T)
dataviz2.2=read.table("tachycinetaivm_pca.txt",header=T)
attach(dataviz2.2)
library(FactoMineR)
library(factoextra)
datapca=dataviz2.2[1:142,2:8]
PCA(datapca,scale.unit = F,ncp=5,graph = T)
pca2=PCA(datapca,scale.unit = T,graph = F)
fviz_pca_var(pca2,col.var = "cos2",gradient.cols=c("#00AFBB", "#E7B800", "#FC4E07"),repel = T)
