## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
# this function allows to set and get a cache matrix and its inverse 
inv<-NULL
  
  set<-function(y){
  # set a cache matrix
    mat<<-y 
    inv<<-NULL
  }
  get <- function() mat # get a cache matrix
  
  setInv=function(mat_inv) inv<<-mat_inv # set the inverse matrix
  getInv=function() inv # get the inverse matrix
  
  list (set=set,get=get,setInv=setInv,getInv=getInv) 

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<-x$getInv() # get the inv matrix 
  
  if(!is.null(inv)){
   # if the inverse matrix exists in cache return it 
    message("getting cache data")
    return (inv)
  }
  
  # otherwise get the matrix and calculate the inverse and return it
  data <-x$get()
  inv<-solve(data)#compute inverse
  x$setInv(inv)
  
  inv
}
