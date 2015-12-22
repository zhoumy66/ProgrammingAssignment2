## If the inverse of the matrix have already been calculated, the R program will not repeat the calculation
## but get the result of the inverse of the matrix from cache

## makeCacheMatrix function create a special Matrix that is a list to store the following 4 things: 
## 1. set the value of the matrix 
## 2. get the value of the matrix
## 3. set the inverse matrix
## 4. get the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
        s<-NULL
        set<-function(y){
                x<<-y
                s<<-NULL
                }
        get<-function() x
        setsolve<-function(solve) s<<-solve
        getsolve<-function() s
        list(set=set,get=get,
                setsolve=setsolve,
                getsolve=getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
