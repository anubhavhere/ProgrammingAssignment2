## Put comments here that give an overall description of what your
## functions do

## makecachematrix  function stores the matrix object which can store its inverse throgh a list of functions

makeCacheMatrix <- function(x = matrix()) {
matinv<-NULL
set<-function(y){
    x<<-y
    matinv<-NULL}

get<-function() x
setinv<-function(inv) matinv<-inv
getinv<-function() matinv
list(set=set,get=get,setinv=setinv,getinv=getinv)
}


## It returns the inverse of the cache of the matrix if the cache is 0 then it calculates the inverse of the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         matinv<-x$getinv()
  if(!is.null(matinv)){
    message("getting cached data")
    return(matinv)
  }
  data<-x$get()
  inverse<-solve(data)
  x$setinv(inverse)
  inverse
}
