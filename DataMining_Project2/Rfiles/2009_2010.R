df_2009_wrt_2010 <- read.table("sorted/df_2009_wrt_2010.csv", sep = "," , header = TRUE)
df2_2009_wrt_2010=data.frame(df_2009_wrt_2010["DewP"],df_2009_wrt_2010["WDSP"],df_2009_wrt_2010["STP"],df_2009_wrt_2010["Temp"])

set.seed(1)
clusters_is_euclidean_2009_wrt_2010 <- Kmeans(df2_2009_wrt_2010, centers = 9,iter.max = 400, nstart = 1,
                                              method = "euclidean")

clusters_is_correlation_2009_wrt_2010 <- Kmeans(df2_2009_wrt_2010, centers = 9,iter.max = 400, nstart = 1,
                                                method = "correlation")


df_2010_wrt_2009 <- read.table("sorted/df_2010_wrt_2009.csv", sep = "," , header = TRUE)
df2_2010_wrt_2009=data.frame(df_2010_wrt_2009["DewP"],df_2010_wrt_2009["WDSP"],df_2010_wrt_2009["STP"],df_2010_wrt_2009["Temp"])

set.seed(1)
clusters_is_euclidean_2010_wrt_2009 <- Kmeans(df2_2010_wrt_2009, centers = 9,iter.max = 400, nstart = 1,
                                              method = "euclidean")

clusters_is_correlation_2010_wrt_2009 <- Kmeans(df2_2010_wrt_2009, centers = 9,iter.max = 400, nstart = 1,
                                                method = "correlation")


library('clusteval')
jaccard_val = cluster_similarity(clusters_is_correlation_2009_wrt_2010$cluster
                                 , clusters_is_correlation_2010_wrt_2009$cluster, similarity="jaccard", method="independence")


