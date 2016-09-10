## Below function helps to create a object that stores the matrix and cache's its inverse respectively.
## MakeCacheMatrix  helps to create a vector where it creates a list of functions that can  set the value of the matrix and get the value of the matrix and set the inverse and get the inverse of the matrix.

## The below function creates a object that cache's its inverse

makeCacheMatrix <- function(x = matrix()) {
matinv<-NULL
set<-function(y){
    x<<-y
    matinv<-NULL}

get<-function() x
setinv<-function(inverse) matinv<-inverse
getinv<-function() matinv
list(set=set,get=get,setinv=setinv,getinv=getinv)
}


## It returns the inverse of the special  object matrix if the vector has already the value it returns the cache other wise it calculates the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
matinv <- x$getinv()
if(!is.null(matinv)) {
message("getting cached data")
return(inv)
}
data <- x$get()
inv <- solve(data, ...)
x$setinv(inv)
inv

}
