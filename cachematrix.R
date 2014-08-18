## cache the inverse of a matrix.
## 
## Usage: 
## m <- matrix(1:4, 2, 2)
## makeCacheMatrix(m)
## mC <- cacheSolve(m) 
## returns m and stores copy
## mC <- cacheSolve(m) 
## returns cached copy

## Create matrix extended with operations to get and set its value

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## solve the matrix. If it's in the cache, return that version.
## otherwise calculate the inverse.

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  } else {
    message("no cached copy")
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
  }
}
