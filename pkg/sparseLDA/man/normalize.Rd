\name{normalize}
\alias{normalize}
\title{Normalize training data}
\description{Normalize a vector or matrix to zero mean and unit length columns}
\usage{
normalize(X)
}
\arguments{
\item{X}{a matrix with the training data with observations down the rows and variables in the columns.}
}
\value{Returns a list with the following attributes:
\item{Xc}{
The normalized data.
}
\item{mx}{
Mean of columns of X.
}
\item{vx}{Length of columns of X. 
}
\item{Id}{Logical vector indicating which variables are included in X. 
If some of the columns have zero length they are omitted.}
}
\details{
The function can e.g. be used for the training data in sda or smda.
}
\references{
Clemmensen, L., Hastie, T. and Ersboell, K. (2008) "Sparse discriminant
analysis", Technical report, IMM, Technical University of Denmark
}
\seealso{
\code{\link{normalizetest}}, \code{\link{sda}}, \code{\link{smda}}
}
\author{Line Clemmensen}
\examples{
## Data
X<-matrix(sample(seq(3),12,replace=TRUE),nrow=3)

## Normalize data
Nm<-normalize(X)
print(Nm$Xc)

## See if any variables have been removed
which(!Nm$Id)
}
\keyword{multivariate}