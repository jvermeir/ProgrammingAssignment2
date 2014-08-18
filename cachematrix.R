## cache the inverse of a matrix.

## Create matrix extended with operations to get and set its value

makeCacheMatrix <- function(x = matrix()) {

}


## solve the matrix. If it's in the cache, return that version.
## otherwise calculate the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  solve(x)
}
