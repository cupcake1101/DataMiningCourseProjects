df_2008_wrt_2010 <- read.table("sorted/df_2008_wrt_2010.csv", sep = "," , header = TRUE)
df2_2008_wrt_2010=data.frame(df_2008_wrt_2010["DewP"],df_2008_wrt_2010["WDSP"],df_2008_wrt_2010["STP"],df_2008_wrt_2010["Temp"])

set.seed(26) #25,26
clusters_is_euclidean_2008_wrt_2010 <- Kmeans(df2_2008_wrt_2010, centers = 9,iter.max = 400, nstart = 2,
                                              method = "euclidean")

clusters_is_correlation_2008_wrt_2010 <- Kmeans(df2_2008_wrt_2010, centers = 9,iter.max = 400, nstart = 2,
                                                method = "correlation")


df_2010_wrt_2008 <- read.table("sorted/df_2010_wrt_2008.csv", sep = "," , header = TRUE)
df2_2010_wrt_2008=data.frame(df_2010_wrt_2008["DewP"],df_2010_wrt_2008["WDSP"],df_2010_wrt_2008["STP"],df_2010_wrt_2008["Temp"])

set.seed(26)
clusters_is_euclidean_2010_wrt_2008 <- Kmeans(df2_2010_wrt_2008, centers = 9,iter.max = 400, nstart = 2,
                                              method = "euclidean")

clusters_is_correlation_2010_wrt_2008 <- Kmeans(df2_2010_wrt_2008, centers = 9,iter.max = 400, nstart = 2,
                                                method = "correlation")


library('clusteval')
jaccard_val = cluster_similarity(clusters_is_euclidean_2008_wrt_2010$cluster
                                 , clusters_is_euclidean_2010_wrt_2008$cluster, similarity="jaccard", method="independence")


