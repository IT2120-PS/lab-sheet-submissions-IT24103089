setwd("C:\\Users\\user\\Downloads")
getwd()


# Set seed for reproducibility
set.seed(123)
# Part (i) Generate random sample
sample_size <- 25
mu <- 45
sigma <- 2
baking_times <- rnorm(sample_size, mean = mu, sd = sigma)
print(baking_times)
# Part (ii) Hypothesis test
# H0: mean = 46
# H1: mean < 46

t_test_result <- t.test(baking_times, mu = 46, alternative = "less")
print(t_test_result)
