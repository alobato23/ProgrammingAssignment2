## Put comments here that give an overall description of what your
## functions do
#My function finds the inverse of a matrix.

## Write a short comment describing this function.
#We start off with makeCacheMatrix which defines a function with a matrix.
#The CacheSolve function gets the inverse of a MakeCacheMatrix.

makeCacheMatrix <- function(x = matrix()) {
i<-NULL
set<-function(y){
                  x<<-y
                  i<<-NULL
}
get<-function()x
setinverse<-function(inverse)i<<-inverse
getinverse<-function()i
list(set=set,get=get,getinverse=getinverse,setinverse=setinverse)
}

## Write a short comment describing this function.
#This function contains an empty matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
i<-x$getinverse()
if(!is.null(i)){
                message("getting cached data")
                return(i)
                }
data<-x$get()
i<-solve(data)
x$setinverse(i)
i
}
#This function get the inverse of a data "x".
