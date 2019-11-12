install.packages("dplyr")
install.packages("lubridate")
install.packages("ggplot2")
install.packages("amap")
install.packages("reprex")

library("dplyr")
library("lubridate")
library("ggplot2")
library(amap)
library(reprex)

txw <- read.csv("june2009.csv", header = TRUE, sep = ",")

df_2009 <- read.table("june2009.csv", sep = "," , header = TRUE)  #create a dataframe


#df2 <- data.frame(df["Count_STP"],df["Count_WDSP"],df["Count_DewP"])

set.seed(35)
clusters_is_euclidean_2009 <- Kmeans(df2_2009, centers = 9,iter.max = 400, nstart = 10,
                                method = "euclidean")

clusters_is_correlation_2009 <- Kmeans(df2_2009, centers = 9,iter.max = 400, nstart = 10,
                                  method = "correlation")

#Please run it with same seed value.(always run line 25,26,27 together)

#nstart is the random number generator

install.packages("cluster")
library(cluster)
install.packages("fpc")
library(fpc)
plotcluster(df2, clusters_is$cluster)

clusplot(df2, clusters_is$cluster,  color=T, shade=F,labels=0,lines=0, main='k-Means Cluster Analysis')

plot(df2,col=clusters_is$cluster)
points(clusters_is$center,col=1:2,pch=8,cex=1)

table(df2$df.Count_STP,clusters_is$cluster)

library(factoextra)
fviz_cluster(clusters_is_correlation, df2, ellipse.type = "norm")


plot(df2,col=clusters_is$cluster)

#df3 <- data.frame(df$Count_STP,df$Count_WDSP,df$Count_DewP)



df2_2009 <- data.frame(df_2009["STN"],df_2009["DewP"],df_2009["WDSP"],df_2009["STP"]
                  ,df_2009["Temp"])


#df2 <- data.frame(df["DewP"],df["WDSP"],df["STP"],df["Temp"])


#df["SLP"],df["Gust"]

library('clv')
library('clusteval')
jaccard_val_euclidean_2009_2010 = cluster_similarity(clusters_is_euclidean_2010$cluster
                                 , clusters_is_euclidean_2009$cluster, 
                                 similarity="jaccard", method="independence")
#run lines 61,62 together

library(FactoMineR)
cah <- kmeans(clusters_is_correlation$centers, graph=FALSE)

plot(df2,clusters_is_correlation,)



library(cluster)
clusplot(df2, clusters_is_correlation$cluster, color=TRUE,
         labels=2, lines=0)

# Centroid Plot against 1st 2 discriminant functions
library(fpc)
plotcluster(df2, clusters_is_correlation$cluster)
#works well 

clusplot(as.matrix(clusters_is_correlation$cluster))

plot(df2, data = NULL, class = NULL, size = 2,
     legend.position = c("right", "bottom", "left", "top", "none"),
     title = "K-Means Results")

clusplot(df2, clusters_is_correlation$cluster, main='2D representation of the Cluster solution',
         color=TRUE, shade=TRUE,
         labels=2, lines=0)

plotcluster(df2, clusters_is_correlation$cluster)