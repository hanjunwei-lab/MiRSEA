\name{EnrichmentScore}
\alias{EnrichmentScore}
\title{Computes the  enrichment score }
\description{
Computes the enrichment score of a microRNA(miRNA) set in a ordered miRNA list.
}
\usage{
     EnrichmentScore(miR.list, miR.set, weighted.score.type = 1, correl.vector = NULL)
}

\arguments{
  \item{miR.list}{
The ordered miRNA list ,integers indicating the original position in the input dataset.
}
  \item{miR.set}{
A miRNA set ,integers indicating the location of those miRNAs in the input dataset.
}
  \item{weighted.score.type}{
Type of score,weight=0,ES reduces to the standard Kolmogorov-Smirnov statistic,when weight=1, we are weighting the miRNAs by their tw-score normalized by the sum of the tw-scores over all of the miRNAs in the miRNA set.
}
  \item{correl.vector}{
A vector with the correlations(tw-scores) corresponding to the miRNAs in the miRNA list 
}
}
\details{
 The function can computes the enrichment score of a miRNA set in a miRNA list.  The weighted score type is the exponent of the correlation(e.g.tw-score)
  (1) Rank order the miRNAs in a miRNA set to form a list according to the correlation(e.g.tw-score) of their expression profiles and regulated pathway
  (2) Evaluate the fraction of miRNAs in the miRNA set(hits) weighted by their correlation and the fraction of miRNAs not in the miRNA set(misses)present up to a given position i in the miRNA list.The ES is the maximum deviation from zero of 'P(hit)-P(miss)'.
     For a randomly distributed miRNA set,The enrichment score will be relatively small, but if it is concentrated at the top or bottom of the list,or otherwise nonrandomly distributed, then the Enrichment score will be correspondingly high.
}
\value{
 \item{ES}{Enrichment score.}
 \item{arg.ES}{Location in the miRNA list where the peak running enrichment occurs.}
 \item{RES}{Numerical vector containing the running enrichment score for all locations in the miRNA list.}
 \item{tag.indicator}{Binary vector indicating the location of the miRNA sets in the miRNA list.}
}
\author{Junwei Han\email{hanjunwei1981@163.com},Siyao Liu \email{liusiyao29@163.com}}
\seealso{\code{\link{EnrichmentScore2}}}
\examples{
#Computes the enrichment score of a miRNA set in a ordered miRNA list.
E1<-EnrichmentScore(miR.list=sample(1:1000),miR.set=c(39,281,37,381,39,11,3,34),
correl.vector=rep(0.3,1000))
#show results
#EnrichmentScore of this set
E1$ES
#peak running enrichment
E1$arg.ES
#running enrichment score of top ten miRNAs
E1$RES[1:10]
#Binary vector indicating the location of top ten miRNA in the miRNA list
E1$tag.indicator[1:10]

}
\keyword{file}

