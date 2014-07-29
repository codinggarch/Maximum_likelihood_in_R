RickLogL <- function(a, b) {
 ymean <- a * x * exp(-b*x)
 n <- length(x)
 -sum(dnorm(y, mean= ymean, sd=sd(y - ymean)*(n-1)/n, log=TRUE))
 }
