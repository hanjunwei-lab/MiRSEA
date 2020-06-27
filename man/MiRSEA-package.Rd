\docType{package}
\name{MiRSEA-package}
\alias{MiRSEA-package}
\alias{MiRSEA}
\title{MicroRNA Set Enrichment Analysis}
\description{This package can identify dysregulated pathways(or prior gene sets) regulated by microRNAs set in the context of miRNA expression data.
}
\section{Introduction}{
The package can identify dysregulated pathways(or prior gene sets) regulated by microRNAs set in the context of miRNA expression data.
(1) The MiRSEA package constructs a correlation profile of miRNAs and pathways by hypergeometric.The gene sets of pathways derived from the three public databases(KEGG;Reactome;Biocarta;).The target gene sets of miRNAs are provided by four databases(TarBaseV6.0; mir2Disease; miRecords; miRTarBase;). 
(2) The MiRSEA package can quantify the change of correlation between miRNAs for each pathway (or prior gene set) based on miRNA expression data with cases and controls.
(3) The MiRSEA package uses the weighted Kolmogorov-Smirnov statistic to calculate an enrichment score(ES)of a miRNA set that co-regulate to a pathway , which reflects the degree to which a given pathway is associated with the specific phenotype.
(4) The MiRSEA package can provide the visualization of the results.
}


\author{Junwei Han\email{hanjunwei1981@163.com},Siyao Liu \email{liusiyao29@163.com}}
