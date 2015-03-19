## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
    m<-NULL #initialises m to NULL
    
  set<-function(y){ 
    x<<-y
    m<<-NULL
  }         
 #function set() is defined inside the function makecachematrix() environment
 #y is assigned to x as defined in function makecachematrix()
  
  get<-function()x
  #returns matrix x
  
  setinverse<-function(inverse){
    m<<-solve(x)
      }
 #assigns inverse of matrix x to m as defined in the function setinverse()
  
  getinverse<-function()m
     #returns m (inverse of matrix x)
  
 list(set=set,get=get,
       setinverse=setinverse,
       getinverse=getinverse) #creates a list of vectors

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
  
  m<-x$setinverse()
  if(!is.null(m)){
      message("getting cached data")
      return(m)
  }
 
} 
#calls inverse from function makecachematrix() and return inverse in function cachesolve()




