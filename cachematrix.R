## These functions are submitted as my attempt for Programming Assignment 2
## I have yet to work out how to do this, but this shows
## 1. I know how to submit via Git
## 2. I know what the inverse of a matrix is
## 3. I can think logically
## 4. I don't know much about R and it's wily ways


## x will be the supplied matrix
## y is the cached matrix
## z is the inverse of the cached matrix

## This first function creates a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
        ## matrix is a built in function that will create a matrix.  Syntax is matrix(data, nrow, ncol, byrow, dimnames)
        y <<- x ## stores the matrix as y
        z <<- solve(y) ## set z to be the inverse of y
}

## This second function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## Built in function 'solve' will create the inverse of matrix.  Syntax is solve(matrix)
        
        ##if (identical(x,y) is TRUE) { ## if this matrix is the same as the stored matrix then inverse already exists
        if (x==y) { ## if this matrix is the same as the stored matrix then inverse already exists
                message ("using cached inverse")
                return(z)
        }                      
        else {
                message ("calculating inverse using solve")
                Z <<- solve(x) ## set z to be the inverse of x
                return(z)
        } 
        z
}
