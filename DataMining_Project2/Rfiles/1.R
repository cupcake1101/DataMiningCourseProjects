library(clv)

# load and prepare data
library(clv)
data(iris)
iris.data <- iris[,1:4]

# cluster data
agnes.mod <- agnes(iris.data) # create cluster tree 
v.pred <- as.integer(cutree(agnes.mod,5)) # "cut" the tree 

intraclust = c("complete","average","centroid")
interclust = c("single", "complete", "average","centroid", "aveToCent", "hausdorff")

# compute Davies-Bouldin indicies (also Dunn indicies)
# 1. optimal solution:

# compute intercluster distances and intracluster diameters
cls.scatt <- cls.scatt.data(iris.data, v.pred, dist="manhattan")

# once computed valuse use in both functions
dunn1 <- clv.Dunn(cluster_is_2, intraclust, interclust)
davies1 <- clv.Davies.Bouldin(cls.scatt, intraclust, interclust)

# 2. functional solution:

# define new Dunn and Davies.Bouldin functions
Dunn <- function(data,clust) 
  clv.Dunn( cls.scatt.data(data,clust),
            intracls = c("complete","average","centroid"), 
            intercls = c("single", "complete", "average","centroid", "aveToCent", "hausdorff")
  )
Davies.Bouldin <- function(data,clust) 
  clv.Davies.Bouldin( cls.scatt.data(data,clust),
                      intracls = c("complete","average","centroid"),
                      intercls = c("single", "complete", "average","centroid", "aveToCent", "hausdorff")
  )

# compute indicies
dunn2 <- Dunn(iris.data, v.pred)
davies2 <- Davies.Bouldin(iris.data, v.pred)