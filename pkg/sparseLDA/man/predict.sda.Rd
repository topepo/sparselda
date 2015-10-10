\name{predict.sda}
\Rdversion{1.1}
\alias{predict.sda}
\alias{predict.smda}
\title{
Predict method for Sparse Discriminant Methods
}
\description{
Prediction functions for \code{link{sda}} and \code{link{smda}}.
}
\usage{
\method{predict}{sda}(object, newdata = NULL, ...)
\method{predict}{smda}(object, newdata = NULL, ...)
}
\arguments{
  \item{object}{
   an object of class  \code{link{sda}} or \code{link{smda}}
}
  \item{newdata}{
  a matrix or data frame of predictors
}
  \item{\dots}{
  arguments passed to \code{link[MASS]{predict.lda}} 
}
}
\details{
The current implementation for mixture discriminant models current predicts the subclass probabilities.
}
\value{
A list with components:
  \item{class }{The classification (a factor)}
  \item{posterior }{posterior probabilities for the classes (or subclasses for \code{link{smda}})}
  \item{x }{the scores}
}

\keyword{ multivariate }

