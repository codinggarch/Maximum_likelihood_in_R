source("PredNLL.r")

set.seed(1001)

k.pred <- rbinom(n=30, size=20, prob=0.375)


Tpole <- mle2(PredNLL, start= list(p= 0.75), data= list(N= 20, k= k.pred))

Out <- c(coef(Tpole), confint(Tpole))

print(Out)


set.seed(1001)
x <- seq(1, 25, by=0.5)
a = 5.5; b = 0.2
y.det <- a * x * exp(-b*x) ### deterministic model
y <- rnorm(length(y.det), mean=y.det, sd=0.75) # stochastic noise
plot(x, y.det,'l', xlab="Variable'x'", ylab="Variable'y'", main="Stochastic'Field'Data", col=4,ylim=c(0,11))
points(x, y, col=2)
segments(x, y, x, y.det, col="gray60")
legend("topright", legend=c("Deterministic model", "Simulated Data"),lty=c(1,NA), pch=c(NA,21), col=c(4,2), bg="gray95")


source("RickLogL.r")

RickerFit <- mle2(RickLogL, start= list(a=2, b=1), data=list(x=x, y=y))

print(coef(RickerFit))