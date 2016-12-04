## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#makeCacheMatrix containts functions that set and get 2 variables namely: cacheinputmatrix and cacheinversematrix
#cacheinputmatrix holds the input matrix and cacheinversematrix holds the inverse matrix
makeCacheMatrix <- function(x = matrix()) {
  cacheinversematrix<<-NULL
  get<-function()
  {
    x
  }
  getinverse<-function()
  {
    cacheinversematrix
  }
  set<-function(m=matrix())
  {
    x<<-m
  }
  setinverse<-function(m=matrix())
  {
    cacheinversematrix<<-m
  }
  list(get=get,set=set,getinverse=getinverse,setinverse=setinverse)
}


## Write a short comment describing this function
##cacheSolve checks if the inverse already exists. If not it calculates.


cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  mi<-x$getinverse()
  if (!is.null(mi))
  {message("inverse is received from makeCacheMatrix")
    return(mi)
  }
  
  data<-x$get()
  mi<-solve(data)
  message("inverse is calculated within CacheSolve")
  x$setinverse(mi)
  mi  
}



