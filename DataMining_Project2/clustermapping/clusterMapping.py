from scipy.spatial import distance
from scipy import spatial
import pandas as pd
import math
a1=[1,2,4]
a2=a1
a3=a1
b1=[5,7,89]
b2=b1
b3=b1
a=[a1, a2, a3]
b=[b2, b1, b3]
#print(distance.jaccard(a,b))
#df3=pd.read_parquet("2008_june_groupBYSTN.parquet")
#print(df3.columns)
def cosine_similarity(a, b):
    return sum([i*j for i,j in zip(a, b)])/(math.sqrt(sum([i*i for i in a]))* math.sqrt(sum([i*i for i in b])))

cluster_centroids_2008_wrt_2009= [[60.26868,10.059051,5349.8609,86.47024],[9999.90000,154.055238,9999.9000,83.21596],[8014.00033,802.322000,8200.6583,84.23233],
  [67.80148,8.414329,5496.4384,83.87539],[66.42627,72.400648,9999.9000,84.40404],[53.19715,10.867835,914.7547,82.74285],
  [69.53723,10.008988,5658.3250,84.63620],[67.76152,10.086667,1030.9938,84.92658],[ 54.98337,10.835082,5458.1838,86.05543]]


cluster_centroids_2009_wrt_2008=[[9862.01968, 368.859398, 9875.0539 ,82.25651],[70.77386,8.807500,1006.7076,84.24231],[66.23525,7.452902,988.0019,83.94398],
[66.15000,7.601111,1381.5300,82.67540],[62.00089,8.013417,943.8092,82.25806],[69.40833,7.615000,5495.4187,84.63988],
[53.31486,9.052169,891.4798,78.88739],[66.53726,12.899515,9999.9000,83.31179],[62.86556,8.429444,5486.7772,85.44751]]

clus_2008_wrt_2009_mappings={}
clus_2008_wrt_2009_mappings2={}
jaccard_minus_1=-1000000000000000000000
cluster_minus_1=-1000000000000000000000

def unoccupied(j):
    for k in clus_2008_wrt_2009_mappings.values():
        if(j==k[1]):
            return False
    return True



for i in range(len(cluster_centroids_2008_wrt_2009)):
    l1=[]
    clus_2008_wrt_2009_mappings[i]=[jaccard_minus_1,cluster_minus_1]
    for j in range(len(cluster_centroids_2009_wrt_2008)):
        #print("j is ",j ," val is ",cluster_centroids_2009_wrt_2008[j])
        #print("compared vectors are ",cluster_centroids_2008_wrt_2009[i],"    ", cluster_centroids_2009_wrt_2008[j])
        print("Current dict are ",clus_2008_wrt_2009_mappings)
        j1=cosine_similarity(cluster_centroids_2008_wrt_2009[i], cluster_centroids_2009_wrt_2008[j])
        l1.append(j1)
        #print("jaccard value is ",j1)
        if(j1 > clus_2008_wrt_2009_mappings[i][0]):
            print("iniside if")
            if(unoccupied(j)):
                clus_2008_wrt_2009_mappings[i][0]=j1
                clus_2008_wrt_2009_mappings[i][1]=j
    clus_2008_wrt_2009_mappings2[i]=l1

print(clus_2008_wrt_2009_mappings)
print(clus_2008_wrt_2009_mappings2)


print("jaccard issssssss ",spatial.distance.cosine([70.77386, 8.8075, 1006.7076, 84.24231]   ,   [70.77386, 8.8075, 1006.7076, 84.24231]))






'''Cluster means: clusters_is_euclidean_2009_wrt_2008 set.seed()
        DewP       WDSP       STP     Temp
1 9862.01968 368.859398 9875.0539 82.25651
2   70.77386   8.807500 1006.7076 84.24231
3   66.23525   7.452902  988.0019 83.94398
4   66.15000   7.601111 1381.5300 82.67540
5   62.00089   8.013417  943.8092 82.25806
6   69.40833   7.615000 5495.4187 84.63988
7   53.31486   9.052169  891.4798 78.88739
8   66.53726  12.899515 9999.9000 83.31179
9   62.86556   8.429444 5486.7772 85.44751'''

'''Cluster means:clusters_is_euclidean_2008_wrt_2009
        DewP       WDSP       STP     Temp
1   60.26868  10.059051 5349.8609 86.47024
2 9999.90000 154.055238 9999.9000 83.21596
3 8014.00033 802.322000 8200.6583 84.23233
4   67.80148   8.414329 5496.4384 83.87539
5   66.42627  72.400648 9999.9000 84.40404
6   53.19715  10.867835  914.7547 82.74285
7   69.53723  10.008988 5658.3250 84.63620
8   67.76152  10.086667 1030.9938 84.92658
9   54.98337  10.835082 5458.1838 86.05543'''

