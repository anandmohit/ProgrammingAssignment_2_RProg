## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  cache<-NULL
  set <- function(y){
    x <<- y
    cache <<- NULL
  }
  get <- function() x
  setinv <- function (inverse) cache <<-inverse
  getinv <- function () cache
  
  list(set = set, get = get,
      setinv = setinv, getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv
  if (!is.null(inv)){
    message ("gettting cached data")
    return inv
  }
  or_mat <- x$get()
  inv <-solve (or_mat, ...)
  x$setinv(inv)
  inv
  
}
