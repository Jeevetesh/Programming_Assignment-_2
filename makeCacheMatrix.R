## Code_1
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL  # Initialize the inverse to NULL
    set <- function(y) {
        x <<- y   # Assign new matrix
        inv <<- NULL  # Reset cached inverse
    }
    get <- function() x  # Retrieve the matrix
    setinverse <- function(inverse) inv <<- inverse  # Set the inverse in cache
    getinverse <- function() inv  # Retrieve the cached inverse
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}
