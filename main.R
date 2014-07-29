


possible.p <- seq(0, 1, by = 0.001)
jpeg('Likelihood_Concavity.jpg')
library('ggplot2')

source("likelihood.r")
p<-qplot(possible.p,
      sapply(possible.p, function (p) {likelihood(sequence, p)}),
      geom = 'line',
      main = 'Likelihood as a Function of P',
      xlab = 'P',
      ylab = 'Likelihood')

ggsave(filename= 'Likelihood_Concavity.jpg', plot=p)


dev.off()


mle.results <- optimize(function(p) {likelihood(sequence, p)},
                        interval = c(0, 1),
                        maximum = TRUE)
 
print(mle.results)


