\name{mousetrack-package}
\alias{mousetrack-package}

\docType{package}

\title{
  Mouse-tracking measures from trajectory data.
}

\description{

  Extract from two-dimensional (x-y coordinates) of a
  trajectory several dependent measures, such as area under
  the curve,  latency to start the movement, x-flips, etc. 
   Mainly developed to analyze mouse-tracking data.
 }
\details{
\tabular{ll}{
Package: \tab mousertrack\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2015-01-28\cr
License: \tab GPL >= 2\cr
}


\code{getmouseDV}: Mother function to extract 40 different
measures characterizing the action-dynamics response
underlying the arm-reaching trajectory.

\code{interpltraj}: Interpolate one (or two-dimensional) trajectory
into a fix number of bins.

}

\author{Moreno I. Coco (moreno.cocoi@gmail.com)
  and Nicholas D. Duran (nicholas.duran@asu.edu)}

\references{

  Spivey, M., and Dale, R. (2006).
  Continuous dynamics in real-time cognition.
  Current Directions in Psychological Science, 15(5),
  207-211.
  
  Freeman, J. B., and Ambady, N. (2010).
  Mousetracker: Software for studying real-time mental
  processing using a computer mouse-tracking method.
  Behavior Research Methods, 42(1), 226-241.
  
}

\keyword{ package }

\examples{

data(mousemove) ## load data 

unit = 25; dwellfin = escape = escapeinit = 100
velajbin = 6

x = mousemove$x; y = mousemove$y;
counterb = as.character( mousemove$counterb[1] )
refcounterb = "R"
t = mousemove$time

ans =  getmouseDV(x, y, t, unit, counterb,
        refcounterb, dwellfin, velajbin,
        escape, escapeinit)

str(ans)


}

\keyword{ts, utilities}
