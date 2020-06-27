\name{GetMiRTargetData}
\alias{GetMiRTargetData}
\title{Get the data of microRNA(miRNA) and target genes}
\description{
Get the data of miRNA and target genes
}
\usage{
   GetMiRTargetData()
}


\details{
 The data for target genes of miRNAs are obtained from the environment variable \code{\link{envData}},which is obtained from four database(TarBaseV6.0,mir2Disease,miRecords,miRTarBase).

}


\author{Junwei Han\email{hanjunwei1981@163.com},Siyao Liu \email{liusiyao29@163.com}}


\examples{
#Get the data for target genes of miRNAs
MiRTarget<-GetMiRTargetData()

}


