# numeric/character variables and vectors (data structure type)

a <- 5
class(a)
length(a)

b <- c(1,2,3,4,5)
class(b)
length(b)

c <- "Hello"
class(c)
length(c)

d <- c("green","red","blue")
class(d)
length(d)

a * 5
a / 2
a^3
a * b

# Matrix (data structure type)

mat1 <- matrix(data=c(1:9), nrow=3, ncol=3, byrow=TRUE, dimnames=list(c("r1","r2","r3"), c("c1","c2","c3")))
mat1
class(mat1)
dim(mat1)
nrow(mat1)
ncol(mat1)
length(mat1)
rownames(mat1)
colnames(mat1)
which(mat1 < 3) 
# Command which parses the matrix column-wise and returns indices 
# of the elements that satisfy the conditional statement
 
# subsetting matrices

mat1[2,1]
mat1["r2","c1"]
mat1[1,]
mat1[,2]
mat1[,"c2"]
mat1[1:2,2:3]

sum(mat1)
mean(mat1)
median(mat1)
rowSums(mat1)
colSums(mat1)
rowMeans(mat1)
colMeans(mat1)

mat1 == 4
which(mat1 == 4)
mat1 > 5
which(mat1 > 5)

# Matrix Operations
mat2 <- mat1 * 2
mat2
mat1 * mat2
mat1 %*% mat2
mat1 + mat2 
mat1 - mat2 
mat2 / mat1

# character matrix
mat3 <- matrix(c("one","two","three","four","five","six"), nrow=2, ncol=3, byrow=FALSE)
mat3
class(mat3)
dim(mat3)
mat3[,3]
which(mat3 == "five")

# Array (data structure type)

z <- array(data=c(1:12), dim=c(2,2,3), dimnames=list(c("r1","r2"), c("c1","c2"), c("m1","m2","m3")))
z
z[,,1]
z[1,,]
z[1,1,]

# List (data structure type)

mylist <- list(a, b, c, d, mat1)
mylist
names(mylist) <- c("item1","item2","item3","item4","item5")
mylist

mylist[["item3"]]
mylist$item3

mylist["item3"]
class(mylist["item3"])
class(mylist[["item3"]])

# Data Frame (data structure type)

name <- c("Bill", "Chris", "Jane", "Terry", "John", "Sarah")
sex <- c("M", "M", "F", "F", "M", "F")
age <- c(20, 17, 21, 17, 21, 20)
math <- c(68, 83, 64, 86, 75, 89)
biology <- c(75, 88, 73, 78, 81, 85)
chemistry <- c(87, 78, 62, 81, 84, 79)
df <- data.frame(name, sex, age, math, biology, chemistry)
df

# subsetting data frames

df[1:2,]
df[,1:2]
df[1:2,1:2]
df[c(1,5),c("name","math","biology")]
df$name[which(df$age < 18)]
df <- cbind(df, "average"=rowMeans(df[, c("math","biology","chemistry")]))

# Factor (data structure type)

fac <- factor(age)
fac
length(fac)
levels(fac)
nlevels(fac)

aggregate(df$average, by=list(df$sex), FUN=mean)
aggregate(df$average, by=list(df$sex, df$age), FUN=mean)

# Function 'apply'

# with standard functions
apply(mat1, MARGIN=1, FUN=max)
apply(mat1, MARGIN=2, FUN=median)
apply(z, MARGIN=c(1,2), FUN=sum)
# with user-defined function
apply(mat1, MARGIN=2, FUN=function(x){x*min(x)})


### Conditional Statements

# if
if(mean(mat1) > 3) print("yes")
if(mean(mat1) > 3) 
	{
	print("mean of mat1 is", quote=FALSE)
	print(mean(mat1))
	}

# if else
if(mean(mat1) > 10) print("yes") else print("no")
ifelse(mean(mat1) > 3, "yes", "no")
ifelse(mean(mat1) > 3, max(mat1), min(mat1))
# switch
fun <- "sum"
switch(fun, "mean"=mean(mat1), "median"=median(mat1), "sum"=sum(mat1))

