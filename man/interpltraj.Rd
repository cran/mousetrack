\name{interpltraj}
\alias{interpltraj}

\title{Get Mouse Dependent Variables}

\description{

  Interpolate a one-dimensional (angle),  or two-dimension (x-y) trajectories  to a user specified number of time bins.

}

\usage{
interpltraj(x, y, singlepoint, tsmax)

}

\arguments{

  \item{x}{x-coordinate point of the trajectory}
  \item{y}{y-coordinate point of the trajectory}
  \item{singlepoint}{a logical flag to indicate
    whether interpolation is done on a single coordinate
    point (TRUE) or two points (FALSE)}
\item{tsmax}{the new length of the interpolated trajectory}
}

\value{
  
  It returns the interpolated trajectory, either
  one-dimensional (singlepoint == TRUE),
  or two-dimensional (singlepoint == FALSE)
}

\references{

Spivey, M., Grosjean, M. and  Knoblich, G. (2005). Continuous attraction toward phonological competitors.
Proceedings of the National Academy of Sciences of the United States of America, 102(29), 10393-10398.

}

\author{Moreno I. Coco (moreno.cocoi@gmail.com)}


\examples{

data(mousemove)
x = mousemove$x; y = mousemove$y;
singlepoint = FALSE; tsmax = 101
ans = interpltraj(x, y, singlepoint, tsmax)

str(ans)


}

\keyword{ts}
