add2<-function(x,y){
  x+y
}

above10<-function(x){
  use<-x>10
  x[use]
}
above<-function(x,n){
  use<-x>n
  x[use]
}

above<-function(x,n=10){
  use<-x>n
  x[use]
}

columnmean<-function(y, removeNA=TRUE){
  nc<-ncol(y)         #per sapere quante colonne ci sono nella matrice o nel
                      #data frame
  means<-numeric(nc)  #inizializza un vettore lungo quante colonne contiene x
  for(i in 1:nc){
    means[i]<-mean(y[,i], na.rm=removeNA)
  }
  means #l'ultima espressione è quella che la funzione ritorna
}

f<-function(x){
    y<-2
    y^2+g(x)
}
g<-function(x){
    x*y
}
