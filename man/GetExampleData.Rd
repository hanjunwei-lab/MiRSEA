\name{GetExampleData}
\alias{GetExampleData}
\title{Get the example data}
\description{
Get the example data.
}
\usage{
  GetExampleData(exampleData)
  
}

\arguments{
  \item{exampleData}{ A character string, must be one of "dataset", "class.labels" , "miRList","p_value"and "p2miR".}
  
}
\details{
The function GetExampleData(exampleData="dataset") obtains miRNA expression dataset from the environment variable \code{\link{envData}}.
  
The function GetExampleData(exampleData="class.labels") obtains class labels from the environment variable \code{\link{envData}}.
  
The function GetExampleData(exampleData="miRList") obtains the drawing parameters of a miRNA List from the environment variable \code{\link{envData}}.
 
The function GetExampleData(exampleData="p_value") obtains the weighting matrix from the environment variable \code{\link{envData}}.

The function GetExampleData(exampleData="p2miR") obtains the correlation profile between kegg pathways and each human miRNA from the environment variable \code{\link{envData}}.
}


\author{Junwei Han\email{hanjunwei1981@163.com},Siyao Liu \email{liusiyao29@163.com}}

\examples{
\dontrun{

#obtain the gene expression dataset.
dataset<-GetExampleData(exampleData="dataset")


#obtain the class labels.
class.labels<-GetExampleData(exampleData="class.labels")

#obtain the drawing parameters of a miRNA List
miRList<-GetExampleData(exampleData="miRList")


#obtain the weighting matrix 
p_value<-GetExampleData(exampleData="p_value")

#obtain the correlation profile
p2miR<-GetExampleData(exampleData="p2miR")


}
}

\keyword{ file }
