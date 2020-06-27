\name{envData}
\alias{envData}
\alias{pathway}
\alias{mfile}
\alias{example.cls}
\alias{example.gct}
\alias{p}
\alias{p2miR}
\alias{miRList}
\docType{data}

\title{The variables in the environment include predefine pathway, target information of miRNAs,an expression profile and a example result of miRNA list}
\description{
  The pathway information is download on the GSEA website,concluding three pathway database
  (KEGG,Biocarta,Reactome).We arranged the data for miRNAs and their target genes,which is according to four database including miRTarBase,TarBaseV6.0,miRecords and mir2Disease.
  example.GCT is an interesting miRNA expression data and example.cls is the vector of binary labels(class.labels)
  p is a p value weighted matrix (rows are pathway ,cols are miRNAs).p2miR is a correlation profile between kegg pathways and each human miRNA.
  miRList is a list of drawing parameters of KEGG ERBB signaling Pathway.
  }
\details{
The environment variable includes the variable \code{pathway}, \code{mfile},\code{example.cls},\code{example.gct},\code{p},\code{p2miR},\code{miRList}
}  

\format{An environment variable}
\author{Junwei Han\email{hanjunwei1981@163.com},Siyao Liu \email{liusiyao29@163.com}}

\keyword{data}