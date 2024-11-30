## Code_2
cacheSolve <- function(x, ...) {
    inv <- x$getinverse()  # Get cached inverse
    if(!is.null(inv)) {
        message("getting cached data")  # Notify that cached data is being used
        return(inv)
    }
    data <- x$get()  # Retrieve the matrix
    inv <- solve(data, ...)  # Compute the inverse
    x$setinverse(inv)  # Cache the computed inverse
    inv
}
# Create a special "matrix" object
mat <- makeCacheMatrix(matrix(c(1, 2, 3, 4), 2, 2))
# Compute the inverse (and cache it)
cacheSolve(mat)
# Retrieve the cached inverse
cacheSolve(mat)
