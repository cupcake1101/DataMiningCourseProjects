set.seed(35)
pam.mod <- kmeans(df2,9) # create five clusters use Kmeans here.  medoid clustering.
v.pred <- as.integer(pam.mod$cluster)
cls.scatt_pearsons <- cls.scatt.data(df2, v.pred, dist="correlation")
cls.scatt_euclidean <- cls.scatt.data(df2, v.pred, dist="euclidean")

intraclust = c("complete","average","centroid")
interclust = c("single", "complete", "average","centroid", "aveToCent", "hausdorff")


diss_matrix <- as.matrix(daisy(df2))
cls.scatt_diss <- cls.scatt.diss.mx(diss_matrix, v.pred)

dunn_correlation <- clv.Dunn(cls.scatt_pearsons, intraclust, interclust)
dunn_euclidean  <- clv.Dunn(cls.scatt_euclidean, intraclust, interclust)

davies_correlation <- clv.Davies.Bouldin(cls.scatt_pearsons, intraclust, interclust)

davies_euclidean  <- clv.Davies.Bouldin(cls.scatt_euclidean , intraclust, interclust)
