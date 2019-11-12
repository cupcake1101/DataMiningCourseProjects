install.pacakges("dplyr")
install.packages("lubridate")
install.packages("ggplot2")
install.packages("data.table")
install.packages("sqldf")
library(dplyr)
library(lubridate)
library(ggplot2)
library(data.table)
library(sqldf)




txw <- read.csv("C:\\Users\\Dell\\Documents\\R\\datasets\\hourly_2009.csv", header = TRUE, sep = ",")

df <- read.table("C:\\Users\\Dell\\Documents\\R\\datasets\\hourly_2009.csv", sep = "," , header = TRUE)#create a dataframe

length(unique(df$STN))

#nrow(distinct(df,STN))

df2 <- sqldf("SELECT DISTINCT df.STN from df where yearModa_hr like '200906%' ")