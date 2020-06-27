\name{GetPathwayData}
\alias{GetPathwayData}
\title{Get the gene sets of pathways}
\description{
Get the gene sets of pathways for the three pathway databases (KEGG; Biocarta; Reactome)
}
\usage{
 GetPathwayData(pathway)
}

\arguments{
  \item{pathway}{choose database of pathway,"kegg","biocarta" or"reactome"}
  
}
\details{
 The gene sets of pathways for the three pathway database (KEGG; Biocarta; Reactome)are obtained from the environment variable \code{\link{envData}}.
}

\author{Junwei Han\email{hanjunwei1981@163.com},Siyao Liu \email{liusiyao29@163.com}}


\examples{
\dontrun{

#obtain the gene sets of  kegg pathways.
pathway<-GetPathwayData("kegg")


}

}


