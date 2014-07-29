likelihood <- function(sequence, p.parameter)
{
  likelihood <- 1
 
  for (i in 1:length(sequence))
  {
    if (sequence[i] == 1)
    {
      likelihood <- likelihood * p.parameter
    }
    else
    {
      likelihood <- likelihood * (1 - p.parameter)
    }
  }
 
  return(likelihood)
}
