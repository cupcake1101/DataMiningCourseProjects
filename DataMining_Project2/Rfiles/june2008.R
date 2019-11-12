
# install.packages("dplyr")
# install.packages("lubridate")
# install.packages("ggplot2")
# install.packages("amap")
# install.packages("reprex")ooo

library("dplyr")
library("lubridate")
library("ggplot2")
library(amap) #needed for Kmeans API
library(reprex)

txw <- read.csv("june2008.csv", header = TRUE, sep = ",")

df <- read.table("june2008.csv", sep = "," , header = TRUE)  #create a dataframe

df[!is.finite(df)] <- NA
na.omit(df)

df_ma <- read.table("june2008.csv", sep = "," , header = TRUE)

#df2 <- data.frame(df["Count_STP"],df["Count_WDSP"],df["Count_DewP"])

set.seed(1)
clusters_is_euclidean_2008 <- Kmeans(df2, centers = 9,iter.max = 400, nstart = 1,
                      method = "euclidean")

clusters_is_correlation_2008 <- Kmeans(df2, centers = 9,iter.max = 400, nstart = 1,
                        method = "correlation")

#Please run it with same seed value.(always run line 25,26,27 together)

#nstart is the random number generator

install.packages("cluster")
library(cluster)
install.packages("fpc")
library(fpc)
plotcluster(df2, clusters_is$cluster)

clusplot(df2, clusters_is_euclidean_2008$cluster,  color=T, shade=F,labels=0,lines=0, main='k-Means Cluster Analysis')

plot(df2,col=clusters_is$cluster)
points(clusters_is$center,col=1:2,pch=8,cex=1)

table(df2$df.Count_STP,clusters_is$cluster)

library(factoextra)
fviz_cluster(clusters_is_correlation, df2, ellipse.type = "norm")


plot(df2,col=clusters_is_euclidean_2008$cluster)

plot(df2,col=clusters_is_correlation_2008$cluster)

#df3 <- data.frame(df$Count_STP,df$Count_WDSP,df$Count_DewP)

plot(df2)

#df2 <- data.frame(df["STN"],df["DewP"],df["WDSP"],df["STP"],df["Temp"],df["Gust"],df["Visib"])


#df2 <- data.frame(df["DewP"],df["WDSP"],df["STP"],df["MXSDP"])#,df["Temp"])

df2 <- data.frame(df["DewP"],df["WDSP"],df["STP"],df["Temp"])

#df["SLP"],df["Gust"]

library('clv')
library('clusteval')
jaccard_val = cluster_similarity(clusters_is_euclidean_2008$cluster
 , clusters_is_correlation_2008$cluster, similarity="jaccard", method="independence")
#run lines 61,62 together

library(FactoMineR)
cah <- kmeans(clusters_is_correlation$centers, graph=FALSE)

plot(df2,clusters_is_correlation,)



library(cluster)
clusplot(df2, clusters_is_correlation_2008$cluster, color=TRUE,
         labels=2, lines=0)

# Centroid Plot against 1st 2 discriminant functions
library(fpc)
plotcluster(df2, clusters_is_euclidean_2008$cluster)
#works well 

clusplot(as.matrix(clusters_is_correlation_2008$cluster))

plot(df2, data = NULL, class = NULL, size = 2,
     legend.position = c("right", "bottom", "left", "top", "none"),
     title = "K-Means Results")

clusplot(df2, clusters_is_correlation_2008$cluster, main='2D representation of the Cluster solution',
         color=TRUE, shade=TRUE,
         labels=2, lines=0)

plotcluster(df2, clusters_is_correlation$cluster)
