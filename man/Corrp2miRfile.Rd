\name{Corrp2miRfile}
\alias{Corrp2miRfile}
\title{create a pathway-microRNA(miRNA) profile and a p value matrix }
\description{
 The function  \code{Corrp2miRfile} create a p value matrix and a pathway-miRNA correlation profile  
}
\usage{
Corrp2miRfile(pathway="kegg", species = "hsa")
}

\arguments{
  \item{pathway}{choose database of pathway,"kegg","biocarta" or"reactome"}
  \item{species}{Species of miRNAs(default: hsa)}
}
\details{
When users input interesting species and pathway, the function can calculate the p value between pathway and miRNA using hypergeometric.The p value can quantify the strength of the pathway regulated by each miRNA.The smaller p value is represent the bigger  strength of regulate.Then p2m can get miRNA set(pmSET)for each pathway,which is a co-regulated miRNA set of this pathway(w>0).
}
\value{
 \item{p}{A p value weighted matrix (rows are pathway ,cols are miRNAs)}
 \item{p2miR}{pathway-miRNA correlation(pmSET) profile} 
}
\references{
Rivals I, Personnaz L, Taing L, & Potier MC (2007) Enrichment or depletion of a GO category within a class of genes: which test? (Translated from eng) Bioinformatics 23(4):401-407 (in eng).
}
\author{Junwei Han\email{hanjunwei1981@163.com},Siyao Liu \email{liusiyao29@163.com}}

\seealso{
\code{\link{MirSEA}},\code{\link{MsReport}}
}
\examples{
\dontrun{
p2m<-Corrp2miRfile(pathway="kegg", species = "example")

p2m$p[1,1:10]
p2m$p2miR[1,1:5]
}
}

\keyword{ file }

