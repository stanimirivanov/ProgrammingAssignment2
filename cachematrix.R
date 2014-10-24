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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
