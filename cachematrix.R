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


## the following function caculate the inverse of the matrix. But it will first check if the inverse has already been solved. 
## If the inverse has been calculated before, it will get data from the cache; if not, it will calculate the inverse(solve)
##and set the solve value of the cache through setsolve function.

cacheSolve <- function(x, ...) {
        s<-x$getsolve()
	if(！is.null(s)){
		message("get cached data")
		return(s)
		}else{
		data<-x$get()
		s<-solve(data,...)
		x$setsolve(s)
		s
		}
}
