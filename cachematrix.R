## Put comments here that give an overall description of what your
## functions do

## function to pecial "matrix" object

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setmean <- function(solve) s <<- solve
  getmean <- function() s
  list(set = set, get = get,
       setmean = setsolve,
       getmean = getsolve)
}


## function tocompute the inverse of the special "matrix" 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  s <- x$getsolve()
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
}
