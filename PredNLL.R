PredNLL <- function(k, p, N) {
	-sum(dbinom(k, prob=p, size=N, log=TRUE))
	}