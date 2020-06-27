\name{EnrichmentScore2}
\alias{EnrichmentScore2}
\title{Computes the enrichment score faster}
\description{Computes the enrichment score of a microRNA(miRNA) set in miRNA list.}
\usage{
EnrichmentScore2(miR.list, miR.set, weighted.score.type = 1, correl.vector = NULL)
}

\arguments{
  \item{miR.list}{The ordered miRNA list,integers indicating the original position in the input dataset }
  \item{miR.set}{A miRNA set,integers indicating the location of those miRNAs in the input dataset}
  \item{weighted.score.type}{Type of score, weight=0 (unweighted = Kolmogorov-Smirnov), 1 (weighted), and 2 (over-weighted)}
  \item{correl.vector}{A vector with the correlations (e.g.tw-scores) corresponding to the miRNAs in the miRNA list }
}
\details{
 Computes the weighted enrichment score of a miRNA set in miRNA list. It is the same calculation as in 
EnrichmentScore but faster without producing the RES, arg.RES and tag.indicator outputs.
 This call is intended to be used to asses the enrichment of random permutations rather than the 
 observed one.The weighted score type is the exponent of the correlation. 
 }
\value{
\item{ES }{Enrichment score (real number between -1 and +1)}
}

\author{Junwei Han\email{hanjunwei1981@163.com},Siyao Liu \email{liusiyao29@163.com}}
\seealso{\code{\link{EnrichmentScore}}}
\examples{
#Computes the enrichment score of a miRNA set in miRNA list
R2<-EnrichmentScore2(miR.list=sample(1:100),miR.set=c(39,28,37,38,11,3,34),
correl.vector=rep(0.04,100))
#show the result
R2$ES
}
\keyword{ file }

