\name{orderDist}
\alias{orderDist}
\title{Summarize marginal distribution of (differenced) series.}
\usage{
  orderDist(x, z, np = 3, diff = 1)
}
\arguments{
  \item{x}{a matrix. Each column contains a replicate
  series.}

  \item{z}{vector of lags, for rhs terms.}

  \item{np}{maximum power on rhs of regression.}

  \item{diff}{order of differencing (zero for none).}
}
\value{
  a matrix where each column contains the coefficients for
  a different replicate.
}
\description{
  Summarizes (difference) distribution of replicate series,
  by regressing ordered differenced series on a reference
  series (which might correspond to observed data).
}
\examples{
library(synlik)
set.seed(10)
n <- 100;nr <- 3
x <- matrix(runif(n*nr),n,nr)
z <- runif(n)
beta <- orderDist(x,z,np=3,diff=1)

zd <- z;xd <- x[,3]
zd <- diff(zd,1);xd <- diff(xd,1)
zd <- sort(zd);zd <- zd - mean(zd)
xd <- sort(xd);xd <- xd - mean(xd)
lm(xd~zd+I(zd^2)+I(zd^3)-1)
}
\author{
  Simon N. Wood, maintainer Matteo Fasiolo
  <matteo.fasiolo@gmail.com>.
}

