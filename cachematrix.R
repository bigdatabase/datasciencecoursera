<<<<<<< HEAD
## The following two functions are used to calculate the inverse of a matrix, if
## the matrix has been calculated before, the inverse of this matrix will be 
## returned with the cached data instead of calculate again.


### The first function, makeCacheMatrix creates a special "vector", which is a
### list containing a function to

    ### set the value of the vector
    ### get the value of the vector
    ### set the value of the inverse of the matrix
    ### get the value of the inverse of the matrix


makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        
        get <- function() {
                x
        }
        
        setsolve <- function(sol) {
                m <<- sol
        }
        
        getsolve <- function() {
                m
        }
        
        list (set = set, get = get,
              setsolve = setsolve,
              getsolve = getsolve)
=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
>>>>>>> origin/master

}


<<<<<<< HEAD

### The following function cacheSolve calculates the inverse of the special
### "vector" created with the above function. It first checks if the inverse of
### the matrix has already been calculated. If so, it gets the inverse from the
### cache and skips the computation. Otherwise, it calculates the inverse of the
### matrix and sets the inverse matrix in the cache via the setsolve function.



cacheSolve <- function(x, ...) {
        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        
        matrix <- x$get()
        m <- solve(matrix, ...)
        x$setsolve(m)
        return(m)
=======
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
>>>>>>> origin/master
}
