#8-10
Wdsp <- as.vector(df2_2008_wrt_2010["WDSP"][,1])
plot(x= clusters_is_euclidean_2008_wrt_2010$cluster,y= Wdsp,ylim=range(0,1000))

Wdsp <- as.vector(df2_2010_wrt_2008["WDSP"][,1])
plot(x= clusters_is_euclidean_2010_wrt_2008$cluster,y= Wdsp,ylim=range(0,1000) )

Wdsp <- as.vector(df2_2008_wrt_2010["WDSP"][,1])
plot(x= clusters_is_correlation_2008_wrt_2010$cluster,y= Wdsp,ylim=range(0,1000))

Wdsp <- as.vector(df2_2010_wrt_2008["WDSP"][,1])
plot(x= clusters_is_correlation_2010_wrt_2008$cluster,y= Wdsp,ylim=range(0,1000))

#8-9

Wdsp <- as.vector(df2_2008_wrt_2009["WDSP"][,1])
plot(x= clusters_is_euclidean_2008_wrt_2009$cluster,y= Wdsp,ylim=range(0,1000))

Wdsp <- as.vector(df2_2009_wrt_2008["WDSP"][,1])
plot(x= clusters_is_euclidean_2009_wrt_2008$cluster,y= Wdsp,ylim=range(0,1000))

Wdsp <- as.vector(df2_2008_wrt_2009["WDSP"][,1])
plot(x= clusters_is_correlation_2008_wrt_2009$cluster,y= Wdsp,ylim=range(0,1000))

Wdsp <- as.vector(df2_2009_wrt_2008["WDSP"][,1])
plot(x= clusters_is_correlation_2009_wrt_2008$cluster,y= Wdsp,ylim=range(0,1000))

#10-9

Wdsp <- as.vector(df2_2010_wrt_2009["WDSP"][,1])
plot(x= clusters_is_euclidean_2010_wrt_2009$cluster,y= Wdsp,ylim=range(0,1000))

Wdsp <- as.vector(df2_2009_wrt_2010["WDSP"][,1])
plot(x= clusters_is_euclidean_2009_wrt_2010$cluster,y= Wdsp,ylim=range(0,1000))

Wdsp <- as.vector(df2_2010_wrt_2009["WDSP"][,1])
plot(x= clusters_is_correlation_2010_wrt_2009$cluster,y= Wdsp,ylim=range(0,1000))

Wdsp <- as.vector(df2_2009_wrt_2010["WDSP"][,1])
plot(x= clusters_is_correlation_2009_wrt_2010$cluster,y= Wdsp,ylim=range(0,1000))

