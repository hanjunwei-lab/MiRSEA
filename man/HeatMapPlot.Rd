\name{HeatMapPlot}
\alias{HeatMapPlot}
\title{Plot a heatmap}
\description{
Plot a heatmap of a microRNA(miRNA) expression
}
\usage{
HeatMapPlot(V, row.names = FALSE, col.labels, col.classes, col.names = FALSE, 
main = " ", xlab = " ", ylab = " ")
}

\arguments{
  \item{V}{A miRNA expression matrix}
  \item{row.names}{A name list of row vector,default=FALSE}
  \item{col.labels}{Phenotype of class disticntion of interest. A vector of binary labels having first the 1's and then the 0's }
  \item{col.classes}{phenotype name}
  \item{col.names}{A name list of samples,default=FALSE}
  \item{main}{a main title for the heatmap}
  \item{xlab}{a label for the x axis, defaults to a description of x}
  \item{ylab}{a label for the y axis, defaults to a description of y}

}
\details{
 Plots a heatmap of a miRNA expression matrix including phenotype vector and miRNA, sample and phenotype labels
}

\references{
Andy Liaw, original,R. Gentleman, M. Maechler, W. Huber.
}
\author{Junwei Han\email{hanjunwei1981@163.com},Siyao Liu \email{liusiyao29@163.com}}
\note{
return a heatmap
}
\seealso{
 \code{\link{PlotHeatMap}}
}
\examples{
#example of expression profile
V<-matrix(runif(200),10,20)
#example of class.labels ("0"or "1")
 a1<-rep(0,20)
a1[sample(1:20,5)]=1
#plot heat map
 HeatMapPlot(V =V, row.names = FALSE, col.labels = a1, col.classes =c("a","b"), col.names =FALSE,
 main =" Heat Map for MiRs in MiR Set", xlab=" ", ylab=" ")
}


