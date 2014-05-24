cacheSolve <- function(x, ...) {
    m <- x$getsolve()               # determine if inverse is already in cache
    if(!is.null(m)) {               # if solution is in cache, say that it is being retrieved and return its value
        message("getting cached data")
        return(m)                   # end function after returning value
    }                               # if soluton not in cache:
    data <- x$get()                 # get the x matrix from cache
    m <- solve(data, ...)           # solve for the inverse of the x matrix
    x$setsolve(m)                   # set the soltuion in cache
    m                               # return the solution as output
}