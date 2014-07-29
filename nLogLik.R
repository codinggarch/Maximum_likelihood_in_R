nLogLik <- function(k, p, N) 
{
	-dbinom(k, prob=p, size=N, log=TRUE)
	
	}