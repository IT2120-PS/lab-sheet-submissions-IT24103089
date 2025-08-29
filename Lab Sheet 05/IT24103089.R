#set directory
setwd("C:\\Users\\user\\OneDrive\\Desktop\\Lab 5")

#importing txt dataset
Delivery_Times<-read.table("Exercise - Lab 05.txt",header=TRUE,sep=",")

#view table in separate window
fix(Delivery_Times)  
#close data window to proceed

#save data to R--> run twice
attach(Delivery_Times)

#histogram with a name --> breaks=seq(low bound, up bound,length=no of intervals+1)
histogram<-hist(Delivery_Time_.minutes.,main="Histogram for Deliver Times",breaks=seq(20,70,length=10),right=TRUE)

#to get frequencies (values in each interval)
freq <- histogram$counts

#create break points--> $ to access data
breaks <- histogram$breaks

#cumulative freq-->the running total(freq+prev freqs)
cum.freq <- cumsum(freq)

#creating an empty vector
new <- c()

#for loop to store cumalitve freqs
for(i in 1:length(breaks)){
  if(i==1){
    new[i] <- 0
  } else {
    new[i] <- cum.freq[i-1]
  }
}

#draw cum freq polygon in a plot (new--> name of empty vector)
plot(breaks, new, type = "l",
     main = "Cumulative Frequency Polygon",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     ylim = c(0, max(cum.freq)))

#obtain upper limit of each class along with its cum freq
cbind(Upper_Boundary = breaks, CumFreq = new)

