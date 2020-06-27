\name{S2N}
\alias{S2N}
\title{
calculate signal to noise ratio for microRNAs(miRNAs)
  
}
\description{
 This function calculate the signal to noise ratio for miRNAs for the actual phenotype and also random permutations 
}
\usage{
S2N(A, class.labels, miR.labels, nperm )
}
\arguments{
  \item{A}{Matrix of miRNAs expression values (rows are miRNAs, columns are samples)}
  \item{class.labels}{Phenotype of class disticntion of interest. A vector of binary labels having first the 1's and then the 0's }
  \item{miR.labels}{ miRNA labels,Vector of probe ids or accession numbers for the rows of the expression matrix }
  \item{nperm}{Number of random permutations to perform}
  
}
\details{
 The function uses matrix operations to implement the signal to noise calculation in stages and achieves fast execution speed. 
}
\value{
  \item{s2n.matrix }{Matrix with random permuted or bootstraps signal to noise ratios (rows are miRNAs, columns are permutations or bootstrap subsamplings}
  \item{obs.s2n.matrix }{ Matrix with observed signal to noise ratios (rows are miRNAs, columns are boostraps subsamplings. If fraction is set to 1.0 then all the columns have the same values}
}
\references{
Subramanian A, et al. (2005) Gene set enrichment analysis: a knowledge-based approach for interpreting genome-wide expression profiles. Proceedings of the National Academy of Sciences of the United States of America 102(43):15545-15550.
}
\author{Junwei Han\email{hanjunwei1981@163.com},Siyao Liu \email{liusiyao29@163.com}}
\seealso{\code{\link{MirSEA}}}
\examples{
##Matrix of miRNAs expression values
A<-matrix(runif(200),10,20)
##class.labels("0" or "1")
a1<-rep(0,20)
a1[sample(1:20,5)]=1
a1<-sort(a1,decreasing=FALSE)
#calculate signal to noise ratio for example data
M1<-S2N(A, class.labels=a1, miR.labels=seq(1,10), nperm=100)
#show actual results for top five in the matrix 
M1$obs.s2n.matrix[1:5,1]
#show permutation results
M1$s2n.matrix[1:5,1:5]
}
\keyword{ file }

