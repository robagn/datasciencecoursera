complete <- function(directory, id = 1:332) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used
    
    ## Return a data frame of the form:
    ## id nobs
    ## 1  117
    ## 2  1041
    ## ...
    ## where 'id' is the monitor ID number and 'nobs' is the
    ## number of complete cases
    dat <- data.frame(id=numeric(0),nobs=numeric(0),stringsAsFactors=FALSE)
    #valori
    dire<-list.files(directory)
    for(i in id){
        file<-paste(directory,dire[i],sep="/")
        grezzo<-read.csv(file)
        valori<-data.frame(id=grezzo[1,"ID"],nobs=sum(complete.cases(grezzo)))
        dat <- rbind(dat, valori)
        
    }
    dat
}