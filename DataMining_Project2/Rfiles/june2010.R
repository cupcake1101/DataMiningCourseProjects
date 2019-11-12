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

txw <- read.csv("june2010.csv", header = TRUE, sep = ",")

df_2010 <- read.table("june2010.csv", sep = "," , header = TRUE)  #create a dataframe


#df2 <- data.frame(df["Count_STP"],df["Count_WDSP"],df["Count_DewP"])
set.seed(6) #5,6
clusters_is_euclidean_2010 <- Kmeans(df2_2010, centers = 9,iter.max = 400, nstart = 10,
                                     method = "euclidean")

clusters_is_correlation_2010 <- Kmeans(df2_2010, centers = 9,iter.max = 400, nstart = 10,
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



#df2_2010 <- data.frame(df_2010["STN"],df_2010["DewP"],df_2010["WDSP"],df_2010["STP"]
 #                      ,df_2010["Temp"],df_2010["Gust"],df_2010["Visib"])


#df2_2010 <- data.frame(df_2010["DewP"],df_2010["WDSP"],df_2010["STP"],df_2010["Temp"])

df2_2010 =data.frame(df["DewP"],df["WDSP"],df["STP"],df["Temp"])


#df["SLP"],df["Gust"]
library("factoextra")
fviz_gap_stat(clusters_is_correlation_2010$clusGap)
fviz_silhouette(clusters_is_correlation_2010) 

plotcluster(df2_2010,clusters_is_correlation_2010$cluster)

plot(df2_2010,col=clusters_is_correlation_2010$cluster)

library('clv')
library('clusteval')
jaccard_val_2010 = cluster_similarity(clusters_is_euclidean_2010$cluster
                                 , clusters_is_correlation_2010$cluster, similarity="jaccard", method="independence")
#run lines 61,62 together

library(FactoMineR)
cah <- kmeans(clusters_is_correlation$centers, graph=FALSE)

plot(df2,clusters_is_correlation,)



library(cluster)
clusplot(df2_2010, clusters_is_correlation$cluster, color=TRUE,
         labels=2, lines=0)

# Centroid Plot against 1st 2 discriminant functions
library(fpc)
plotcluster(df2, clusters_is_correlation$cluster)
#works well 

clusplot(as.matrix(clusters_is_correlation$cluster))

plot(df2, data = NULL, class = NULL, size = 2,
     legend.position = c("right", "bottom", "left", "top", "none"),
     title = "K-Means Results")

clusters_is_euclidean_2010 = kmeans(df_2010,9)
clusplot(df2_2010, clusters_is_euclidean_2010$cluster, main='2D representation of the Cluster solution',
         color=TRUE)

plotcluster(df2, clusters_is_correlation$cluster)