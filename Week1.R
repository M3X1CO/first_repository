#creating an object x with value 0:10
x <- 0:10
#calling objects class
class(x)
#changing output to numeric
as.numeric(x)
#asking if logical, true/false
as.logical(x)
#changing output to characters
as.character(x)
#creating a list and calling it
x <- list(1, "a", TRUE, 1 + 4i)
x
#creating a matrix, calling it, asking dim and attributes
m <- matrix(nrow = 2, ncol = 3)
m
dim(m)
attributes(m)
#matrix of 1 through 6 in 2 row 3 column
m <- matrix(1:6, nrow = 2, ncol = 3)
m
#simplified matrix 
m <- 1:10
m
dim(m) <- c(2,5)
m
x <- 1:3
y <- 10:12
cbind(x,y)
rbind(x,y)
#factors
x <- factor(c("yes", "yes", "no", "yes", "no"),
#create a baseline level system usually alphabetical order
levels = c("yes", "no"))
x
table(x)
unclass(x)
#data frames
x <- data.frame(foo = 1:4, bar = c(T, T, F, F))
x
nrow(x)
ncol(x)
#creating an object name for easier identification in writing
x <- 1:3
names(x)
names(x) <- c("foo", "bar", "norf")
x
names(x)
#creating a list with named objects
x <- list(a = 1, b = 2, c = 3)
x
#naming matrixices
m <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("c", "d"), c("a", "b"))
m
#principle functions of reading data into R
#read.table, read.scv
#readLines
#source, which is inverse of dump
#dget read r code, inverse of dput
#load read saved workspaces
#unserialize for reading object in binary form from file
#analogous functions for writing data to files
#write.table
#writeLines
#dump
#dput
#save
#serialize
#how to move value of x to binary and store in a file then read binary to output R code
con <- file("myfile.bin", "wb")
serialize(x, connection = con)
close(con)
con <- file("myfile.bin", "rb")
unserialize(con)
close(con)
