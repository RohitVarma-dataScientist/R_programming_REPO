mat1 = matrix(data = c(1:4),nrow =2,ncol=2) #creating matrix in an organized way
mat1
mat2 = matrix(c(4:7),2,2) #creating matrix in an easy way
mat2
mat3 = matrix(c(4:7),2,2,byrow = TRUE)  #creating matrix by ordering according to row
mat3

mat1sqrt = sqrt(mat1) #finding out SQRT of a matrix of each element
mat1sqrt
mat2sqrt = sqrt(mat2) #finding out SQRT of a matrix of each element
mat2sqrt
mat3sqrt = sqrt(mat3) #finding out SQRT of a matrix of each element
mat3sqrt

mat1^2  #finding out squares of each element in a matrix
mat2^2  #finding out squares of each element in a matrix
mat3^2  #finding out squares of each element in a matrix

mat1 + mat2   #matrix addition

mat1 %*% mat2    #matrix multiplication

3*mat1  #scalar multiplication

t(mat1) #transpose of a matrix
t(mat2) #transpose of a matrix
t(mat3) #transpose of a matrix

vect1 = c(1,2,3,4)  #creating a vector for using in a diagonal matrix
diag(vect1) #diag function for creating a diagonal matrix

diag(mat1)  #if matrix is given as parameter which gives us the diagonal elements in a vector

vect_for_solve = matrix(c(2,1),2,1) #creating a 2*1 matrix
vect_for_solve
solve(mat1,vect_for_solve)  #solving xt=b which is solving system of equations

solve(mat1) #gives the inverse of a matrix

det(mat1) #finds out the determinant of the matrix

eigen(mat1) #gives the eigen values and eigen vectors of the matrix

svd(mat1) #singular value decomposition

cbind(mat1,mat2)  #combine matrices horizontally
rbind(mat1,mat2)  #combine matrices vertically


rectmat1 = matrix(c(1:6),2,3,byrow = TRUE)
rectmat1
rankMatrix(mat1)[1] #gives us the rank of the matrix

