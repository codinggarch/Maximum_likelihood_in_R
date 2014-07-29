kvec = 1:100
probk = dbinom(kvec, size=100, prob=0.90)


plot(kvec, probk, xlab="No. Infections, k", ylab="P(k|p,N)", type="h", sub="(p = 0.2, N = 100)", main="", col="navy")

pvec = seq(0, 1, 0.01)
Lk = dbinom(20, size=100, prob=pvec)
plot(pvec, Lk, "l", xlab="Infection probability, p", ylab="Likelihood, L(p)",sub="(k = 20, N = 100)", main="Likelihood Function", lwd=2)

abline(v=pvec[which.max(Lk)], col=4, lty=2)
#abline(v=CI95[1], col=2, lty=2)
#abline(v=CI95[2], col=2, lty=2)

par(mfrow=c(1,2))
LogLk = dbinom(30, size=100, prob=pvec, log=T)
plot(pvec, LogLk, xlab="p", ylab="Log-Likelihood")
abline(v=pvec[which.max(LogLk)], col=4, lty=2)
nLogLk = -dbinom(20, size=100, prob=pvec, log=T)
plot(pvec, nLogLk, xlab="p", ylab="-Log-Likelihood")
abline(v=pvec[which.min(nLogLk)], col=4, lty=2)
