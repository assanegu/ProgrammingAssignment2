## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function return matrix object that allow the user to cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
      m<-NULL
      set<-function(y){
            x<<-y
            m<<-NULL
      }
      get<-function() x
      setSolve<-function(solve_mx) m<<- solve_mx
      getSolve<-function() m
      list(set=set, get=get,
           setSolve=setSolve,
           getSolve=getSolve)
}

## Write a short comment describing this function
# This function cache the inverse of the matrix 
cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of '
      m<-x$getSolve()
      if(!is.null(m)){
            message("getting cached data")
            return(m)
      }
      matrix<-x$get()
      m<-solve(matrix, ...)
      x$setSolve(m)
      m
}
