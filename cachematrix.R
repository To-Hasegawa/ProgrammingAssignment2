## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#function1

#In this function, cerates a special matrix that cache the inverse of matrix.
#So this function implement followings,
#1. set the value of the matrix
#2. get the value of the matrix
#3. set the value of the inverse
#4. get the value of the inverse

makeCacheMatrix <- function(m=matrix()){
  #set  matrix
  i <- NULL
  
  #1. set the value of the matrix
  set <- function(matrix){
    m <<- matrix
    i <<-NULL
  }
  
  #2. get the value of the matrix
  get <- function()m
  
  #3. set the value of the inverse
  set_inverse <- function(inverse){
    i <<- inverse
  }
  
  #4. get the value of the inverse
  get_inverse <- function()i
  
  #return the list.
  list(set=set, get=get, set_inverse=set_inverse, get_inverse=get_inverse)
}


#function2
#In this function, compute inverse of a special matrix returned by makeCacheMatrix.
#If the inverse has already been calculated, then the cachesolve should be retrieve the inverse from the cache.
cacheSolve <- function(x, ...){
  #return inverse matrix or retrieve cachesolve if already finish calculate
  m <- x$get_inverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  
  #get matrix
  data <- x$get()
  
  #calculate inverse of matrix
  m <- solve(data)
  
  #set inverse to the object
  x$set_inverse
  
  #return inversed matrix!
  m
}

#check function
test1 <-makeCacheMatrix(matrix(1:4, 2,2))
test1$get()
cacheSolve(test1)

