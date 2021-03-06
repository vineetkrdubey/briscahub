\name{BinaryTransformation}
\alias{BinaryTransformation}
\alias{BinaryTransformation-methods}
\alias{BinaryTransformation,data.frame-method}
\alias{BinaryTransformation,matrix-method}
\alias{BinaryTransformation,numeric-method}
\alias{BinaryTransformation,array-method}
\alias{BinaryTransformation,RasterBrick-method}
\alias{BinaryTransformation,RasterLayer-method}
\alias{BinaryTransformation,RasterStack-method}

\title{Convert species' probability of occurrence into binary presence-absence data using a predefined threshold }

\description{ Function that converts an object containing probability values into a binary 
presence-absence object according to a pre-defined threshold(s).
}

\usage{
\S4method{BinaryTransformation}{numeric}(data, threshold)

\S4method{BinaryTransformation}{matrix}(data, threshold)

\S4method{BinaryTransformation}{data.frame}(data, threshold)

\S4method{BinaryTransformation}{array}(data, threshold)

\S4method{BinaryTransformation}{RasterLayer}(data, threshold)

\S4method{BinaryTransformation}{RasterStack}(data, threshold)
}



\arguments{
  \item{data}{ a numeric vector, a \code{matrix}, a \code{data.frame}, a \code{RasterLayer} or a \code{RasterStack} containing the data to be converted }
  \item{threshold}{ a numeric value or a vector containing the threshold to be used for converting data.}
}

\section{Methods}{
\describe{

\item{\code{signature(data = "data.frame")}}{
%%  ~~describe this method here~~
}

\item{\code{signature(data = "matrix")}}{
%%  ~~describe this method here~~
}

\item{\code{signature(data = "numeric")}}{
%%  ~~describe this method here~~
}

\item{\code{signature(data = "RasterBrick")}}{
%%  ~~describe this method here~~
}

\item{\code{signature(data = "RasterLayer")}}{
%%  ~~describe this method here~~
}

\item{\code{signature(data = "RasterStack")}}{
%%  ~~describe this method here~~
}
}}

\details{
If data is a vector or a raster object, then the threshold should be a numeric value.
If data is matrix,dataframe or rasterStack, then the threshold should have, in theory, as many values as the number of columns or layers to transform. 
In the particular case that the data to convert is a \code{matrix}/\code{data.frame} with several columns or a \code{RasterStack} with several layers and the threshold is a single numeric value, the same threshold will be applied to all columns (resp. layers).  
}


\value{
An object of the same class than \code{data} with binary (0 or 1) values, usually presence-absence.    
}


\author{ Wilfried Thuiller, Damien Georges}

\seealso{ \code{\link{help}}}
\examples{

xx <- rnorm(50,10)
yy <- BinaryTransformation(xx, 10)

cbind(xx,yy)

}

\keyword{ models }