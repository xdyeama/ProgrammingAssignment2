## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL
  
  set <- function(y){
      x <<- y
      m <<- NULL
  }
  
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get, setinverse = setinverse, getinverse= getinverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    inv <- x$getinverse()    ## Return a matrix that is the inverse of 'x'
    
    if(!is.null(inv)){
        message("Getting cached Data")
        return(inv)
    }
    
    data <- x$get()
    inv <- solve(data, ...)
    x$setinverse(inv)
    inv
}
