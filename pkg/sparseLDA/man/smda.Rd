\name{smda}
\alias{smda}
\alias{smda.default}
\title{Sparse mixture discriminant analysis}
\description{Performs sparse linear discriminant analysis for mixture of gaussians models.}
\usage{
smda(x, ...)

\method{smda}{default}(x, y, Z = NULL, Rj = NULL, 
     lambda = 1e-6, stop, maxIte = 50, Q=R-1,
     trace = FALSE, tol = 1e-4, ...)
}
\arguments{
  \item{x}{A matrix of the training data with observations down the rows and variables in the columns.}
  \item{y}{A matrix initializing the dummy variables representing the groups.}
  \item{Z}{Am optional matrix initializing the probabilities
  representing the groups.}
  \item{Rj}{K length vector containing the number of
  subclasses in each of the K classes.}
  \item{lambda}{The weight on the L2-norm for elastic net
  regression. Default: 1e-6.}

  \item{stop}{If STOP is negative, its absolute value
  corresponds to the desired number of variables. If STOP is
  positive, it corresponds to an upper bound on the L1-norm of the b
  coefficients. There is a one to one correspondence between stop
  and t.}

  \item{maxIte}{Maximum number of iterations. Default: 50.}
  
  \item{Q}{The number of components to include. Maximum and default is R-1 (total number of subclasses less one).}

  \item{trace}{If TRUE, prints out its progress. Default: FALSE.}
 
  \item{tol}{Tolerance for the stopping criterion (change in RSS). Default: 1e-4}
  \item{\ldots}{additional arguments}
}

\value{Returns a list with the following attributes:
\item{call}{The call}
\item{beta}{The loadings of the sparse discriminative directions.}
\item{theta}{The optimal scores.}
\item{Z}{Updated subclass probabilities.}
\item{Rj}{a vector of the number of ssubclasses per class}
\item{rss}{A vector of the Residual Sum of Squares at
each iteration.}
}
\details{
The function finds sparse directions for linear classification of mixture og gaussians models.
}\references{
Clemmensen, L., Hastie, T., Witten, D. and Ersboell, K. (2007) "Sparse discriminant
analysis", Technometrics, To appear.
}
\seealso{
\code{\link{normalize}}, \code{\link{normalizetest}}, \code{\link{sda}}
}
\author{Line Clemmensen}
\examples{
# load data
data(penicilliumYES)
X <- penicilliumYES$X
Y <- penicilliumYES$Y
Z <- penicilliumYES$Z

## test samples
Iout <- c(3, 6, 9, 12)
Iout <- c(Iout, Iout+12, Iout+24)

## training data
Xtr <- X[-Iout,]
k <- 3
n <- dim(Xtr)[1]
Rj <- rep(4, 3)

## Normalize data
Xc <- normalize(Xtr)
Xn <- Xc$Xc
p <- dim(Xn)[2]

## perform SMDA with one non-zero loading for each discriminative
## direction
\dontrun{
smdaFit <- smda(x = Xn,
                y = Y, 
                Z = Z, 
                Rj = Rj,
                lambda = 1e-6,
                stop = -5,
                maxIte = 10,
                tol = 1e-2)

# testing
Xtst <- X[Iout,]
Xtst <- normalizetest(Xtst, Xc)

test <- predict(smdaFit, Xtst)
}
}
\keyword{classif}
\keyword{multivariate}
