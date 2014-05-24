makeCacheMatrix <- function(x = numeric()) {
    m <- NULL
    set <- function(y) {
        x <<- y     # set new values for x, and make solution zero again
        m <<- NULL 
    }
    get <- function() x                             # retrieve cached value of x
    setsolve <- function(solve) m <<- solve         # set the solution in cache
    getsolve <- function() m                        # get the solution of the inverse from cache
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)                       # assign cached matrix to a list and output
}