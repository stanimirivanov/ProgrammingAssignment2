## Functions that cache the inverse of a matrix

## Defines and returns a list of functions that
## - set the matrix
## - get the matrix
## - set the inverse of the matrix
## - get the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
	
	## Sets a matrix value
    set <- function(y) {
            x <<- y
            i <<- NULL
    }

    ## Gets the matrix
    get <- function() {
    	x
    }

    ## Sets the inverse of the matrix
    setInverse <- function(inverse) {
        i <<- inverse
    }

    ## Gets the inverse of the matrix
    getInverse <- function() {
        i
    }

    list(set = set, 
		get = get,
		setInverse = setInverse,
		getInverse = getInverse)
}

## Compute and return the inverse of the special matrix returned by "makeCacheMatrix". 
## Checks if the inverse has already been calculated.
## In that case it returns the result from the cache
cacheSolve <- function(x, ...) {
	## Return a matrix that is the inverse of 'x'
    i <- x$getinverse()
    
	if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
	
    data <- x$get()
    i <- solve(data, ...)
    x$setinverse(i)
    i
}
