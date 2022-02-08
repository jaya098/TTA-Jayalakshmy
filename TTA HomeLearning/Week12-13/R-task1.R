## Homelearning R Task
# 1. Matrix
a <- c(1,2,3,4,5)
b <- c(6,7,8,9,10)
c <- c(11,12,13,14,15)

newmatrix <- rbind(a,b,c)
print(newmatrix)
length(newmatrix)
dim(newmatrix)

newmatrix[1,2]
newmatrix[2,]

for (rows in 1:nrow(newmatrix)) {
  for (columns in 1:ncol(newmatrix)) {
    print(newmatrix[rows, columns])
  }
}

x <- newmatrix[c(1,2,3),]
print(x)

plot(a,b, main="My Graph", xlab="The x-axis", ylab="The y axis", type='o', col='blue')

matplot(newmatrix,main="My Graph", xlab="The x-axis", ylab="The y axis", type ="o", pch=15)

# 2. Data Frames
Name <- c("Rose", "Ria", "Rob", "Kim", "Cara")
Age <- c(30, 33, 44, 32, 42)
Role <- c("Developer", "Doctor", "IT Manager", "Data Scientist", "Technical Analyst")
Length_of_service <- c(4, 7, 18, 2, 20)

frame <- data.frame(Name, Age, Role, Length_of_service)
print(frame)
frame["Name"]

# 3. Use ggplot2 and draw a graph using qplot

install.packages("ggplot2")
library("ggplot2")

# Data sets in package ‘ggplot2’:
data(package = "ggplot2")

#ggplot2::mpg

x <- c(1:20)
print(x)
y <- x^2
print(y)

qplot(x, y)
qplot(x, y, geom=c("point", "line"))

# 4. Simple bar plot
countries = c("England", "Scotland", "France", "Belgium", "Ireland")
points = c(8, 7, 6, 9, 5)

barplot(countries, names.arg=countries, main="Bar Plot Graph",
        xlab="countries", ylab="points", col='red', border='black')

 # 5. Take input from user
name <- readline("Type your name:")
school <- readline("Type your school:")

display <- paste("Name is", name, "from school: ", school)
print(display)

# 6. Create a sequence and find mean
seq <- c(30:60)
print(seq)
mean <- mean(seq)
sum <- sum(seq)
values <- paste("Mean and sum of numbers from 30 to 60 are", mean,"and", sum)
print(values)

# 7. Random number
random <- runif(10, min=-50, max=50)
int_values <- floor(random)
int_values
# Another method
random <- sample(-50:50, 10, replace=FALSE)
print("Random Integer values between -50 and 50 are:")
random
