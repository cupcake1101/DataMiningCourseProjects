df_2008_wrt_2009 <- read.table("sorted/df_2008_wrt_2009.csv", sep = "," , header = TRUE)
df2_2008_wrt_2009=data.frame(df_2008_wrt_2009["DewP"],df_2008_wrt_2009["WDSP"],df_2008_wrt_2009["STP"],df_2008_wrt_2009["Temp"])

set.seed(1) #set 1,2 as values.
clusters_is_euclidean_2008_wrt_2009 <- Kmeans(df2_2008_wrt_2009, centers = 9,iter.max = 400, nstart = 10,
                                     method = "euclidean")

clusters_is_correlation_2008_wrt_2009 <- Kmeans(df2_2008_wrt_2009, centers = 9,iter.max = 400, nstart = 10,
                                       method = "correlation")


df_2009_wrt_2008 <- read.table("sorted/df_2009_wrt_2008.csv", sep = "," , header = TRUE)
df2_2009_wrt_2008=data.frame(df_2009_wrt_2008["DewP"],df_2009_wrt_2008["WDSP"],df_2009_wrt_2008["STP"],df_2009_wrt_2008["Temp"])

set.seed(1)
clusters_is_euclidean_2009_wrt_2008 <- Kmeans(df2_2009_wrt_2008, centers = 9,iter.max = 400, nstart = 1,
                                              method = "euclidean")

clusters_is_correlation_2009_wrt_2008 <- Kmeans(df2_2009_wrt_2008, centers = 9,iter.max = 400, nstart = 1,
                                                method = "correlation")

corrected_2009_clus_wrt_2008 = c(1, 1, 6, 3, 6, 1, 6, 6, 1, 3, 3, 3, 3, 6, 1, 3, 3, 6, 3, 6, 3, 6, 6, 3, 3, 1, 3, 3, 3, 3, 6, 3, 3, 6, 6, 3, 1, 3, 6, 1, 6, 1, 3, 6, 6, 3, 3, 6, 3, 6, 3, 1, 3, 6, 3, 6, 6, 6, 6, 6, 4, 6, 6
                                 , 6, 6, 3, 3, 6, 3, 3, 6, 6, 6, 6, 3, 6, 6, 6, 6, 3, 3, 6, 3, 6, 3, 1, 4, 4, 1, 3, 3, 3, 3, 6, 3, 3, 6, 3, 6, 6, 6, 3, 3, 3, 4, 3, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 3, 1, 1, 3,
                                 6, 1, 6, 1, 6, 6, 6, 6, 6, 1, 1, 6, 6, 1, 1, 1, 6, 6, 6, 6, 3, 1, 1, 1, 6, 3, 6, 6, 6, 6, 6, 6, 3, 6)


correct2_2009_clus_wrt_2008= c(1, 1, 6, 5, 5, 1, 5, 5, 1, 5, 5, 5, 5, 5, 6, 5, 5, 5, 5, 5, 5, 6, 5, 5, 5, 1, 5, 5, 5, 5, 5, 5, 5, 6, 5, 5, 1, 5, 5, 1, 6, 1, 5, 5, 6, 5, 5, 6, 5, 5, 5, 1, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5
             , 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 4, 4, 1, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 1, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 5, 1, 1, 5,
             6, 1, 6, 1, 6, 6, 6, 6, 6, 1, 1, 6, 6, 6, 1, 1, 5, 6, 6, 5, 5, 1, 1, 1, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5)

library('clusteval')
jaccard_val = cluster_similarity(clusters_is_correlation_2008_wrt_2009$cluster
                                      , clusters_is_correlation_2009_wrt_2008$cluster, similarity="jaccard", method="independence")

newV <- as.vector(df2_2009_wrt_2008["DewP"][,1])
plot(x= clusters_is_euclidean_2009_wrt_2008$cluster,y= newV, ylim=(0,200) )

