install.packages("data.table")
library(data.table)

# get data
#data("mtcars")

# transpose
df3 <- transpose(df2)

# get row and colnames in order
colnames(df3) <- rownames(df2)
rownames(df3) <- colnames(df2)
