\name{MsReport}
\alias{MsReport}
\title{Produce report for a microRNA (abbreviated miRNA) set }
\description{ The miR.report includes miRNA names, locstion, S2N, RES and whether is core-enrichment miRNA,
}
\usage{
MsReport(MsNAME = "", input.ds, input.cls, p_value,
p2miR,weighted.score.type = 1)
}
\arguments{
  \item{MsNAME}{An interesting pathway name }
  \item{input.ds}{Input miRNA expression Affymetrix dataset file in RES or GCT format}
  \item{input.cls}{Input class vector (phenotype) file in CLS format}
  \item{p_value}{ A weighting matrix of p value of the hypergeometric. (rows are pathway ,cols are microRNAs(miRNAs))}
  \item{p2miR}{pathway-miRNA correlation(pmSET) profile}
  \item{weighted.score.type}{Enrichment correlation-based weighting: 0=no weight (KS), 1=standard weigth, 2 = over-weigth (default: 1)}
}
\details{
When users input a interesting pathway,the function MsReport can create a report for a miRNA set that coordinated regulate this pathway.
   MiR : the name of miRNAs. For example the probe accession number, miRNA symbol or the miRNA identifier in the dataset.
  LIST LOC : location of the miRNA in the sorted miRNA list.
  S2N : correlation(tw-score) of the miRNA in the miRNA list.
  RES : value of the running enrichment score at the miRNA location.
  CORE_ENRICHMENT:whether this miRNA is the "core enrichment" section of the list, Yes or No variable specifying in the miRNA location is before (positive ES) or after (negative ES) the running enrichment peak.
}
\value{
 A list. It includes two elements: Msreport and miRList.

  Msreport is matrix of input pathway which present the detail results . Its columns include  "miRNA name", "location of the miRNA in the sorted miRNA list", "tw-scoe of miRNA", "Running enrichment score", "Property of contribution".

  miRList is a list of drawing parameters for function PlotHeatMap,PlotCorrelation and PlotRunEnrichment.
}
\author{Junwei Han\email{hanjunwei1981@163.com},Siyao Liu \email{liusiyao29@163.com}}

\seealso{
\code{\link{MirSEA}},\code{\link{S2N}},\code{\link{EnrichmentScore}},\code{\link{PlotHeatMap}},\code{\link{PlotCorrelation}},\code{\link{PlotRunEnrichment}}
}

\examples{
\dontrun{
#get example data
#input.ds <- readLines("F:/lsy/xin data/GSE36915.gct")
#input.cls <- readLines("F:/lsy/xin data/GSE36915.cls")
input.ds <- GetExampleData("dataset")
input.cls <- GetExampleData("class.labels")
 
#get example of p value matrix
p_value <- GetExampleData("p_value")
#get example of correlation profile
p2miR <- GetExampleData("p2miR")

#get a miRNA.SET report for KEGG ERBB PATHWAY
Results<-MsReport(MsNAME = "KEGG_ERBB_SIGNALING_PATHWAY", input.ds, input.cls,p_value,p2miR)
# show the report of top five miRNA in the pathway
Results[[1]][1:5,]
}
}

\keyword{file}

