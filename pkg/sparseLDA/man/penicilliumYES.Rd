\name{penicilliumYES}
\alias{penicilliumYES}
\title{Data set of three species of Penicillium fungi}
\description{

The data set \code{penicilliumYES} has 36 rows and 3754 columns. The variables are 
1st order statistics from multi-spectral images of three species of \emph{Penicillium} fungi: 
\emph{Melanoconidium, Polonicum,} and \emph{Venetum}.
These are the data used in the Clemmemsen et al "Sparse Discriminant Analysis" paper.
}
\format{
  This data set contains the following matrices:
  \describe{
    \item{X}{A matrix with 36 columns and 3754 rows. The training and test data. 
    The first 12 rows are \emph{P. Melanoconidium} species, rows 13-24 are \emph{P. Polonicum} species, 
    and the last 12 rows are \emph{P. Venetum} species. The samples are ordered so that each pair of 
    three is from the same isolate.}
    \item{Y}{A matrix of dummy variables for the training data.}
    \item{Z}{Z matrix of probabilities for the subcalsses of the training data.}
  }
}
\usage{
data(penicilliumYES)
}
\details{
The X matrix is not normalized.
}
\source{
  \url{http://www.imm.dtu.dk/~lhc}
  }
\references{
Clemmensen, Hansen, Frisvad, Ersboell (2007) "A method for comparison of growth 
media in objective identification of Penicillium based on multi-spectral imaging"
\emph{Journal of Microbiological Methods}
}
\keyword{classif}
\keyword{multivariate}
\keyword{datasets}
