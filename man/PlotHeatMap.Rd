\name{PlotHeatMap}
\alias{PlotHeatMap}
\title{Plot a heat map}
\description{
Plot a heat map for a microRNA(miRNA) set which co-regulate pathway
}
\usage{
PlotHeatMap(miRlist,input.ds,input.cls)
}

\arguments{
  \item{miRlist}{A list of miRNA LIST result obtained from the MsReport function}
  \item{input.ds}{Input miRNA expression Affymetrix dataset file in GCT format}
  \item{input.cls}{Input class vector (phenotype) file in CLS format}
}

\details{
 Plots a heatmap of a miRNA set in the expression matrix including phenotype vector and miRNA, sample and phenotype labels
}

\author{Junwei Han\email{hanjunwei1981@163.com},Siyao Liu \email{liusiyao29@163.com}}

\seealso{
 \code{\link{PlotHeatMap}}, \code{\link{MsReport}}
}
\examples{
\dontrun{
#get example data
#input.ds <- readLines("F:/lsy/xin data/GSE36915.gct")
#input.cls <- readLines("F:/lsy/xin data/GSE36915.cls")
input.ds <- GetExampleData("dataset")
input.cls <- GetExampleData("class.labels")

#get a list of miRNA list result
miRlist<-GetExampleData("miRList")
#Plot a heat map
PlotHeatMap(miRlist,input.ds,input.cls)
}
}

