\name{getmouseDV}
\alias{getmouseDV}

\title{Get Mouse Dependent Variables}

\description{
  
  Mother function of the package, which computes
  from 2D (x, y) mouse-tracking trajectories,
  dependent measures characterizing the underlying
  action-dynamics patterns.

}

\usage{
getmouseDV(x, y, t, unit, counterb, refcounterb,
dwellfin, velajbin, escape, escapeinit)

}

\arguments{

  \item{x}{x-coordinate point of the trajectory}
  \item{y}{y-coordinate point of the trajectory}
  \item{t}{a vector with time indexes}
  \item{unit}{the sampling unit, expressed in milliseconds}
  \item{counterb}{the  position of the yes-no response button}
  \item{refcounterb}{the position of the yes-no response button,
    which we want to use as reference to transpose all trajectories
    on the same side of the display}  
  \item{dwellfin}{Region (in pixels) around response button
    where measures of dwell are computed}
  \item{velajbin}{Number of timesteps used to average velocity}
  \item{escape}{Amount of pixels to escape when trimming
    the trajectory}
  \item{escapeinit}{Region around origin (in pixels)
    in which initial angle is measured}

}
  
\value{
  
  It returns a list with 40 DVs:
  \item{DVtotaltime}{The total duration of the trajectory}
  \item{DVlatency}{The latency of the start of the movement}
  \item{DVinmot}{The total time of motion} 
  \item{DVdwell}{The dwell time to commit to a final response}  
  \item{DVdist}{Euclidean distance of the trajectory} 
  \item{DVdistinmot}{Distance traveled outside of the escape region} 
  \item{DVvelmax}{The maximum velocity reached} 
  \item{DVvelmaxstart}{The latency when maximum velocity was observed} 
  \item{DVaccmax}{Maximum acceleration}
  \item{DVaccmaxstart}{The latency when maximum acceleration was
  observed} 
\item{arclengthtotal}{The length of the arc subtending
  the trajectory after motion was initiated}
 \item{maxpathoff}{Maximum offset of the trajectory} 
 \item{DVxflplat}{Change in x-direction after escape region: latency} 
 \item{DVxflpmot}{Change in x-direction after escape region: in motion}
 
 \item{DVafllat}{Change of angle-flipping in the dweel region: latency}
 \item{DVaflpmot}{Change of angle-flipping in the dweel region: in motion}
 \item{DVxflpdwl}{Change in x-direction in dwell region}     
 \item{DVaflpdwl}{Change of angle-flipping in dwell region}
 \item{DVxe}{Entropy along x-axis (default 5 time-points)}
 \item{DVxse}{Entropy (standard error)
   along x-axis (default 5 time-points)}
 \item{DVye}{Entropy along y-axis (default 5 time-points)}
 \item{DVyse}{Entropy (standard error)
   along y-axis (default 5 time-points)}
 \item{DVae}{Entropy along angle-trajectory (default 5 time-points)}
 \item{DVase}{Entropy (standard error) along angle-trajectory (default 5 time-points)}
 \item{trajang}{Angles tangent to the trajectory} 
 \item{DVAUC}{Area under the Curve}
 \item{DVmaxpull}{Maximum pull towards the incorrect response button} 
 \item{DVmaxpullstart}{Latency of pull towards incorrect response button}
 \item{DVmaxang}{Maximum severity of angle towards incorrect response button while in motion} 
\item{DVmaxangstart}{Time-point where maximum severity of angle was
  observed.}
\item{DVinitang}{The angle of trajectory after escaping region in absolute value}
\item{DVmaxx}{Maximum x-value observed}
\item{DVminx}{Minimum x-value observed}
\item{DVmaxy}{Maximum y-value observed}
\item{DVminy}{Minimum y-value observed}
\item{OLnegmove}{Percentage of trajectory not moving towards incorrect response, i.e., negative y values} 
\item{OL1}{Binary value indicating whether motion time was longer than latency} 
\item{OL2}{Binary value indicating whether maximum velocity was inside the latency region} 
\item{OL3}{Binary value indicating whether maximum acceleration is inside the latency region} 
\item{OL4}{Binary value indicating whether trajectory travels in  negative y-values after escaping the latency region} 
  

}

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

\note{A substantial amount of this code has been
  based on original MATLAB code written by Rick Dale
  (rdale@ucmerced.edu) and Michael J. Spivey
  (spivey@ucmerced.edu)}

\author{Moreno I. Coco (moreno.cocoi@gmail.com)
  and Nicholas D. Duran (nicholas.duran@asu.edu)}


\examples{

data(mousemove)
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

\keyword{ts}
