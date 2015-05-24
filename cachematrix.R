## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix(,nrow=n)) 
{
  I <- NULL
  
  set <- function(y) 
  {
    x <<- y
    I <<- NULL
  }
  
  get <- function() 
  {
    x
  }

  setsolve <- function(solve) 
  {
    I <<- solve
  }
  
  getsolve <- function() 
  {
    I
  }
  
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) 
{
        ## Return a matrix that is the inverse of 'x'
  
  I <- x$getsolve()
  
  if(!is.null(I)) 
    {
    message("getting cached data")
    return(I)
    }
  
  data <- x$get()
  I <- solve(data, ...)
  x$setsolve(I)
  I
}


#a<- makeCacheMatrix(matrix(c(1,2,3,4,-1,2,0,-1,5),nrow=3))
#newcache<-cacheSolve(a)
#newcache
#a$getsolve()