# if else ladder
MyNumbers <- c(-10, -5, 0, 1, 3)
if (max(MyNumbers) > 10) 
	{
	print("max is greater than 10")
	} else if (max(MyNumbers) > 5) 
		{
		print("max is greater than 5")
		} else if (max(MyNumbers) >= 0) 
			{
			print("max is not negative")
			} else {
				print("max is negative")
				}

# Nested if
MyNumbers <- c(-10, -5, 0, 1, 6)
if (max(MyNumbers) > 0) 
	{
	if(max(MyNumbers) > 5)
		{
		print("max is greater than 5")
		} else print("max is positive but smaller than or equal 5")
	} else print("max is negative")


# logical operators

if(is.matrix(mat1) & all(mat1 >= 0)) print("mat1 is a non-negative matrix")
if(any(mat1%%2 > 0) | any(mat1 < 0)) print("mat1 has at least one odd number or one negative number")
mat1[which(!(mat1%%2 == 0) & (mat1%%3 != 0))]

### for loop

m <- matrix(0, nrow(mat1), ncol(mat1))
for(k in 1:length(mat1)) 
	{
	s <- sqrt(mat1[k])
	if(floor(s)==s) m[k] <- s else m[k] <- mat1[k]
	}
m

# while loop
i <- 1
while (i < 6) 
	{
	print(i)
	i = i+1
	}


### User-defined Function

largestElement <- function(mat1, mat2)
{
#check if matrices have identical dimensions
if(sum(dim(mat1) == dim(mat2)) == 2)
	{       
	mat3 <- matrix(0, nrow(mat1), ncol(mat1))
	ind1 <- which(mat1 >= mat2) 
	ind2 <- which(mat1 < mat2) 
	mat3[ind1] <- mat1[ind1]
	mat3[ind2] <- mat2[ind2] 
	return(mat3)
	} else print("The two matrices have different dimensions!")
}
largestElement(mat1, t(mat1))


### Save/Load data

# save selected objects
save(a, b, mat1, df, file="selectedData.RData")

# remove all listed objects from the workspace
rm(list=ls())

# load data to the workspace
load("selectedData.RData")

save.image(file="my_workspace.RData")

### Write/Read data

# write a data frame into a tab-delimited text file
write.table(df, file="myTable.txt", append=FALSE, quote=FALSE, sep="\t", row.names=FALSE, col.names=TRUE)

# write a data frame into a comma-separated text file
write.table(df, file="myTable2.txt", append=FALSE, quote=TRUE, sep=",", row.names=TRUE, col.names=TRUE)

# write a data frame into a csv file (can open it in excel)
write.csv(x=df, file="myTable3.csv", row.names=FALSE, quote=FALSE)

# write a data frame into a csv file with row names
write.csv(x=df, file="myTable4.csv", row.names=c("r1","r2","r3","r4","r5","r6"), quote=TRUE)

# read csv sheet as a data frame
tab <- read.csv(file="myTable3.csv", header=TRUE)
tab
tab <- read.csv(file="myTable4.csv", header=TRUE)
tab
tab <- read.csv(file="myTable4.csv", header=TRUE, row.names=1)
tab


### Useful Functions

# sort
sort(c(1,4,8,2,9))
sort(c("d","b","a","c","e"))
s <- sort(x=df$name, decreasing=FALSE, index.return=TRUE)
s
df_sorted <- df[s$ix,]
df_sorted

# text matching
grep(pattern="CT", x=c("TCCG","CCCC","GGCG","GCTA","GCTA"))
grep(pattern="CT", x=c("TCCG","CCCC","GGCG","GCTA","GCTA"), value=TRUE)
grep(pattern="M", df$sex)

# substitute
gsub(pattern="M", replacement="Male", x=df$sex)

df$sex
sample(x=df$sex, size=8, replace=TRUE)
sample(x=df$math, size=3, replace=FALSE)


