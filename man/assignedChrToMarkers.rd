\name{assignChrToMarkers}
\alias{assignChrToMarkers}

\title{Function that assigns a chromosome label to a genetic marker}

\description{
  This functions returns an ordering vector of markers for each marker it shows which chromosome the marker belongs to.
}

\usage{
	assignChrToMarkers(assignment, cross)
}

\arguments{
 \item{assignment}{ Chromosome assignment vector created using \link{cross.denovo} with reOrder = FALSE}
 \item{cross}{ An object of class \code{cross}. See \code{\link[qtl]{read.cross}} for details. }
}

\value{
  Ordering vector, that can be used by \link{reorganizeMarkersWithin} function to reorder the cross object.
}

\details{
  When using the \link{cross.denovo} function with the parameter reOrder = FALSE, its return value will be a chromosome assignment vector. 
  This chromosome assignment vector shows how chromosomes from the created map are assigned to chromosomes from the original map. By using 
  the assignChrToMarkers function the chromosome assignment vector is transformed into a marker ordering vector, which is used by
  \code{\link{reorganizeMarkersWithin}} to reorder markers inside the cross object.
}

\author{
	Konrad Zych \email{k.zych@rug.nl}, Danny Arends \email{Danny.Arends@gmail.com}
	Maintainer: Konrad Zych \email{k.zych@rug.nl}
}

\examples{
	data(testCross)
	data(testPopulation)
	assignment <- cross.denovo(testPopulation,n.chr=5,verbose=TRUE,map="genetic",
  comparisonMethod=sumMajorityCorrelation, use.orderMarkers=FALSE,reOrder=FALSE)
  assignment
  ordering <- assignChrToMarkers(assignment,testCross)
}

\seealso{
  \code{\link{reorganizeMarkersWithin}} - Apply new ordering on the cross object using ordering vector.
  \code{\link{cross.saturate}} - Saturate existing map.
  \code{\link{cross.denovo}} - Create de novo genetic map or vector showing how chromosomes should be assigned.
}

\keyword{manip}
