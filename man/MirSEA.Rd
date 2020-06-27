\name{MirSEA}
\alias{MirSEA}
\title{Identify dysregulated pathways based on microRNA (miRNA) set enrichment analysis}
\description{
 This function propose a novel method of miRNA set enrichment analysis(MiRSEA)to identify the dysregulated pathways by calculating the enrichment score of miRNA set which co-regulate a biological pathway(or prior gene set)}
\usage{
MirSEA(input.ds, input.cls, p_value,p2miR,
reshuffling.type = "miR.labels", nperm = 1000, 
weighted.score.type = 1, ms.size.threshold.min = 10, 
ms.size.threshold.max = 500)
}
\arguments{
  \item{input.ds}{Input miRNA expression Affymetrix dataset file in GCT format}
  \item{input.cls}{Input class vector (phenotype) file in CLS format}
  \item{p_value}{ A weighting matrix of p value of the hypergeometric. (rows are pathway ,cols are microRNAs(miRNAs))}
  \item{p2miR}{pathway-miRNA correlation(pmSET) profile}
  \item{reshuffling.type}{Type of permutation reshuffling: "sample.labels" or "miR.labels" (default: "miR.labels")}
  \item{nperm}{Number of random permutations (default: 1000)}
  \item{weighted.score.type}{Enrichment correlation based weighting:When weight= 0, ES reduces to the standard Kolmogorov-Smirnov statistic,when weight=1, we are weighting the miRNAs by their dw-score normalized by the sum of the dw-scores over all of the miRNAs in the miRNA set,when weight=2,it represent over weight (default: 1)}
  \item{ms.size.threshold.min}{Minimum size (in miRNAs) for database miRNA sets to be considered (default: 10)}
  \item{ms.size.threshold.max}{Maximum size (in miRNAs) for database miRNA sets to be considered (default: 500)}
  }
\details{
 MiRSEA integrates pathway (e.g.the strength of the pathway regulated by miRNAs.) and differential expression among miRNAs in identifying dysregulated pathways.MiRSEA can order pathway by the enrichment score of miRNA set, which is co-regulated by a miRNA set.
}
 \value{
 \item{report.phen1 }{ It is the summary of the result of the up regulated pathway}
 \item{report.phen2 }{It is the summary of the result of the down regulated pathway.Each rows of the dataframe represents a pathway. Its columns include "Pathway Name", "SIZE", "Pathway Source",
"Pathway Enrichment Score", "NOM p-val", "FDR q-val", "Tag percentage"(Percent of miRNA set before running enrichment peak),"MiR percentage"(Percent of miRNA list before running enrichment peak),"Signal strength" (enrichment signal strength). }
}
\author{Junwei Han\email{hanjunwei1981@163.com},Siyao Liu \email{liusiyao29@163.com}}

\references{
Subramanian A, et al. (2005) Gene set enrichment analysis: a knowledge-based approach for interpreting genome-wide expression profiles. Proceedings of the National Academy of Sciences of the United States of America 102(43):15545-15550.

Lu M, Shi B, Wang J, Cao Q, & Cui Q (2010) TAM: a method for enrichment and depletion analysis of a microRNA category in a list of microRNAs. BMC bioinformatics 11:419.
}

\seealso{
 \code{\link{EnrichmentScore}}, \code{\link{EnrichmentScore2}},\code{\link{S2N}},\code{\link{Corrp2miRfile}}
}
\examples{
\dontrun{
#get example of expression data
#input.ds <- readLines("F:/lsy/xin data/GSE36915.gct")
#input.cls <- readLines("F:/lsy/xin data/GSE36915.cls")
input.ds <- GetExampleData("dataset")
input.cls <- GetExampleData("class.labels")

#get example of p value matrix
p_value <- GetExampleData("p_value")
#get example of correlation profile
p2miR <- GetExampleData("p2miR")

#identify dysregulated pathways by using the function MirSEA
MirSEAresult <- MirSEA(input.ds,input.cls,p_value,p2miR,
reshuffling.type = "miR.labels", nperm = 1000, 
weighted.score.type = 1, ms.size.threshold.min = 10, 
ms.size.threshold.max = 500)
#print the summary results of pathways to screen
 
summaryResult1 <- MirSEAresult$report.phen1
summaryResult1[1:5,]
summaryResult2 <- MirSEAresult$report.phen2
summaryResult2[1:5,]
 
#write the summary results of pathways to tab delimited file.
write.table(summaryResult1,file="summaryResult1.txt",sep="\t",row.names=FALSE)

write.table(summaryResult2,file="summaryResult2.txt",sep="\t",row.names=FALSE)
}
}
\keyword{file}

