## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
   ## creates a special "matrix" object that can cache its inverse
	inv <- NULL	
	set <- function(y){
		M <<-y
		inv <<- NULL
	}
	get <- function() M
	setinverse <- function(z) inv <<- z
	getinverse <- function() inv
	list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		
	inv <- M$getinverse()
	if(!is.null(inv)){
		message("getting cached data")
		return(inv)
	}
	data <- M$get()
	inv <- solve(data, ...)
	M$setinverse(inv)
	inv
}
