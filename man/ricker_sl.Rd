\name{ricker_sl}
\alias{rickerStats}
\alias{ricker_sl}
\alias{ricker_smcmc}
\title{Ricker model}
\description{
  \code{ricker_sl} is \code{synlik} object containing the
  stochastic Ricker model, \code{ricker_smcmc} is a
  \code{smcmc} object which also contains the results of
  some MCMC iterations. The model is described
  \link{rickerSimul} and in Wood (2010).  The main
  components of the object are the simulator
  \link{rickerSimul} and the statistics \code{rickerStats},
  described in the same reference.
}
\examples{
data(ricker_sl)

plot(ricker_sl)
simulate(ricker_sl, stats = TRUE)

slik(ricker_sl,
     param  =  c( logR = 3.8, logSigma = log(0.3), logPhi = log(10) ),
     nsim    = 1e3)

# Using Nicholson's data
data(ricker_smcmc)

plot(ricker_smcmc)
}
\author{
  Simon Wood and Matteo Fasiolo <matteo.fasiolo@gmail.com>.
}
\references{
  Simon N Wood. Statistical inference for noisy nonlinear
  ecological dynamic systems. Nature, 466(7310):1102--1104,
  2010.
}
\seealso{
  \link{rickerSimul}
}

