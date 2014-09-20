## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv<-NULL
  
  set<-function(y){
    mat<<-y 
    inv<<-NULL
  }
  get <- function() mat
  
  setInv=function(mat_inv) inv<<-mat_inv
  getInv=function() inv
  
  list (set=set,get=get,setInv=setInv,getInv=getInv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<-x$getInv()
  
  if(!is.null(inv)){
    message("getting cache data")
    return (inv)
  }
  
  data <-x$get()
  inv<-solve(data)#compute inverse
  x$setInv(inv)
  
  inv
}
