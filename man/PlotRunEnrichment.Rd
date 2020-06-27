\name{PlotRunEnrichment}
\alias{PlotRunEnrichment}
\title{Plot running microRNAs(miRNAs) enrichment score}
\description{
 Plot running miRNAs enrichment score for the input pathway 
}
\usage{
PlotRunEnrichment(miRlist)
}

\arguments{
\item{miRlist}{A list of miRNA LIST result obtained from the MsReport function}
}


\author{Junwei Han\email{hanjunwei1981@163.com},Siyao Liu \email{liusiyao29@163.com}}

\seealso{
 \code{\link{MsReport}}
}
\examples{
\dontrun{
#get a list of miRNA list result
miRlist<-GetExampleData("miRList")
#Plot running miRNA enrichment score
PlotRunEnrichment(miRlist)
}
}

