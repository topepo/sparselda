\name{normalizetest}
\alias{normalizetest}
\title{Normalize test data}
\description{Normalize test data using output from the normalize() of the training data}
\usage{
normalizetest(Xtst,Xn)
}
\arguments{
\item{Xtst}{a matrix with the test data with observations down the rows and variables in the columns.}
\item{Xn}{List with the output from normalize(Xtr) of the training data.}
}
\value{Returns the normalized test data
\item{Xtst}{
The normalized data.
}
}
\details{
The function can e.g. be used to normalize the testing data in sda or smda.
}\references{
Clemmensen, L., Hastie, T. and Ersboell, K. (2007) "Sparse discriminant
analysis", Technical report, IMM, Technical University of Denmark
}
\seealso{
\code{\link{normalize}, \link{sda}, \link{smda}}
}
\author{Line Clemmensen}
\examples{
## Data
Xtr<-matrix(sample(seq(3),12,replace=TRUE),nrow=3)
Xtst<-matrix(sample(seq(3),12,replace=TRUE),nrow=3)

## Normalize training data 
Nm<-normalize(Xtr)

## Normalize test data
Xtst<-normalizetest(Xtst,Nm)
}
\keyword{multivariate}