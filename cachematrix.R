# See README.md for instructions on running the code and output from it.
# This isn't required for the assignment.
# Matrix inversion is usually a costly computation. This is a function that reduces the computation time involved.

# This creates the initial makeCacheMatrix function
makeCacheMatrix <- function(x = matrix()) {
  
  # If there is nothing cached - hold the Null value
  f <- NULL
  
  # Set and store a matrix
  setMatrix <- function(y) {
    x <<- y
    # Clear the cache now that the matrix has a new value
    f <<- NULL
  }
  # Return the data in the matrix we created
  getMatrix <- function() x
  
  # Create an arguement to store the cache of the inverse
  setInverse <- function(solve) f <<- solve
  
  # Return the data of the inverted matrix
  getInverse <- function() f
  
  # This creates & will return a list of all our function names
  list(setMatrix = setMatrix, getMatrix = getMatrix, 
       setInverse = setInverse, 
       getInverse = getInverse)
  
}

# This will calculate the inverse of the matrix created with makeCacheMatrix
cacheSolve <- function(x, ...) {
  
  # Return the cache value
  f <- x$getInverse()
  
  # Retrives the most recent value for the inverse if it already exists
  if(!is.null(f)){
    message("Getting Matrix Data from Cache")
    return(f)
  }
  
  # If the value of Inverse is NOT null (was previously calculated), cacheSolve returns that value         
  message("Adding New Matrix Data to Cache.")
  
  # Get and store the matrix in a variable
  storeMatrix <- x$getMatrix()
  
  # If the value of Inverse is NULL, then you retrive matrix x and calculate the inverse with the solve() function
  f <- solve(storeMatrix, ...)
  
  # Sets Inverse to the newly calculated value 
  x$setInverse(f)
  
  
  f #Returns the new Inverse value
}
