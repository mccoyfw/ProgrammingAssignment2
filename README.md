###This is how to test the program

####Load up the source R Script
####Make sure to put the source file in the appropriate directory
source('~/programmingassignment2.R')

####assign the makecacheMatrix to a variable
b <- makeCacheMatrix();

####print a summary of the matrix to make sure things are in order.
summary(b);

####Create the matrix
b$setMatrix(matrix(1:4, 2, 2));

####Print the matrix
b$getMatrix();

####Solve the matrix for the first time. It should say "Adding New Matrix Data to Cache"
cacheSolve(b)

####Solve the matrix again. It should say "Getting Matrix Data from Cache"
cacheSolve(b)