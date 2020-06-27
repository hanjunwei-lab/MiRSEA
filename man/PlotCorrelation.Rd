\name{PlotCorrelation}
\alias{PlotCorrelation}
\title{Plot global microRNA(miRNA) correlation profile}
\description{
plot global miRNA correlation profile for differential weighted scores(dw-score) of miRNAs
}
\usage{
PlotCorrelation(miRlist)
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
#Plot global miRNA correlation profile
PlotCorrelation(miRlist)

}
}


