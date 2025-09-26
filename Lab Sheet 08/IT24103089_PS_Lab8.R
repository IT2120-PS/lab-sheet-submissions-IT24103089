setwd("C:\\Users\\user\\Downloads")
getwd()

##Importing dataset
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)


##Q1
popmn <- mean(Weight.kg.)
popsd <- sd(Weight.kg.)


##Q2
#First null vector to store sample data sets.
samples <- c()
n <- c()


for(i in 1:25){
  s <- sample(Weight.kg., 6, replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n, paste('S', i))
}

#Assign column names for each sample created
colnames(samples) = n

# considered the second argument as "2" we can calculate either mean/variance column wise
s.means <- apply(samples, 2, mean)
s.stds <- apply(samples, 2, sd)


##Q3
samplemean <- mean(s.means)
samplestd <- sd(s.means)

#compare the population mean and mean of sample means.
popmn
samplemean


#compare the population std and std of sample means.
truesd = popsd/6
samplestd









































