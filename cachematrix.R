## Put comments here that give an overall description of what your
## functions do

# 1 - source this file in R studio
# 2 - call makeCacheMatrix and assign to a variable
# 3 - call variable$get() to display matrix as set by makeCacheMatrix in #2
# 4 - call cacheSolve with variable from #2 as argument to get and cache matrix inverse

## Write a short comment describing this function

## this function
# declares a function named set where inverse will be cached
# support the cacheSolve function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(bar)
  {
    x <<- bar
    inverse <<- NULL
  }
  # get value of the inverse
  get <- function() x
  setinverse <- function(solve) inverse <<- solve
  getinverse <- function() inverse
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## Write a short comment describing this function

## this function
# returns the inverse matrix of x if it exists
# otherwise calculates and returns the inverse matrix of x

cacheSolve <- function(x, ...)
{
  inverse <- x$getinverse()
  if(!is.null(inverse))
  {
    message("getting cached data")
    return(inverse)
  }
  data<- x$get()
  foo <- solve(data, ...)
  x$setinverse(foo)
  foo  
}

