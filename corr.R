corr <- function(directory, threshold = 0) {
    source("complete.R")
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'threshold' is a numeric vector of length 1 indicating the
    ## number of completely observed observations (on all
    ## variables) required to compute the correlation between
    ## nitrate and sulfate; the default is 0
    
    ## Return a numeric vector of correlations
    dat <- c()
    #valori
    dire<-list.files(directory)
    id=1:length(dire)
    for(i in id){
        file<-paste(directory,dire[i],sep="/")
        grezzo<-read.csv(file)
        if(complete(directory,i)[,2]>threshold){
        valori<-c(cor(grezzo[,c("sulfate","nitrate")],use="pairwise.complete.obs")[[1,2]])
        dat <- append(dat, valori)
        }
    }
    dat
}
