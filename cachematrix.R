## These functions are submitted as my attempt for Programming Assignment 2
## I have yet to work out how to do this, but this shows
## 1. I know how to submit via Git
## 2. I know what the inverse of a matrix is
## 3. I can think logically
## 4. I don't know much about R and it's wily ways

## x will be the supplied matrix
## y is the cached matrix
## z is the inverse of the cached matrix

## This first function creates a special "matrix" object that can cache its inverse and itself
makeCacheMatrix <- function(x = matrix()) {
        ## matrix is a built in function that will create a matrix.  Syntax is matrix(data, nrow, ncol, byrow, dimnames)
        z <<- solve(x) ## set z to be the inverse of x
        y <<- x ## stores the matrix as y so we know if the new matrix is the same as the old
}

## This second function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## Built in function 'solve' will create the inverse of matrix.  Syntax is solve(matrix)
        
        if (isTRUE(identical(x,y))) { ## if this matrix is the same as the stored matrix then inverse already exists
                                      ## and when I use cacheSolve(makeCacheMatrix(c)) where c is my matrix it will always be the same since it's embedded
                                      ## and so I think I have done something not quite right but haven't solved it yet
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
